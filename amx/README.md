# AMX fixtures

`runtime_arithmetic` is compiled from checked-in Pawn source with pawncc 3.10.10.
Its reproduction script prints the artifact hash. Runtime adapters compare its
return value with the canonical C runner.

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

Set `PAWNCC` to the pinned compiler and run the fixture's `reproduce.sh` script
after changing its source.
