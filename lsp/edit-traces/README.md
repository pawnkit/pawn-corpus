# LSP edit-trace format

An edit trace is a directory with:

```text
lsp/edit-traces/<trace-id>/
  trace.json   # the trace itself (schema below)
  meta.json    # fixture metadata (schema/fixture.schema.json)
```

`meta.json` follows the normal [directory-fixture
layout](../../docs/fixture-metadata.md). It uses `category: "lsp-edit-trace"`
and points `expected.goldenRef` to `trace.json`.

## `trace.json` shape

```jsonc
{
  "initialText": "public OnPlayerConnect(playerid)\n{\n    return 1;\n}\n",
  "operation": "rename" | "format-on-type" | "code-action",
  "request": {
    // operation-specific request parameters, e.g. for "rename":
    "position": { "line": 0, "character": 7 },
    "newName": "OnPlayerJoin"
    // for "format-on-type":
    // "position": {...}, "triggerCharacter": "\n"
    // for "code-action":
    // "range": {"start": {...}, "end": {...}}, "kind": "quickfix", "titleContains": "..."
  },
  "edits": [
    {
      "seq": 1,
      "range": {
        "start": { "line": 0, "character": 7 },
        "end": { "line": 0, "character": 22 }
      },
      "newText": "OnPlayerJoin",
      "description": "rename declaration site"
    }
    // additional ordered edits, e.g. every call site, in application order
  ],
  "expected": {
    "resultText": "public OnPlayerJoin(playerid)\n{\n    return 1;\n}\n",
    "invariants": [
      "edits do not overlap",
      "edits apply cleanly in listed order without re-resolving ranges",
      "applying edits to initialText yields resultText exactly"
    ]
  }
}
```

## Replay rules

- `initialText` and `expected.resultText` are literal file contents with LF line endings and a trailing newline.
- Positions use zero-based LSP `{line, character}` pairs. Characters count
  UTF-16 code units.
- Apply `edits` in listed order to `initialText`. The result must equal
  `expected.resultText` exactly.
- `expected.invariants` records extra requirements such as non-overlap or
  idempotence.

Traces do not depend on a particular LSP library or transport.
