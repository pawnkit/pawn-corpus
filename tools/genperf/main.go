// Command genperf deterministically generates large Pawn source fixtures for
// interactive-lint performance work. Given the same -kind, -lines, and -seed,
// it always produces byte-identical output, so large fixtures do not need to
// be committed at every size: benchmarks regenerate them on demand.
//
// Usage:
//
//	go run ./tools/genperf -kind=normal -lines=10000 > gamemode.pwn
//	go run ./tools/genperf -kind=macro-heavy -lines=5000 > macros.pwn
//	go run ./tools/genperf -kind=pathological -lines=5000 -inject-diagnostics > path.pwn
//	go run ./tools/genperf -kind=include-heavy -lines=5000 -out-dir=./out
package main

import (
	"bufio"
	"flag"
	"fmt"
	"math/rand"
	"os"
	"path/filepath"
)

func main() {
	kind := flag.String("kind", "normal", "normal, macro-heavy, pathological, or include-heavy")
	lines := flag.Int("lines", 10000, "approximate output line count")
	seed := flag.Int64("seed", 1, "deterministic RNG seed")
	injectDiagnostics := flag.Bool("inject-diagnostics", false, "pathological only: include patterns that trigger lint diagnostics")
	outDir := flag.String("out-dir", "", "output directory (required for -kind=include-heavy)")
	flag.Parse()

	rng := rand.New(rand.NewSource(*seed))
	w := bufio.NewWriter(os.Stdout)

	var err error
	switch *kind {
	case "normal":
		err = generateNormal(w, rng, *lines)
	case "macro-heavy":
		err = generateMacroHeavy(w, rng, *lines)
	case "pathological":
		err = generatePathological(w, rng, *lines, *injectDiagnostics)
	case "include-heavy":
		if *outDir == "" {
			fmt.Fprintln(os.Stderr, "genperf: -out-dir is required for -kind=include-heavy")
			os.Exit(2)
		}
		err = generateIncludeHeavy(rng, *lines, *outDir)
	default:
		fmt.Fprintf(os.Stderr, "genperf: unknown -kind %q\n", *kind)
		os.Exit(2)
	}
	if err == nil {
		err = w.Flush()
	}
	if err != nil {
		fmt.Fprintln(os.Stderr, "genperf:", err)
		os.Exit(1)
	}
}

var identifierWords = []string{
	"Player", "Vehicle", "House", "Faction", "Inventory", "Session", "Zone",
	"Marker", "Timer", "State", "Weapon", "Money", "Score", "Chat", "Team",
	"Skin", "Position", "Checkpoint", "Object", "Text", "Menu", "Dialog",
}

func identifier(rng *rand.Rand, index int) string {
	a := identifierWords[rng.Intn(len(identifierWords))]
	b := identifierWords[rng.Intn(len(identifierWords))]
	return fmt.Sprintf("%s%s%d", a, b, index)
}

