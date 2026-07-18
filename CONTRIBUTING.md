# Contributing to pawn-corpus

PawnKit is maintained by volunteers, so reviews may take a little time.

Small fixtures are welcome. You do not need to understand every consuming tool;
a reduced example and a clear description of the behavior are enough to start.

Run the offline validator before opening a pull request:

```sh
task validate
# or
go run ./tools/validate ./...
```

## Add a fixture

Choose the category, add the smallest useful source or directory, then add its metadata. [Fixture metadata](docs/fixture-metadata.md) explains sidecars, IDs, profiles, origin, licence, expected results, and divergences.

Every significant bug fix in a consuming tool should add or reference a reduced fixture here. Link the issue or pull request that explains the original failure.

Do not auto-update formatter output, diagnostics, migration results, or edit traces. A changed golden file is reviewed in the same commit as the behavior change.

Read [the real-world fixture policy](real-world/README.md) before importing upstream code. Proprietary, leaked, or unlicensed source is not accepted.

Keep one concept per fixture where possible. Edge cases may look unusual, but ordinary fixtures should remain readable Pawn.
