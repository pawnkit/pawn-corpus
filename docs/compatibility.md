# Compatibility policy

## Supported profiles

Fixture profiles follow `pawnkit-spec`:

| Profile | Meaning |
|---|---|
| `samp-037` | SA-MP 0.3.7 compiler and runtime behavior. |
| `openmp` | open.mp compiler and runtime behavior. |
| `legacy` | Older Pawn behavior kept for compatibility. |
| `recommended` | The default modern policy. |
| `strict` | A stricter analysis and lint policy. |
| `library` | Cases specific to include and library authors. |

A fixture may name several profiles. Put genuine differences in
`expected.divergences` instead of copying the fixture.

## Schema versioning

`schema/fixture.schema.json` currently uses schema version `"1"`.

- Breaking field changes bump `schemaVersion`.
- During a transition, consumers should support the current version and the
  one immediately before it.
- Breaking changes need a changelog entry and, when practical, a migration
  script or short set of instructions.

## Fixture ID stability

Fixture IDs come from file paths. Moving a fixture changes its ID, so record
the move in `CHANGELOG.md` for consumers that select it by name. See
`docs/fixture-metadata.md` for the derivation rule.

## Corpus size tiers

The tracked corpus should stay small enough for normal pull-request CI. Large
real-world projects belong in a checksum-addressed release archive, not Git
history. See `real-world/README.md` and `docs/adapter-protocol.md`.

## Golden data

CI never rewrites golden output. Formatter results, diagnostics, migrations,
and edit traces change through an ordinary reviewed diff.