// generateNormal builds a realistic single-file gamemode: enums, constants,
// globals, forward declarations, and functions with locals, loops,
// conditionals, switches, arrays, native calls, and calls between functions.
func generateNormal(w *bufio.Writer, rng *rand.Rand, targetLines int) error {
	fmt.Fprintln(w, "#define MAX_PLAYERS 1000")
	fmt.Fprintln(w, "#define INVALID_ID (-1)")
	fmt.Fprintln(w)
	fmt.Fprintln(w, "enum E_ENTITY_DATA {")
	fmt.Fprintln(w, "    entityOwner,")
	fmt.Fprintln(w, "    Float:entityHealth,")
	fmt.Fprintln(w, "    entityState,")
	fmt.Fprintln(w, "}")
	fmt.Fprintln(w)
	fmt.Fprintln(w, "new gEntityData[MAX_PLAYERS][E_ENTITY_DATA];")
	fmt.Fprintln(w, "new gEntityCount;")
	fmt.Fprintln(w, "new Float:gWorldScale = 1.0;")
	fmt.Fprintln(w)

	lineCount := 9
	functionIndex := 0
	var previousFunctions []string
	for lineCount < targetLines {
		name := fmt.Sprintf("Handle%s", identifier(rng, functionIndex))
		functionIndex++
		fmt.Fprintf(w, "forward %s(playerid, value);\n", name)
		fmt.Fprintf(w, "public %s(playerid, value) {\n", name)
		fmt.Fprintln(w, "    new Float:result = 0.0;")
		fmt.Fprintln(w, "    new local_values[4];")
		fmt.Fprintln(w, "    for (new i = 0; i < 4; i++) {")
		fmt.Fprintln(w, "        local_values[i] = value + i;")
		fmt.Fprintln(w, "    }")
		fmt.Fprintln(w, "    if (playerid >= 0 && playerid < MAX_PLAYERS) {")
		fmt.Fprintln(w, "        gEntityData[playerid][entityOwner] = playerid;")
		fmt.Fprintln(w, "        result = gWorldScale * float(value);")
		fmt.Fprintln(w, "    } else {")
		fmt.Fprintln(w, "        result = -1.0;")
		fmt.Fprintln(w, "    }")
		fmt.Fprintln(w, "    switch (value % 3) {")
		fmt.Fprintln(w, "        case 0: gEntityData[0][entityState] = 1;")
		fmt.Fprintln(w, "        case 1: gEntityData[0][entityState] = 2;")
		fmt.Fprintln(w, "        default: gEntityData[0][entityState] = 0;")
		fmt.Fprintln(w, "    }")
		if len(previousFunctions) > 0 {
			call := previousFunctions[rng.Intn(len(previousFunctions))]
			fmt.Fprintf(w, "    %s(playerid, local_values[0]);\n", call)
		}
		fmt.Fprintln(w, "    return floatround(result);")
		fmt.Fprintln(w, "}")
		fmt.Fprintln(w)
		previousFunctions = append(previousFunctions, name)
		lineCount += 17
	}
	return w.Flush()
}

// generateMacroHeavy builds object-like, function-like, multiline, and
// nested macros, conditional compilation, an include guard, and the
// pre-y_hooks callback-forwarding pattern common in older Pawn gamemodes.
func generateMacroHeavy(w *bufio.Writer, rng *rand.Rand, targetLines int) error {
	fmt.Fprintln(w, "#if defined _perf_macro_heavy_included")
	fmt.Fprintln(w, "    #endinput")
	fmt.Fprintln(w, "#endif")
	fmt.Fprintln(w, "#define _perf_macro_heavy_included")
	fmt.Fprintln(w)
	fmt.Fprintln(w, "#define MAX_ENTITIES 500")
	fmt.Fprintln(w, "#define SQR(%0) ((%0) * (%0))")
	fmt.Fprintln(w, "#define CLAMP(%0,%1,%2) ((%0) < (%1) ? (%1) : ((%0) > (%2) ? (%2) : (%0)))")
	fmt.Fprintln(w, "#define DOUBLE_SQR(%0) SQR(SQR(%0))")
	fmt.Fprintln(w, "#define LONG_MACRO(%0) \\")
	fmt.Fprintln(w, "    ((%0) + \\")
	fmt.Fprintln(w, "     (%0) * 2 + \\")
	fmt.Fprintln(w, "     (%0) * 3)")
	fmt.Fprintln(w)
	fmt.Fprintln(w, "#if defined OPEN_MP")
	fmt.Fprintln(w, "    #define PLATFORM_NAME \"open.mp\"")
	fmt.Fprintln(w, "#else")
	fmt.Fprintln(w, "    #define PLATFORM_NAME \"sa-mp\"")
	fmt.Fprintln(w, "#endif")
	fmt.Fprintln(w)

	lineCount := 16
	hookIndex := 0
	for lineCount < targetLines {
		callback := fmt.Sprintf("On%s", identifierWords[rng.Intn(len(identifierWords))])
		handler := fmt.Sprintf("Hooked_%s_%d", callback, hookIndex)
		hookIndex++
		fmt.Fprintf(w, "#if defined %s\n", callback)
		fmt.Fprintf(w, "    #undef %s\n", callback)
		fmt.Fprintln(w, "#endif")
		fmt.Fprintf(w, "#define %s %s\n", callback, handler)
		fmt.Fprintf(w, "forward %s(playerid);\n", handler)
		fmt.Fprintf(w, "public %s(playerid) {\n", handler)
		fmt.Fprintf(w, "    new value = CLAMP(playerid, 0, MAX_ENTITIES);\n")
		fmt.Fprintf(w, "    new squared = DOUBLE_SQR(value);\n")
		fmt.Fprintf(w, "    new longer = LONG_MACRO(value);\n")
		fmt.Fprintln(w, "    return squared + longer;")
		fmt.Fprintln(w, "}")
		fmt.Fprintln(w)
		lineCount += 9
	}
	return w.Flush()
}

