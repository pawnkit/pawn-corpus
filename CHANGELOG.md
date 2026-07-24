# Changelog

All notable changes to this repository are documented in this file.
The format loosely follows [Keep a Changelog](https://keepachangelog.com/),
and this project uses independent semantic versioning for the fixture
metadata schema (`schemaVersion`) as described in
`docs/compatibility.md`.

## [0.1.8] - 2026-07-24

### Added

- Added a `performance` fixture category and `tools/genperf`, a deterministic
  generator for large single-file, macro-heavy, pathological, and
  include-heavy Pawn sources used in interactive-lint latency benchmarks.

## [0.1.7] - 2026-07-23

### Fixed

- Updated the minimal open.mp project to use the RFC 0002 extension fields.

## [0.1.6] - 2026-07-23

### Added

- Compiler probes for include order and included-file source locations.

## [0.1.5] - 2026-07-23

### Added

- Reduced compiler probes for literals, directives, includes, tags, and scope.

## [0.1.4] - 2026-07-23

### Fixed

- Marked recursive macro compiler behaviour as pending and timeout-bound.

## [0.1.3] - 2026-07-23

### Added

- Preprocessor fixtures for nested branches, recursive macros, and open.mp profile defines.

## [0.1.2] - 2026-07-23

### Added

- Offline validation for pinned integration projects.

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
