# Changelog

All notable changes to this repository are documented in this file.
The format loosely follows [Keep a Changelog](https://keepachangelog.com/),
and this project uses independent semantic versioning for the fixture
metadata schema (`schemaVersion`) as described in
`docs/compatibility.md`.

## [Unreleased]

## [0.1.1] - 2026-07-23

### Added

- A small SA-MP project fixture and pinned external integration projects.

## [0.1.0] - 2026-07-20

### Added

- Initial fixture metadata schema (`schema/fixture.schema.json`,
  `schemaVersion: "1"`), JSON Schema draft 2020-12.
- Initial curated corpus across all required categories: `syntax/valid`,
  `syntax/invalid`, `lexer`, `preprocessor`, `semantics`, `format/pairs`,
  `lint/rules`, `lsp/edit-traces`, `migrate/pairs`, `projects`. `amx/` and
  `real-world/` intentionally left as documentation-only placeholders.
- `tools/validate`: Go/stdlib-only corpus validator (schema conformance,
  licence presence, duplicate ID detection, duplicate content detection,
  golden/expectation reference resolution).
- Repository scaffolding: README, architecture/compatibility/performance
  docs, adapter protocol doc, CI workflow, issue/PR templates, licence
  report.

### Notes

- This is the first commit series for the repository; there is no prior
  schema version to migrate from.