// generatePathological builds one large function with many locals and
// calls, many similarly named globals, and a long function-call chain.
// With injectDiagnostics it adds unused locals and float-equality checks
// so a lint pass over it reports many findings; without it, the same
// shapes are written so they resolve cleanly and report none.
func generatePathological(w *bufio.Writer, rng *rand.Rand, targetLines int, injectDiagnostics bool) error {
	globalCount := targetLines / 20
	if globalCount < 10 {
		globalCount = 10
	}
	for i := range globalCount {
		fmt.Fprintf(w, "new gSimilarValue%d = %d;\n", i, i)
	}
	fmt.Fprintln(w)

	chainLength := globalCount / 4
	if chainLength < 3 {
		chainLength = 3
	}
	for i := range chainLength {
		fmt.Fprintf(w, "forward ChainStep%d(value);\n", i)
	}
	for i := range chainLength {
		fmt.Fprintf(w, "public ChainStep%d(value) {\n", i)
		if i+1 < chainLength {
			fmt.Fprintf(w, "    return ChainStep%d(value + 1);\n", i+1)
		} else {
			fmt.Fprintln(w, "    return value;")
		}
		fmt.Fprintln(w, "}")
	}
	fmt.Fprintln(w)

	fmt.Fprintln(w, "public OnPathologicalTest() {")
	localCount := targetLines - (globalCount + chainLength*4 + 4)
	if localCount < 1 {
		localCount = 1
	}
	for i := range localCount {
		if injectDiagnostics {
			fmt.Fprintf(w, "    new unused_local_%d = gSimilarValue%d;\n", i, i%globalCount)
		} else {
			fmt.Fprintf(w, "    new local_%d = gSimilarValue%d; gSimilarValue%d += local_%d;\n", i, i%globalCount, (i+1)%globalCount, i)
		}
	}
	if injectDiagnostics {
		fmt.Fprintln(w, "    new Float:approx = 0.1 + 0.2;")
		fmt.Fprintln(w, "    if (approx == 0.3) { gSimilarValue0 = 1; }")
	}
	fmt.Fprintln(w, "    return ChainStep0(gSimilarValue0);")
	fmt.Fprintln(w, "}")
	return w.Flush()
}

