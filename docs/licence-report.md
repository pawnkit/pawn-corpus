# Licence report

All fixtures currently tracked in this repository are synthetic and licensed
under MIT. No reduced or real-world source has been imported yet.

The validator checks every fixture for an SPDX identifier and redistribution
status. `NOASSERTION` is not accepted in committed metadata.

## Repository licence

The repository's [MIT licence](../LICENSE) covers its code, documentation, and
synthetic fixtures. A real-world fixture may use a different licence; its own
metadata is authoritative.

## Reviewed influences

The formatting fixtures use conventions also found in PawnKit formatter tests,
including braces on their own line and spaces around operators. The fixture
content was written for this repository rather than copied.

The migration pairs are illustrative. They are test shapes, not migration
advice, until `pawn-api` and `pawnmigrate` verify the underlying API changes.

Project fixtures follow the manifest contracts in `pawnkit-spec`. When those
contracts change, update the fixtures and their metadata together.

## Adding third-party source

Read [the real-world fixture policy](../real-world/README.md) before importing
anything. Proprietary, leaked, or unlicensed gamemode source is not accepted.
Compiled AMX files also need readable source, a pinned compiler, and a recorded
checksum as described in [the AMX fixture guide](../amx/README.md).
