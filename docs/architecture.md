# Architecture

`pawn-corpus` owns fixtures and their metadata. Parsers, formatters, linters, language servers, migration tools, and runtimes consume those files in their own tests.

```text
pawn-corpus fixtures
        |
        +-- parser and analysis tests
        +-- formatter and linter tests
        +-- editor and migration tests
        +-- AMX runtime tests
```

The corpus contains no implementation of those tools.

## Fixture model

A single-file fixture uses a matching `.meta.json` sidecar. A directory fixture uses `meta.json`. Both shapes validate against `schema/fixture.schema.json`.

Fixture IDs come from their paths. Moving a fixture therefore changes its public ID and needs a changelog note.

Metadata records the applicable profiles, licence, provenance, expected result, and known differences between implementations. A result may be `pending` when it is useful design input but has not been verified yet.

## Consumption

Consumers use a pinned checkout and select fixtures by category, profile, or tag. They do not copy fixtures into another repository. The [adapter guide](adapter-protocol.md) describes discovery and optional large corpora.

## Ownership

Profile names and shared diagnostic concepts follow `pawnkit-spec` and `pawnkit-core`, but this repository consumes them as data rather than importing tool implementations.

To add a category, update the metadata schema, create its directory, and document how consumers should interpret its expected result. Add a profile only after `pawnkit-spec` defines it.

The validator is a small offline Go program with no third-party dependencies.
