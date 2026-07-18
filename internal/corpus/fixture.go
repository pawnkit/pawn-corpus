package corpus

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"
)

type Fixture struct {
	MetaPath   string // relative to corpus root
	Dir        string // relative to corpus root
	ExpectedID string // derived from MetaPath, see docs/fixture-metadata.md
	Data       map[string]any
}

func isMetadataFile(name string) bool {
	return name == "meta.json" || strings.HasSuffix(name, ".meta.json")
}

var trackedCategoryRoots = []string{
	"syntax", "lexer", "preprocessor", "semantics", "format", "lint",
	"lsp", "amx", "migrate", "projects", "real-world",
}

func DiscoverFixtures(root string) ([]Fixture, error) {
	var fixtures []Fixture

	for _, categoryRoot := range trackedCategoryRoots {
		start := filepath.Join(root, categoryRoot)
		info, err := os.Stat(start)
		if err != nil {
			if os.IsNotExist(err) {
				continue
			}
			return nil, err
		}
		if !info.IsDir() {
			continue
		}

		err = filepath.WalkDir(start, func(path string, d os.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if d.IsDir() {
				return nil
			}
			if !isMetadataFile(d.Name()) {
				return nil
			}
			rel, err := filepath.Rel(root, path)
			if err != nil {
				return err
			}
			rel = filepath.ToSlash(rel)

			raw, err := os.ReadFile(path)
			if err != nil {
				return err
			}
			var data map[string]any
			if err := json.Unmarshal(raw, &data); err != nil {
				return fmt.Errorf("%s: invalid JSON: %w", rel, err)
			}

			fixtures = append(fixtures, Fixture{
				MetaPath:   rel,
				Dir:        filepath.ToSlash(filepath.Dir(rel)),
				ExpectedID: DeriveID(rel),
				Data:       data,
			})
			return nil
		})
		if err != nil {
			return nil, err
		}
	}

	sort.Slice(fixtures, func(i, j int) bool { return fixtures[i].MetaPath < fixtures[j].MetaPath })
	return fixtures, nil
}

// DeriveID follows the convention in docs/fixture-metadata.md.
func DeriveID(relMetaPath string) string {
	p := relMetaPath
	switch {
	case strings.HasSuffix(p, "/meta.json"):
		p = strings.TrimSuffix(p, "/meta.json")
	case strings.HasSuffix(p, ".meta.json"):
		p = strings.TrimSuffix(p, ".meta.json")
	}
	if ext := filepath.Ext(p); ext != "" && !strings.Contains(ext, "/") {
		p = strings.TrimSuffix(p, ext)
	}
	return strings.ReplaceAll(p, "/", ".")
}

func expectedCategory(dir string) (string, bool) {
	segments := strings.Split(dir, "/")
	if len(segments) == 0 {
		return "", false
	}
	switch segments[0] {
	case "syntax":
		if len(segments) >= 2 {
			switch segments[1] {
			case "valid":
				return "syntax-valid", true
			case "invalid":
				return "syntax-invalid", true
			}
		}
		return "", false
	case "lexer":
		return "lexer", true
	case "preprocessor":
		return "preprocessor", true
	case "semantics":
		return "semantics", true
	case "format":
		return "format", true
	case "lint":
		return "lint", true
	case "lsp":
		return "lsp-edit-trace", true
	case "amx":
		return "amx", true
	case "migrate":
		return "migrate", true
	case "projects":
		return "project", true
	case "real-world":
		return "real-world", true
	default:
		return "", false
	}
}
