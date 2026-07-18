package corpus

import (
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
)

func TestDeriveID(t *testing.T) {
	cases := map[string]string{
		"syntax/valid/functions/basic_stock.pwn.meta.json": "syntax.valid.functions.basic_stock",
		"format/pairs/loop_collapse/meta.json":             "format.pairs.loop_collapse",
		"lint/rules/float-equality/invalid.pwn.meta.json":  "lint.rules.float-equality.invalid",
		"lsp/edit-traces/rename-symbol-basic/meta.json":    "lsp.edit-traces.rename-symbol-basic",
		"projects/minimal-gamemode/meta.json":              "projects.minimal-gamemode",
	}
	for input, want := range cases {
		if got := DeriveID(input); got != want {
			t.Errorf("DeriveID(%q) = %q, want %q", input, got, want)
		}
	}
}

func TestExpectedCategory(t *testing.T) {
	cases := []struct {
		dir  string
		want string
		ok   bool
	}{
		{"syntax/valid/functions", "syntax-valid", true},
		{"syntax/invalid", "syntax-invalid", true},
		{"lexer", "lexer", true},
		{"preprocessor", "preprocessor", true},
		{"semantics", "semantics", true},
		{"format/pairs/loop_collapse", "format", true},
		{"lint/rules/float-equality", "lint", true},
		{"lsp/edit-traces/rename-symbol-basic", "lsp-edit-trace", true},
		{"amx", "amx", true},
		{"migrate/pairs/callback-rename", "migrate", true},
		{"projects/minimal-gamemode", "project", true},
		{"real-world", "real-world", true},
		{"docs", "", false},
	}
	for _, c := range cases {
		got, ok := expectedCategory(c.dir)
		if ok != c.ok || got != c.want {
			t.Errorf("expectedCategory(%q) = (%q, %v), want (%q, %v)", c.dir, got, ok, c.want, c.ok)
		}
	}
}

func mustSchema(t *testing.T, root string) *Schema {
	t.Helper()
	raw, err := os.ReadFile(filepath.Join(root, "schema", "fixture.schema.json"))
	if err != nil {
		t.Fatalf("reading schema: %v", err)
	}
	var doc map[string]any
	if err := json.Unmarshal(raw, &doc); err != nil {
		t.Fatalf("parsing schema: %v", err)
	}
	return ParseSchema(doc)
}

// repoRoot walks up from the test's working directory to find the module
// root (identified by go.mod), so the test can validate the real corpus.
func repoRoot(t *testing.T) string {
	t.Helper()
	dir, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	for {
		if _, err := os.Stat(filepath.Join(dir, "go.mod")); err == nil {
			return dir
		}
		parent := filepath.Dir(dir)
		if parent == dir {
			t.Fatal("could not find repository root (no go.mod found)")
		}
		dir = parent
	}
}

func TestValidateRealCorpus(t *testing.T) {
	root := repoRoot(t)
	schema := mustSchema(t, root)

	result, err := Validate(root, schema)
	if err != nil {
		t.Fatalf("Validate: %v", err)
	}
	if !result.OK() {
		t.Fatalf("corpus has %d validation error(s):\n%s", len(result.Errors), joinErrors(result.Errors))
	}
	if result.FixtureCount == 0 {
		t.Fatal("expected at least one fixture to be discovered")
	}
}

func joinErrors(errs []string) string {
	out := ""
	for _, e := range errs {
		out += "  - " + e + "\n"
	}
	return out
}

func TestValidateRejectsMissingLicense(t *testing.T) {
	dir := t.TempDir()
	writeSchemaCopy(t, dir)

	fixtureDir := filepath.Join(dir, "syntax", "valid", "case1")
	if err := os.MkdirAll(fixtureDir, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(fixtureDir, "a.pwn"), []byte("main() {}\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	meta := map[string]any{
		"schemaVersion": "1",
		"id":            "syntax.valid.case1.a",
		"category":      "syntax-valid",
		"description":   "test fixture",
		"profiles":      []any{"openmp"},
		"kind":          "synthetic",
		"origin":        map[string]any{"kind": "synthetic"},
		"expected":      map[string]any{"result": "valid"},
	}
	writeJSON(t, filepath.Join(fixtureDir, "a.pwn.meta.json"), meta)

	schema := mustSchema(t, dir)
	result, err := Validate(dir, schema)
	if err != nil {
		t.Fatalf("Validate: %v", err)
	}
	if result.OK() {
		t.Fatal("expected validation to fail for a fixture missing its license field")
	}
}

func TestValidateDetectsDuplicateID(t *testing.T) {
	dir := t.TempDir()
	writeSchemaCopy(t, dir)

	for _, name := range []string{"a", "b"} {
		fixtureDir := filepath.Join(dir, "syntax", "valid", name)
		if err := os.MkdirAll(fixtureDir, 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(filepath.Join(fixtureDir, "case.pwn"), []byte("main() { return "+name+"; }\n"), 0o644); err != nil {
			t.Fatal(err)
		}
		meta := map[string]any{
			"schemaVersion": "1",
			"id":            "syntax.valid.duplicate.case", // deliberately identical across both fixtures
			"category":      "syntax-valid",
			"description":   "test fixture " + name,
			"profiles":      []any{"openmp"},
			"kind":          "synthetic",
			"origin":        map[string]any{"kind": "synthetic"},
			"license":       map[string]any{"spdx": "MIT", "redistribution": "allowed"},
			"expected":      map[string]any{"result": "valid"},
		}
		writeJSON(t, filepath.Join(fixtureDir, "case.pwn.meta.json"), meta)
	}

	schema := mustSchema(t, dir)
	result, err := Validate(dir, schema)
	if err != nil {
		t.Fatalf("Validate: %v", err)
	}
	if result.OK() {
		t.Fatal("expected validation to fail for duplicate fixture IDs")
	}
	found := false
	for _, e := range result.Errors {
		if containsSubstring(e, "duplicate fixture id") {
			found = true
		}
	}
	if !found {
		t.Fatalf("expected a duplicate-id error, got: %v", result.Errors)
	}
}

func writeSchemaCopy(t *testing.T, dir string) {
	t.Helper()
	root := repoRoot(t)
	raw, err := os.ReadFile(filepath.Join(root, "schema", "fixture.schema.json"))
	if err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(filepath.Join(dir, "schema"), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(dir, "schema", "fixture.schema.json"), raw, 0o644); err != nil {
		t.Fatal(err)
	}
}

func writeJSON(t *testing.T, path string, data any) {
	t.Helper()
	raw, err := json.MarshalIndent(data, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, raw, 0o644); err != nil {
		t.Fatal(err)
	}
}

func containsSubstring(s, substr string) bool {
	return len(s) >= len(substr) && (func() bool {
		for i := 0; i+len(substr) <= len(s); i++ {
			if s[i:i+len(substr)] == substr {
				return true
			}
		}
		return false
	})()
}
