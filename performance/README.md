# Performance fixtures

Large-file fixtures for interactive-lint latency work. Each committed sample
is a small (~2,000 line) example so the repository stays light; regenerate
larger sizes on demand with `tools/genperf`, which is deterministic for a
given `-kind`, `-lines`, and `-seed`.

```sh
go run ./tools/genperf -kind=normal -lines=10000 > gamemode.pwn
go run ./tools/genperf -kind=normal -lines=100000 > gamemode.pwn
go run ./tools/genperf -kind=macro-heavy -lines=25000 > macros.pwn
go run ./tools/genperf -kind=pathological -lines=50000 -inject-diagnostics > path.pwn
go run ./tools/genperf -kind=include-heavy -lines=50000 -out-dir=./out
```

## Fixtures

| Directory | Shape |
|---|---|
| `large-single-file` | Enums, globals, and functions calling each other: the reported single-file gamemode scenario. |
| `macro-heavy` | Object-like, function-like, multiline, and nested macros; conditional compilation; an include guard; callback-forwarding hooks. |
| `pathological` | Many similarly named globals, a long call chain, and thousands of locals in one function. `clean.pwn` and `diagnostics.pwn` are the same shape with and without patterns that trigger lint findings. |
| `include-heavy` | A root file, a shared declarations file, a nested include, and platform API declarations. |

`unused-local` and `float-equality`, the rules `diagnostics.pwn` targets, are
off in the default profile; pass `--enable=unused-local --enable=float-equality`
to observe findings.
