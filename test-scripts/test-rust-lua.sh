#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"

example="${ROOT}/runtests/rust_lua"

(
  cd "${example}"
  cargo test --quiet
  cargo run --quiet < sample.lua > parsed.txt
)

grep -q 'Assignment' "${example}/parsed.txt"
grep -q 'CallFunc' "${example}/parsed.txt"
grep -q 'ReturnStmt' "${example}/parsed.txt"
grep -q 'Bin' "${example}/parsed.txt"
rm -f "${example}/parsed.txt"
