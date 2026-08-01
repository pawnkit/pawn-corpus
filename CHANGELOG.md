# Changelog

All notable changes to this repository are documented in this file.
The format loosely follows [Keep a Changelog](https://keepachangelog.com/),
and this project uses independent semantic versioning for the fixture
metadata schema (`schemaVersion`) as described in
`docs/compatibility.md`.

## [0.1.20] - 2026-08-01

### Added

- Added a regression fixture for YSI test entry points that share a production
  function name.

## [0.1.19] - 2026-07-31

### Changed

- Made the minimal open.mp project usable by the build and run workflow.

## [0.1.18] - 2026-07-30

### Fixed

- Keep source fixtures on LF line endings across supported platforms.

## [0.1.17] - 2026-07-29

### Fixed

- Formatted the minimal golden project with the released formatter.

## [0.1.16] - 2026-07-29

### Added

- Added runnable tests to both golden projects.

## [0.1.15] - 2026-07-29

### Added

- Added AKRP-V5 to the pinned real-project set.

## [0.1.14] - 2026-07-29

### Added

- Added a source-backed AMX runtime differential fixture.

## [0.1.13] - 2026-07-29

### Added

- Added a compile-ready formatter equivalence fixture.

## [0.1.12] - 2026-07-25

### Changed

- Added the repository support record with CI validation.

## [0.1.11] - 2026-07-25

### Added

- Indexed preprocessor compatibility fixtures and their compiler behavior.

## [0.1.10] - 2026-07-24

### Changed

- Removed a stray comment in `tools/genperf`. No behavior change.

## [0.1.9] - 2026-07-24

### Fixed

- `tools/genperf` now checks its write and file-close errors instead of
  discarding them. Output is unchanged.

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
