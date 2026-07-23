# Real-world fixtures

No upstream source is checked in here yet. Real-world fixtures need per-file licence and provenance review before redistribution.

`PROJECTS.tsv` pins the external projects used by extended integration tests.
The list is not permission to redistribute their source. CI fetches an exact
revision and follows each project's licence.

The first five-project integration set is:

- `projects/minimal-samp-gamemode`
- `projects/filterscript-with-includes`
- the three repositories in `PROJECTS.tsv`

## Acceptance rules

A fixture must have:

- a licence or written permission that allows redistribution;
- an exact upstream commit or release;
- the source URL and project name;
- any attribution required by the licence;
- a checksum for the imported file.

Public availability is not permission. Proprietary or leaked gamemodes are never accepted.

## Add a fixture

Record the source in `SOURCES.tsv` and its checksum in `SHA256SUMS`. Add normal fixture metadata with `kind: "real-world"`, then run `task validate`.

The pull request should let a reviewer confirm provenance without trusting the contributor's summary. Link the upstream licence directly.

Small reviewed files may live here. Bulk projects should use the optional checksum-addressed archive described in [the adapter guide](../docs/adapter-protocol.md).
