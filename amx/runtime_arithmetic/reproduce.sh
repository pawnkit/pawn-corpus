#!/usr/bin/env sh

set -eu

if [ -z "${PAWNCC:-}" ]; then
  echo "set PAWNCC to pawncc 3.10.10" >&2
  exit 2
fi

dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$dir"
"$PAWNCC" source.pwn -oruntime_arithmetic.amx
sha256sum -c SHA256SUMS
