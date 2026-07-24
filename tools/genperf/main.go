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
	ew := &errWriter{w: bufio.NewWriter(os.Stdout)}

	switch *kind {
	case "normal":
		generateNormal(ew, rng, *lines)
	case "macro-heavy":
		generateMacroHeavy(ew, rng, *lines)
	case "pathological":
		generatePathological(ew, rng, *lines, *injectDiagnostics)
	case "include-heavy":
		if *outDir == "" {
			fmt.Fprintln(os.Stderr, "genperf: -out-dir is required for -kind=include-heavy")
			os.Exit(2)
		}
		if err := generateIncludeHeavy(rng, *lines, *outDir); err != nil {
			fmt.Fprintln(os.Stderr, "genperf:", err)
			os.Exit(1)
		}
		return
	default:
		fmt.Fprintf(os.Stderr, "genperf: unknown -kind %q\n", *kind)
		os.Exit(2)
	}
	if err := ew.flush(); err != nil {
		fmt.Fprintln(os.Stderr, "genperf:", err)
		os.Exit(1)
	}
}

// errWriter tracks the first write error across many sequential writes, so
// call sites don't need to check every fmt.Fprintf/Fprintln individually.
type errWriter struct {
	w   *bufio.Writer
	err error
}

func (e *errWriter) printf(format string, args ...any) {
	if e.err != nil {
		return
	}
	_, e.err = fmt.Fprintf(e.w, format, args...)
}

func (e *errWriter) println(args ...any) {
	if e.err != nil {
		return
	}
	_, e.err = fmt.Fprintln(e.w, args...)
}

