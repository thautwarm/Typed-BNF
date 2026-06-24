#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"

example="${ROOT}/hello_world/hello-world-rust"

(
  cd "${example}"
  cargo test --quiet
  cargo run --quiet < sample.json > parsed.txt
)

grep -q 'JDict' "${example}/parsed.txt"
grep -q 'JsonPair' "${example}/parsed.txt"
grep -q 'JBool' "${example}/parsed.txt"
grep -q 'JNull' "${example}/parsed.txt"
rm -f "${example}/parsed.txt"
