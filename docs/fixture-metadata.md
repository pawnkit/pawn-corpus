# Fixture metadata convention

Every fixture has metadata validated against `schema/fixture.schema.json`.
Single-file and directory fixtures use the same schema but store the metadata
in different places.

## Sidecar vs. directory `meta.json`

There are two layouts:

1. A single-file fixture keeps `<basename>.meta.json` beside its `.pwn` or
   `.inc` file. This is common under `syntax`, `lexer`, `preprocessor`, and
   `semantics`.

   ```text
   syntax/valid/functions/basic_stock.pwn
   syntax/valid/functions/basic_stock.pwn.meta.json
   ```

2. A multi-file fixture keeps `meta.json` inside its directory. Formatting,
   migration, LSP, and project fixtures use this layout.

   ```text
   format/pairs/loop_collapse/input.pwn
   format/pairs/loop_collapse/expected.pwn
   format/pairs/loop_collapse/meta.json
   ```

The validator discovers both `*.meta.json` sidecars and directory-level
`meta.json` files.

## Stable ID derivation

A fixture's `id` is the path from the repository root to its metadata file,
with:

- the `.meta.json` (sidecar) or `/meta.json` (directory) suffix removed,
- remaining `/` separators replaced with `.`,
- any remaining file extension (e.g. `.pwn`) stripped,
- `_` and `-` left as-is inside path segments.

Examples:

| Metadata path | ID |
|---|---|
| `syntax/valid/functions/basic_stock.pwn.meta.json` | `syntax.valid.functions.basic_stock` |
| `format/pairs/loop_collapse/meta.json` | `format.pairs.loop_collapse` |
| `lint/rules/float-equality/invalid.pwn.meta.json` | `lint.rules.float-equality.invalid` |

The validator derives the ID again and rejects a mismatch.

## Field reference

The schema is authoritative. This table is a quick reference:

| Field | Meaning |
|---|---|
| `schemaVersion` | Metadata schema version (currently `"1"`). |
| `id` | Stable, path-derived fixture ID. |
| `category` | One of the corpus categories (`syntax-valid`, `syntax-invalid`, `lexer`, `preprocessor`, `semantics`, `format`, `lint`, `lsp-edit-trace`, `amx`, `migrate`, `project`, `real-world`, `performance`). |
| `description` | One-line human description. |
| `profiles` | Compatibility profile(s) this fixture applies to (`samp-037`, `openmp`, `legacy`, `recommended`, `strict`, `library`). |
| `tags` | Optional free-form tags for adapter filtering. |
| `kind` | `synthetic`, `reduced`, or `real-world`. |
| `origin` | Provenance: source project/URL/commit for non-synthetic content. |
| `license` | SPDX id + redistribution permission for this fixture's content. |
| `expected` | Expected parse/compile/analyse result, diagnostics, and/or golden reference. |
| `divergences` | Known cross-profile/cross-tool behaviour differences. |

## Worked example (sidecar)

```json
{
  "schemaVersion": "1",
  "id": "syntax.invalid.unterminated_string",
  "category": "syntax-invalid",
  "description": "String literal missing its closing quote before end of line.",
  "profiles": ["samp-037", "openmp"],
  "tags": ["lexer", "string"],
  "kind": "synthetic",
  "origin": { "kind": "synthetic" },
  "license": { "spdx": "MIT", "redistribution": "allowed" },
  "expected": {
    "result": "invalid",
    "diagnosticClass": "lexer/unterminated-string"
  }
}
```

## Worked example (directory, with golden reference)

```json
{
  "schemaVersion": "1",
  "id": "format.pairs.loop_collapse",
  "category": "format",
  "description": "for/while/do-while bodies expand to brace-on-own-line form.",
  "profiles": ["recommended"],
  "kind": "synthetic",
  "origin": { "kind": "synthetic" },
  "license": { "spdx": "MIT", "redistribution": "allowed" },
  "expected": {
    "result": "valid",
    "goldenRef": "expected.pwn"
  }
}
```

`goldenRef` is relative to the metadata file's directory.