func (e *errWriter) flush() error {
	if e.err != nil {
		return e.err
	}
	return e.w.Flush()
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
func generateNormal(ew *errWriter, rng *rand.Rand, targetLines int) {
	ew.println("#define MAX_PLAYERS 1000")
	ew.println("#define INVALID_ID (-1)")
	ew.println()
	ew.println("enum E_ENTITY_DATA {")
	ew.println("    entityOwner,")
	ew.println("    Float:entityHealth,")
	ew.println("    entityState,")
	ew.println("}")
	ew.println()
	ew.println("new gEntityData[MAX_PLAYERS][E_ENTITY_DATA];")
	ew.println("new gEntityCount;")
	ew.println("new Float:gWorldScale = 1.0;")
	ew.println()

	lineCount := 9
	functionIndex := 0
	var previousFunctions []string
	for lineCount < targetLines {
		name := fmt.Sprintf("Handle%s", identifier(rng, functionIndex))
		functionIndex++
		ew.printf("forward %s(playerid, value);\n", name)
		ew.printf("public %s(playerid, value) {\n", name)
		ew.println("    new Float:result = 0.0;")
		ew.println("    new local_values[4];")
		ew.println("    for (new i = 0; i < 4; i++) {")
		ew.println("        local_values[i] = value + i;")
		ew.println("    }")
		ew.println("    if (playerid >= 0 && playerid < MAX_PLAYERS) {")
		ew.println("        gEntityData[playerid][entityOwner] = playerid;")
		ew.println("        result = gWorldScale * float(value);")
		ew.println("    } else {")
		ew.println("        result = -1.0;")
		ew.println("    }")
		ew.println("    switch (value % 3) {")
		ew.println("        case 0: gEntityData[0][entityState] = 1;")
		ew.println("        case 1: gEntityData[0][entityState] = 2;")
		ew.println("        default: gEntityData[0][entityState] = 0;")
		ew.println("    }")
		if len(previousFunctions) > 0 {
			call := previousFunctions[rng.Intn(len(previousFunctions))]
			ew.printf("    %s(playerid, local_values[0]);\n", call)
		}
		ew.println("    return floatround(result);")
		ew.println("}")
		ew.println()
		previousFunctions = append(previousFunctions, name)
		lineCount += 17
	}
}

// generateMacroHeavy builds object-like, function-like, multiline, and
// nested macros, conditional compilation, an include guard, and the
// pre-y_hooks callback-forwarding pattern common in older Pawn gamemodes.
func generateMacroHeavy(ew *errWriter, rng *rand.Rand, targetLines int) {
	ew.println("#if defined _perf_macro_heavy_included")
	ew.println("    #endinput")
	ew.println("#endif")
	ew.println("#define _perf_macro_heavy_included")
	ew.println()
	ew.println("#define MAX_ENTITIES 500")
	ew.println("#define SQR(%0) ((%0) * (%0))")
	ew.println("#define CLAMP(%0,%1,%2) ((%0) < (%1) ? (%1) : ((%0) > (%2) ? (%2) : (%0)))")
	ew.println("#define DOUBLE_SQR(%0) SQR(SQR(%0))")
	ew.println("#define LONG_MACRO(%0) \\")
	ew.println("    ((%0) + \\")
	ew.println("     (%0) * 2 + \\")
	ew.println("     (%0) * 3)")
	ew.println()
	ew.println("#if defined OPEN_MP")
	ew.println("    #define PLATFORM_NAME \"open.mp\"")
	ew.println("#else")
	ew.println("    #define PLATFORM_NAME \"sa-mp\"")
	ew.println("#endif")
	ew.println()

	lineCount := 16
	hookIndex := 0
	for lineCount < targetLines {
		callback := fmt.Sprintf("On%s", identifierWords[rng.Intn(len(identifierWords))])
		handler := fmt.Sprintf("Hooked_%s_%d", callback, hookIndex)
		hookIndex++
		ew.printf("#if defined %s\n", callback)
		ew.printf("    #undef %s\n", callback)
		ew.println("#endif")
		ew.printf("#define %s %s\n", callback, handler)
		ew.printf("forward %s(playerid);\n", handler)
		ew.printf("public %s(playerid) {\n", handler)
		ew.printf("    new value = CLAMP(playerid, 0, MAX_ENTITIES);\n")
		ew.printf("    new squared = DOUBLE_SQR(value);\n")
		ew.printf("    new longer = LONG_MACRO(value);\n")
		ew.println("    return squared + longer;")
		ew.println("}")
		ew.println()
		lineCount += 9
	}
}

// generatePathological builds one large function with many locals and
// calls, many similarly named globals, and a long function-call chain.
// With injectDiagnostics it adds unused locals and float-equality checks
// so a lint pass over it reports many findings; without it, the same
// shapes are written so they resolve cleanly and report none.
func generatePathological(ew *errWriter, rng *rand.Rand, targetLines int, injectDiagnostics bool) {
	globalCount := targetLines / 20
	if globalCount < 10 {
		globalCount = 10
	}
	for i := range globalCount {
		ew.printf("new gSimilarValue%d = %d;\n", i, i)
	}
	ew.println()

	chainLength := globalCount / 4
	if chainLength < 3 {
		chainLength = 3
	}
	for i := range chainLength {
		ew.printf("forward ChainStep%d(value);\n", i)
	}
	for i := range chainLength {
		ew.printf("public ChainStep%d(value) {\n", i)
		if i+1 < chainLength {
			ew.printf("    return ChainStep%d(value + 1);\n", i+1)
		} else {
			ew.println("    return value;")
		}
		ew.println("}")
	}
	ew.println()

	ew.println("public OnPathologicalTest() {")
	localCount := targetLines - (globalCount + chainLength*4 + 4)
	if localCount < 1 {
		localCount = 1
	}
	for i := range localCount {
		if injectDiagnostics {
			ew.printf("    new unused_local_%d = gSimilarValue%d;\n", i, i%globalCount)
		} else {
			ew.printf("    new local_%d = gSimilarValue%d; gSimilarValue%d += local_%d;\n", i, i%globalCount, (i+1)%globalCount, i)
		}
	}
	if injectDiagnostics {
		ew.println("    new Float:approx = 0.1 + 0.2;")
		ew.println("    if (approx == 0.3) { gSimilarValue0 = 1; }")
	}
	ew.println("    return ChainStep0(gSimilarValue0);")
	ew.println("}")
}

// generateIncludeHeavy writes a root file plus nested includes: shared
// declarations, platform API declarations, and build-profile defines.
func generateIncludeHeavy(rng *rand.Rand, targetLines int, outDir string) (err error) {
	if err := os.MkdirAll(filepath.Join(outDir, "nested"), 0o755); err != nil {
		return err
	}

	if err := writeFile(filepath.Join(outDir, "platform.inc"), func(ew *errWriter) {
		ew.println("#if defined _perf_platform_included")
		ew.println("    #endinput")
		ew.println("#endif")
		ew.println("#define _perf_platform_included")
		ew.println()
		ew.println("native SetPlayerPos(playerid, Float:x, Float:y, Float:z);")
		ew.println("native GetPlayerPos(playerid, &Float:x, &Float:y, &Float:z);")
		ew.println("native SetPlayerHealth(playerid, Float:health);")
		ew.println("native CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay);")
	}); err != nil {
		return err
	}

	if err := writeFile(filepath.Join(outDir, "nested", "deep.inc"), func(ew *errWriter) {
		ew.println("#if defined _perf_nested_deep_included")
		ew.println("    #endinput")
		ew.println("#endif")
		ew.println("#define _perf_nested_deep_included")
		ew.println()
		ew.println("enum E_ZONE_DATA {")
		ew.println("    zoneMinX,")
		ew.println("    zoneMaxX,")
		ew.println("    zoneOwner,")
		ew.println("}")
	}); err != nil {
		return err
	}

	if err := writeFile(filepath.Join(outDir, "common.inc"), func(ew *errWriter) {
		ew.println("#if defined _perf_common_included")
		ew.println("    #endinput")
		ew.println("#endif")
		ew.println("#define _perf_common_included")
		ew.println()
		ew.println("#include \"nested/deep.inc\"")
		ew.println()
		ew.println("#if defined DEBUG_BUILD")
		ew.println("    #define LOG(%0) printf(%0)")
		ew.println("#else")
		ew.println("    #define LOG(%0)")
		ew.println("#endif")
		ew.println()
		ew.println("new gZoneData[64][E_ZONE_DATA];")
		ew.println("new gZoneCount;")
	}); err != nil {
		return err
	}

	return writeFile(filepath.Join(outDir, "root.pwn"), func(ew *errWriter) {
		ew.println("#include \"platform.inc\"")
		ew.println("#include \"common.inc\"")
		ew.println()
		lineCount := 4
		functionIndex := 0
		for lineCount < targetLines {
			name := fmt.Sprintf("Zone%s", identifier(rng, functionIndex))
			functionIndex++
			ew.printf("forward %s(playerid);\n", name)
			ew.printf("public %s(playerid) {\n", name)
			ew.println("    new Float:x, Float:y, Float:z;")
			ew.println("    GetPlayerPos(playerid, x, y, z);")
			ew.println("    LOG(\"zone check\");")
			ew.println("    gZoneData[gZoneCount % 64][zoneOwner] = playerid;")
			ew.println("    return 1;")
			ew.println("}")
			ew.println()
			lineCount += 8
		}
	})
}

// writeFile creates path, runs write against a buffered writer over it, and
// closes the file, returning the first error from creation, writing,
// flushing, or closing.
func writeFile(path string, write func(*errWriter)) (err error) {
	f, err := os.Create(path)
	if err != nil {
		return err
	}
	defer func() {
		if cerr := f.Close(); cerr != nil && err == nil {
			err = cerr
		}
	}()
	ew := &errWriter{w: bufio.NewWriter(f)}
	write(ew)
	return ew.flush()
}
