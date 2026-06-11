#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

TEST_TMP="${TBNF_TEST_TMP:-/tmp/tbnf-tests}"
mkdir -p "${TEST_TMP}"

log() {
  printf '\n\033[1;34m==> %s\033[0m\n' "$*"
}

skip() {
  printf '\n\033[1;33mSKIP: %s\033[0m\n' "$*"
}

ensure_aot() {
  if [ ! -x ./dist/TBNF.CLI.AOT ]; then
    log "build AOT CLI"
    deno run -A build.ts aot
  fi
}

suite_toolchain() {
  log "toolchain versions"
  dotnet --version
  deno --version | head -1
  node --version
  pnpm --version
  tsc --version
  antlr-ng --version
  antlr4 2>&1 | head -2
  python3 - <<'PY'
import lark
print('lark', lark.__version__)
PY
  ocaml -version
  dune --version
  menhir --version
}

suite_aot() {
  ensure_aot
  log "TBNF version"
  ./dist/TBNF.CLI.AOT --version
}

suite_pure() {
  ensure_aot
  log "pure-bnf JSON smoke test"
  out="${TEST_TMP}/pure-json"
  rm -rf "${out}"
  mkdir -p "${out}"
  ./dist/TBNF.CLI.AOT hello_world/Json.tbnf -o "${out}" -lang Json -be pure-bnf
  test -f "${out}/Json.bnf"
  sed -n '1,8p' "${out}/Json.bnf"
}

suite_csharp_json() {
  ensure_aot
  log "C# JSON end-to-end"
  bash test-scripts/test-csharp-json.sh
}

suite_csharp_lua() {
  ensure_aot
  log "C# Lua end-to-end"
  bash test-scripts/test-csharp-lua.sh
}

suite_typescript_lua() {
  ensure_aot
  log "TypeScript Lua case-class end-to-end"
  bash test-scripts/test_typescript_lua.sh
}

suite_typescript_lua_tu() {
  ensure_aot
  log "TypeScript Lua tagged-union end-to-end"
  bash test-scripts/test_typescript_lua_tu.sh
}

suite_python_json() {
  skip "Python legacy backend is currently not a reliable test target; skipped in docker."
}

suite_python_lua() {
  skip "Python legacy backend is currently not a reliable test target; skipped in docker."
}

suite_ocaml_json() {
  skip "OCaml legacy backend fixtures are currently not a reliable test target; skipped in docker."
}

suite_ocaml_lua() {
  skip "OCaml legacy backend fixtures are currently not a reliable test target; skipped in docker."
}

suite_julia() {
  skip "Julia backend is deprecated/unsupported by the current CLI; no docker test is run."
}

list_suites() {
  cat <<'SUITES'
Available suites:
  smoke                toolchain + aot + pure-bnf smoke test
  all | stable         smoke + C# tests + TypeScript tests
  legacy              Skipped: legacy Python/OCaml backends are not reliable test targets
  toolchain
  aot
  pure
  csharp-json
  csharp-lua
  typescript-lua      TypeScript case-class backend
  typescript-lua-tu   TypeScript tagged-union backend
  python-json         Skipped: legacy Python backend
  python-lua          Skipped: legacy Python backend
  ocaml-json          Skipped: legacy OCaml backend
  ocaml-lua           Skipped: legacy OCaml backend
  julia               Skipped: backend unsupported
SUITES
}

run_suite() {
  case "$1" in
    list) list_suites ;;
    toolchain) suite_toolchain ;;
    aot) suite_aot ;;
    pure|pure-bnf) suite_pure ;;
    smoke)
      suite_toolchain
      suite_aot
      suite_pure
      ;;
    csharp-json) suite_csharp_json ;;
    csharp-lua) suite_csharp_lua ;;
    typescript-lua|typescript-case-class|ts-lua) suite_typescript_lua ;;
    typescript-lua-tu|typescript-tagged-union|ts-lua-tu) suite_typescript_lua_tu ;;
    python-json) suite_python_json ;;
    python-lua) suite_python_lua ;;
    ocaml-json) suite_ocaml_json ;;
    ocaml-lua) suite_ocaml_lua ;;
    legacy)
      suite_python_json
      suite_python_lua
      suite_ocaml_json
      suite_ocaml_lua
      ;;
    julia|julia-json|julia-lua) suite_julia ;;
    stable|all)
      suite_toolchain
      suite_aot
      suite_pure
      suite_csharp_json
      suite_csharp_lua
      suite_typescript_lua
      suite_typescript_lua_tu
      ;;
    *)
      echo "unknown test suite: $1" >&2
      list_suites >&2
      exit 2
      ;;
  esac
}

if [ "$#" -eq 0 ]; then
  run_suite all
else
  for suite in "$@"; do
    run_suite "${suite}"
  done
fi
