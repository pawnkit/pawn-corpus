# Using the corpus from another repository

Use a pinned checkout of `pawn-corpus` during tests. Do not copy fixtures into a consumer's `testdata`; copied files lose provenance and drift from the shared expectation.

## Select fixtures

1. Walk the categories used by the tool.
2. Parse `meta.json` and `.meta.json` files against `schema/fixture.schema.json`.
3. Filter by category, intersecting profiles, and optional tags.
4. Skip `expected.result: pending` unless the test is explicitly working on that unsupported behavior.
5. Resolve `expected.goldenRef` from the metadata file's directory.

A consumer may also address one fixture by its path-derived ID.

## CI tiers

Everything tracked in this repository is the default offline corpus and should remain suitable for pull-request smoke tests.

A future bulk real-world corpus should be a checksum-addressed release archive. Download it only in an explicit extended job. Verify its checksum, bound extraction size and entry count, reject escaping paths, and never execute archive content.

## Compiler comparisons

When a pinned compiler is available, compile valid and invalid syntax fixtures for the profiles it supports. Compare stable diagnostic classes rather than exact message text. Record genuine profile differences in `expected.divergences`.

Differential runs report disagreements; they never rewrite expected results automatically.

## Regression fixtures

A significant consumer bug should add or reference the smallest fixture that reproduces it. Use `kind: "reduced"`, link the fixing issue or pull request in its origin metadata, and describe the corrected behavior in `expected`.

Golden output is always reviewed as a normal source diff. CI must not update it.
