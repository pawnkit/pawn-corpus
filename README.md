# pawn-corpus

`pawn-corpus` is the shared test data used by PawnKit parsers, formatters, linters, migration tools, editor features, and AMX runtimes.

## Status

The corpus is pre-1.0. Layout or metadata changes are recorded in [CHANGELOG.md](CHANGELOG.md).

Fixtures have stable IDs and licence metadata. Synthetic examples are labelled; imported code records its origin. Consumers refer to fixtures by ID instead of copying them into another repository.

## Layout

| Area | Content |
|---|---|
| `syntax`, `lexer`, `preprocessor`, `semantics` | Language inputs and expected results |
| `format`, `lint`, `migrate` | Tool-specific golden pairs and rule cases |
| `lsp` | Editor operation traces |
| `amx` | Runtime fixtures and metadata |
| `projects` | Small, complete Pawn projects |
| `real-world` | Import rules and licensed upstream samples |

## Fixture metadata

Every fixture has metadata validated against `schema/fixture.schema.json`. [docs/fixture-metadata.md](docs/fixture-metadata.md) explains sidecar files and directory-level `meta.json` files.

## Using this corpus from another repository

Select fixtures by category, profile, or tag through their metadata. The adapter format is documented in [docs/adapter-protocol.md](docs/adapter-protocol.md).

## Validating the corpus

```sh
go run ./tools/validate ./...
# or
task validate
```

Validation checks metadata, licences, duplicate IDs or content, and references to expected files.

## Contributing

Add a reduced fixture for a bug that other tools may encounter. Do not auto-update golden files in CI. The full process is in [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

Repository code and synthetic fixtures use the [MIT licence](LICENSE). Imported fixtures may differ; their `license` metadata is authoritative. See [docs/licence-report.md](docs/licence-report.md).
