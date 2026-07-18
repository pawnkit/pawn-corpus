# Security policy

Fixtures are untrusted data. They must not contain credentials, personal data, proprietary source, or leaked gamemodes.

The validator reads and hashes fixture bytes. It does not compile or execute them and does not invoke a shell.

A future corpus downloader must verify checksums, reject archive traversal, limit compressed and extracted size, cap entry counts, and never execute extracted files.

Report a licensing or tooling security problem through GitHub's private security advisory form for `pawn-corpus`. Include the affected fixture or script and its provenance when known.
