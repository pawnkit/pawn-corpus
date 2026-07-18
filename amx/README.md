# AMX fixtures

No compiled AMX fixture is checked in yet. A useful binary must come from readable Pawn source and a pinned compiler; a hand-built approximation would not test real compiler output.

## Expected layout

```text
amx/<fixture-id>/
  source.pwn
  <fixture-id>.samp-037.amx
  <fixture-id>.openmp.amx
  meta.json
```

Metadata should record the compiler version or commit, flags, artifact checksum, public table, and observable runtime result. Profile-specific behavior belongs in `expected.divergences`.

AMX files remain untrusted input even when generated for this corpus. Runtime tests need the same memory, instruction, and timeout limits used for arbitrary bytecode.

The next step is to wire a pinned compiler into fixture generation and commit the source, output, metadata, and reproduction command together.