// generateIncludeHeavy writes a root file plus nested includes: shared
// declarations, platform API declarations, and build-profile defines.
func generateIncludeHeavy(rng *rand.Rand, targetLines int, outDir string) error {
	if err := os.MkdirAll(filepath.Join(outDir, "nested"), 0o755); err != nil {
		return err
	}

	platform, err := os.Create(filepath.Join(outDir, "platform.inc"))
	if err != nil {
		return err
	}
	defer platform.Close()
	pw := bufio.NewWriter(platform)
	fmt.Fprintln(pw, "#if defined _perf_platform_included")
	fmt.Fprintln(pw, "    #endinput")
	fmt.Fprintln(pw, "#endif")
	fmt.Fprintln(pw, "#define _perf_platform_included")
	fmt.Fprintln(pw)
	fmt.Fprintln(pw, "native SetPlayerPos(playerid, Float:x, Float:y, Float:z);")
	fmt.Fprintln(pw, "native GetPlayerPos(playerid, &Float:x, &Float:y, &Float:z);")
	fmt.Fprintln(pw, "native SetPlayerHealth(playerid, Float:health);")
	fmt.Fprintln(pw, "native CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay);")
	if err := pw.Flush(); err != nil {
		return err
	}

	nested, err := os.Create(filepath.Join(outDir, "nested", "deep.inc"))
	if err != nil {
		return err
	}
	defer nested.Close()
	nw := bufio.NewWriter(nested)
	fmt.Fprintln(nw, "#if defined _perf_nested_deep_included")
	fmt.Fprintln(nw, "    #endinput")
	fmt.Fprintln(nw, "#endif")
	fmt.Fprintln(nw, "#define _perf_nested_deep_included")
	fmt.Fprintln(nw)
	fmt.Fprintln(nw, "enum E_ZONE_DATA {")
	fmt.Fprintln(nw, "    zoneMinX,")
	fmt.Fprintln(nw, "    zoneMaxX,")
	fmt.Fprintln(nw, "    zoneOwner,")
	fmt.Fprintln(nw, "}")
	if err := nw.Flush(); err != nil {
		return err
	}

	common, err := os.Create(filepath.Join(outDir, "common.inc"))
	if err != nil {
		return err
	}
	defer common.Close()
	cw := bufio.NewWriter(common)
	fmt.Fprintln(cw, "#if defined _perf_common_included")
	fmt.Fprintln(cw, "    #endinput")
	fmt.Fprintln(cw, "#endif")
	fmt.Fprintln(cw, "#define _perf_common_included")
	fmt.Fprintln(cw)
	fmt.Fprintln(cw, "#include \"nested/deep.inc\"")
	fmt.Fprintln(cw)
	fmt.Fprintln(cw, "#if defined DEBUG_BUILD")
	fmt.Fprintln(cw, "    #define LOG(%0) printf(%0)")
	fmt.Fprintln(cw, "#else")
	fmt.Fprintln(cw, "    #define LOG(%0)")
	fmt.Fprintln(cw, "#endif")
	fmt.Fprintln(cw)
	fmt.Fprintln(cw, "new gZoneData[64][E_ZONE_DATA];")
	fmt.Fprintln(cw, "new gZoneCount;")
	if err := cw.Flush(); err != nil {
		return err
	}

	root, err := os.Create(filepath.Join(outDir, "root.pwn"))
	if err != nil {
		return err
	}
	defer root.Close()
	rw := bufio.NewWriter(root)
	fmt.Fprintln(rw, "#include \"platform.inc\"")
	fmt.Fprintln(rw, "#include \"common.inc\"")
	fmt.Fprintln(rw)
	lineCount := 4
	functionIndex := 0
	for lineCount < targetLines {
		name := fmt.Sprintf("Zone%s", identifier(rng, functionIndex))
		functionIndex++
		fmt.Fprintf(rw, "forward %s(playerid);\n", name)
		fmt.Fprintf(rw, "public %s(playerid) {\n", name)
		fmt.Fprintln(rw, "    new Float:x, Float:y, Float:z;")
		fmt.Fprintln(rw, "    GetPlayerPos(playerid, x, y, z);")
		fmt.Fprintln(rw, "    LOG(\"zone check\");")
		fmt.Fprintln(rw, "    gZoneData[gZoneCount % 64][zoneOwner] = playerid;")
		fmt.Fprintln(rw, "    return 1;")
		fmt.Fprintln(rw, "}")
		fmt.Fprintln(rw)
		lineCount += 8
	}
	return rw.Flush()
}
