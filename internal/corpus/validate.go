package corpus

import (
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"os"
	"path/filepath"
	"sort"
)

type Result struct {
	FixtureCount int
	Errors       []string
}

func (r *Result) fail(format string, args ...any) {
	r.Errors = append(r.Errors, fmt.Sprintf(format, args...))
}

func (r *Result) OK() bool { return len(r.Errors) == 0 }

func Validate(root string, schema *Schema) (*Result, error) {
	fixtures, err := DiscoverFixtures(root)
	if err != nil {
		return nil, fmt.Errorf("discovering fixtures: %w", err)
	}

	result := &Result{FixtureCount: len(fixtures)}
	if len(fixtures) == 0 {
		result.fail("no fixtures discovered under %q; expected at least one tracked category to contain fixtures", root)
		return result, nil
	}

	idOwners := map[string][]string{}
	contentHashes := map[string][]string{} // sha256 -> "fixtureID:relPath"

	for _, fx := range fixtures {
		validateOne(root, fx, schema, result)

		if declaredID, ok := fx.Data["id"].(string); ok {
			idOwners[declaredID] = append(idOwners[declaredID], fx.MetaPath)
		}

		hashPrimaryContent(root, fx, contentHashes)
	}

	reportDuplicateIDs(idOwners, result)
	reportDuplicateContent(contentHashes, result)

	return result, nil
}

func validateOne(root string, fx Fixture, schema *Schema, result *Result) {
	for _, verr := range schema.Validate(fx.Data) {
		result.fail("%s: schema: %s: %s", fx.MetaPath, verr.Path, verr.Message)
	}

	declaredID, _ := fx.Data["id"].(string)
	if declaredID == "" {
		result.fail("%s: missing or empty \"id\"", fx.MetaPath)
	} else if declaredID != fx.ExpectedID {
		result.fail("%s: id %q does not match path-derived id %q (see docs/fixture-metadata.md)", fx.MetaPath, declaredID, fx.ExpectedID)
	}

	if wantCategory, ok := expectedCategory(fx.Dir); ok {
		if gotCategory, _ := fx.Data["category"].(string); gotCategory != wantCategory {
			result.fail("%s: category %q does not match directory-implied category %q", fx.MetaPath, gotCategory, wantCategory)
		}
	}

	if license, ok := fx.Data["license"].(map[string]any); ok {
		spdx, _ := license["spdx"].(string)
		switch spdx {
		case "":
			result.fail("%s: license.spdx is required and must be non-empty", fx.MetaPath)
		case "NOASSERTION":
			result.fail("%s: license.spdx is \"NOASSERTION\", which is only a placeholder and must be resolved before merge", fx.MetaPath)
		}
		if _, ok := license["redistribution"].(string); !ok {
			result.fail("%s: license.redistribution is required", fx.MetaPath)
		}
	} else {
		result.fail("%s: missing required \"license\" object", fx.MetaPath)
	}

	if expected, ok := fx.Data["expected"].(map[string]any); ok {
		if goldenRef, ok := expected["goldenRef"].(string); ok && goldenRef != "" {
			resolved := filepath.Join(root, fx.Dir, goldenRef)
			if _, err := os.Stat(resolved); err != nil {
				result.fail("%s: expected.goldenRef %q does not resolve to an existing file (%s)", fx.MetaPath, goldenRef, resolved)
			}
		}
	}
}

func reportDuplicateIDs(idOwners map[string][]string, result *Result) {
	ids := make([]string, 0, len(idOwners))
	for id := range idOwners {
		ids = append(ids, id)
	}
	sort.Strings(ids)
	for _, id := range ids {
		owners := idOwners[id]
		if len(owners) > 1 {
			result.fail("duplicate fixture id %q declared by: %v", id, owners)
		}
	}
}

func reportDuplicateContent(contentHashes map[string][]string, result *Result) {
	hashes := make([]string, 0, len(contentHashes))
	for h := range contentHashes {
		hashes = append(hashes, h)
	}
	sort.Strings(hashes)
	for _, h := range hashes {
		owners := contentHashes[h]
		if len(owners) > 1 {
			result.fail("duplicate fixture content (sha256 %s) shared by: %v", h[:12], owners)
		}
	}
}

func hashPrimaryContent(root string, fx Fixture, out map[string][]string) {
	dir := filepath.Join(root, fx.Dir)

	isSidecar := fx.MetaPath != fx.Dir+"/meta.json"

	hashFile := func(path, relName string) {
		data, err := os.ReadFile(path)
		if err != nil {
			return
		}
		sum := sha256.Sum256(data)
		digest := hex.EncodeToString(sum[:])
		owner := fx.ExpectedID + ":" + relName
		out[digest] = append(out[digest], owner)
	}

	if isSidecar {
		base := filepath.Base(fx.MetaPath)
		primaryName := base[:len(base)-len(".meta.json")]
		hashFile(filepath.Join(dir, primaryName), primaryName)
		return
	}

	_ = filepath.WalkDir(dir, func(path string, d os.DirEntry, err error) error {
		if err != nil || d.IsDir() || isMetadataFile(d.Name()) {
			return nil
		}
		rel, relErr := filepath.Rel(dir, path)
		if relErr != nil {
			rel = d.Name()
		}
		hashFile(path, filepath.ToSlash(rel))
		return nil
	})
}
