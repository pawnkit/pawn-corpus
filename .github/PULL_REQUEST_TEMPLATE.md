## Summary

## Fixture(s) added/changed

<!-- List fixture IDs. If this is a regression fixture, link the bug/issue. -->

## Checklist

- [ ] `task check` passes locally (format, vet, tests, `tools/validate`).
- [ ] Every new/changed fixture has metadata conforming to
      `schema/fixture.schema.json` (`task validate`).
- [ ] Every fixture declares a licence (`license.spdx` +
      `license.redistribution`).
- [ ] Real-world (non-synthetic) content follows `real-world/README.md`
      and includes `origin.sourceProject`/`sourceUrl`/`sourceCommit`.
- [ ] Golden/expected files were changed deliberately, not auto-generated
      in CI, and the diff was reviewed by eye.
- [ ] `CHANGELOG.md` updated if this changes the schema or is otherwise
      user-visible to consuming repositories.
