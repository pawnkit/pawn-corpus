// Command validate checks the pawn-corpus fixture corpus against
// schema/fixture.schema.json and corpus-wide invariants.
//
// Usage:
//
//	go run ./tools/validate [root]
package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"

	"github.com/pawnkit/pawn-corpus/internal/corpus"
)

func main() {
	os.Exit(run(os.Args[1:]))
}

func run(args []string) int {
	root := "."
	if len(args) > 0 && args[0] != "./..." {
		root = args[0] // "./..." is treated as "no argument" for go-test-style invocations
	}

	schemaPath := filepath.Join(root, "schema", "fixture.schema.json")
	schemaBytes, err := os.ReadFile(schemaPath)
	if err != nil {
		fmt.Fprintf(os.Stderr, "validate: reading schema %s: %v\n", schemaPath, err)
		return 3
	}
	var schemaDoc map[string]any
	if err := json.Unmarshal(schemaBytes, &schemaDoc); err != nil {
		fmt.Fprintf(os.Stderr, "validate: parsing schema %s: %v\n", schemaPath, err)
		return 3
	}
	schema := corpus.ParseSchema(schemaDoc)

	result, err := corpus.Validate(root, schema)
	if err != nil {
		fmt.Fprintf(os.Stderr, "validate: %v\n", err)
		return 3
	}

	for _, e := range result.Errors {
		fmt.Fprintf(os.Stderr, "FAIL: %s\n", e)
	}

	if !result.OK() {
		fmt.Fprintf(os.Stderr, "\n%d fixture(s) checked, %d error(s)\n", result.FixtureCount, len(result.Errors))
		return 1
	}

	fmt.Printf("OK: %d fixture(s) validated, 0 errors\n", result.FixtureCount)
	return 0
}
