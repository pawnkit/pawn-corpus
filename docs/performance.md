# Performance

The corpus is data. Its local performance concern is validation time and checkout size.

`task validate` should remain quick enough for every pull request. Keep the tracked corpus focused on small synthetic and reduced fixtures. Large licensed projects belong in an optional checksum-addressed release rather than Git history.

Consumers should choose named fixtures that represent their workload. The current corpus has small syntax files, normal includes, malformed inputs, and macro cases. It still lacks a substantial real-world gamemode suitable for large-project benchmarks.

There is no benchmark baseline for the validator yet. Add one only if validation becomes slow enough that repeated measurements are useful.
