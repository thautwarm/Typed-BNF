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
  if [ ! -x ./dist/TBNF.CLI.AOT ] || find core cli cli.aot \
      \( -path '*/bin/*' -o -path '*/obj/*' -o -name GeneratedVersion.cs \) -prune \
      -o -type f -newer ./dist/TBNF.CLI.AOT -print -quit | grep -q .; then
    log "build AOT CLI"
    rm -f ./dist/TBNF.CLI.AOT
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
  rustc --version
  cargo --version
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

run_tbnf_case() {
  local name="$1"
  local body="$2"
  local file="${TEST_TMP}/${name}.tbnf"
  local out="${TEST_TMP}/${name}-out"

  rm -rf "${out}"
  mkdir -p "${out}"
  printf '%s\n' "${body}" > "${file}"
  ./dist/TBNF.CLI.AOT "${file}" -o "${out}" -lang Test -be pure-bnf >/tmp/"${name}".log 2>&1
  test -f "${out}/Test.bnf"
}

expect_tbnf_failure() {
  local name="$1"
  local body="$2"
  local pattern="$3"
  local file="${TEST_TMP}/${name}.tbnf"
  local out="${TEST_TMP}/${name}-out"
  local log="${TEST_TMP}/${name}.log"

  rm -rf "${out}"
  mkdir -p "${out}"
  printf '%s\n' "${body}" > "${file}"

  set +e
  bash -c 'log="$1"; shift; "$@" >"${log}" 2>&1' \
    _ "${log}" ./dist/TBNF.CLI.AOT "${file}" -o "${out}" -lang Test -be pure-bnf \
    >/dev/null 2>&1
  local code="$?"
  set -e

  if [ "${code}" -eq 0 ]; then
    echo "expected ${name} to fail, but it succeeded" >&2
    return 1
  fi

  if ! grep -q "${pattern}" "${log}"; then
    echo "expected ${name} failure to contain: ${pattern}" >&2
    sed -n '1,120p' "${log}" >&2
    return 1
  fi
}

suite_typecheck_regressions() {
  ensure_aot
  log "type inference regression tests"

  run_tbnf_case field-prune 'type pair(x: int)

pair_rule : "a" { pair(1) }
start : pair_rule { $1.x }'

  run_tbnf_case extern-generic-field 'extern type box<a>(value: a)
extern var makeBox : int -> box<int>

start : "a" { let x = makeBox(1) in x.value }'

  expect_tbnf_failure duplicate-poly-parameter 'extern var id : <a, a> a -> a
start : "a" { id(1) }' "duplicate type variable 'a'"

  expect_tbnf_failure duplicate-type-parameter 'type box<a, a>(value: a)
start : "a" { 1 }' "duplicate type variable 'a'"
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

suite_grammar_matrix() {
  ensure_aot
  log "Cross-backend arithmetic grammar assertions"

  work="${TEST_TMP}/grammar-matrix-arith"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/arith.tbnf" <<'TBNF'
type Expr
case Add : (Expr, Expr) -> Expr
case Mul : (Expr, Expr) -> Expr
case Num : int -> Expr

start : expr { $1 }

expr : expr "+" term { Add($1, $3) }
     | term { $1 }

term : term "*" atom { Mul($1, $3) }
     | atom { $1 }

atom : "0" { Num(0) }
     | "1" { Num(1) }
     | "2" { Num(2) }
     | "3" { Num(3) }
     | "4" { Num(4) }
     | "5" { Num(5) }
     | "6" { Num(6) }
     | "7" { Num(7) }
     | "8" { Num(8) }
     | "9" { Num(9) }
     | "(" expr ")" { $2 }

ignore SPACE
SPACE = (" " | "\t" | "\r" | "\n")+;
TBNF
  printf '1 + 2 * (3 + 4)' > "${work}/sample.txt"

  ./dist/TBNF.CLI.AOT "${work}/arith.tbnf" -o "${work}/rust" -lang "Arith" -be rust-lrpar
  (
    cd "${work}/rust"
    cargo run --quiet < "${work}/sample.txt" > parsed.txt
  )
  grep -q 'Add' "${work}/rust/parsed.txt"
  grep -q 'Mul' "${work}/rust/parsed.txt"
  grep -q 'Num' "${work}/rust/parsed.txt"

  ./dist/TBNF.CLI.AOT "${work}/arith.tbnf" -o "${work}/csharp" -lang "Arith" -be csharp-antlr
  (
    cd "${work}/csharp"
    antlr4 Arith.g4 -package Arith
    cat > Arith.csproj <<'XML'
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
    <NoWarn>3021;8981</NoWarn>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Antlr4.Runtime.Standard" Version="4.10.1" />
  </ItemGroup>
</Project>
XML
    cat > Program.cs <<'CS'
using System;
using Antlr4.Runtime;

namespace Arith;

public static class Program
{
    static Expr Parse(string text)
    {
        var lexer = new ArithLexer(CharStreams.fromString(text));
        var parser = new ArithParser(new CommonTokenStream(lexer));
        parser.BuildParseTree = false;
        return parser.start().result;
    }

    static void AssertContains(string text, string expected)
    {
        if (!text.Contains(expected))
        {
            throw new Exception($"expected generated C# parse result to contain `{expected}`; got: {text}");
        }
    }

    public static void Main()
    {
        var shown = Parse("1 + 2 * (3 + 4)").ToString() ?? "";
        AssertContains(shown, "Add");
        AssertContains(shown, "Mul");
        AssertContains(shown, "Num");
        Console.WriteLine(shown);
    }
}
CS
    dotnet run --project Arith.csproj -f net8.0 > parsed.txt
  )
  grep -q 'Add' "${work}/csharp/parsed.txt"
  grep -q 'Mul' "${work}/csharp/parsed.txt"
  grep -q 'Num' "${work}/csharp/parsed.txt"

  mkdir -p "${work}/typescript/src"
  cp ./runtests/typescript_lua/package.json \
     ./runtests/typescript_lua/pnpm-lock.yaml \
     "${work}/typescript/"
  cat > "${work}/typescript/tsconfig.json" <<'JSON'
{
  "compilerOptions": {
    "module": "CommonJS",
    "moduleResolution": "node",
    "ignoreDeprecations": "6.0",
    "strict": false,
    "strictPropertyInitialization": false,
    "skipLibCheck": true,
    "target": "ES6",
    "lib": ["ES6", "DOM"],
    "outDir": "src",
    "sourceMap": true,
    "rootDir": "src"
  },
  "exclude": ["node_modules", ".vscode-test", "out"]
}
JSON
  cat > "${work}/typescript/src/tbnf.config.js" <<'JS'
"use strict";

function rename_type(x) {
  if (x == "int" || x == "float") return "number";
  if (x == "str") return "string";
  if (x == "bool") return "boolean";
  if (x == "list") return "Array";
  if (x == "token") return "antlr.Token";
  return x + "_t";
}

module.exports = { rename_type };
JS
  ./dist/TBNF.CLI.AOT "${work}/arith.tbnf" -o "${work}/typescript/src" -lang "Arith" --backend typescript-antlr -ae tagged-union
  (
    cd "${work}/typescript/src"
    antlr-ng -Dlanguage=TypeScript Arith.g4
  )
  cat > "${work}/typescript/src/assert_arith.ts" <<'TS'
import * as antlr from "antlr4ng";
import { CommonTokenStream } from "antlr4ng";
import { ArithLexer } from "./ArithLexer";
import { ArithParser } from "./ArithParser";

function parse(text: string) {
  const lexer = new ArithLexer(antlr.CharStream.fromString(text));
  const parser = new ArithParser(new CommonTokenStream(lexer));
  return parser.start().result;
}

function assertContains(text: string, expected: string) {
  if (!text.includes(expected)) {
    throw new Error(`expected generated TypeScript parse result to contain ${expected}; got: ${text}`);
  }
}

const shown = JSON.stringify(parse("1 + 2 * (3 + 4)"));
assertContains(shown, "Add");
assertContains(shown, "Mul");
assertContains(shown, "Num");
console.log(shown);
TS
  (
    cd "${work}/typescript"
    pnpm install --frozen-lockfile
    tsc -p .
    node src/assert_arith.js > parsed.txt
  )
  grep -q 'Add' "${work}/typescript/parsed.txt"
  grep -q 'Mul' "${work}/typescript/parsed.txt"
  grep -q 'Num' "${work}/typescript/parsed.txt"
}

suite_rust_json() {
  ensure_aot
  log "Rust lrpar JSON end-to-end"
  work="${TEST_TMP}/rust-simple-json"
  rm -rf "${work}"
  mkdir -p "${work}"

  ./dist/TBNF.CLI.AOT ./runtests/simple_json.tbnf -o "${work}/" -lang "SimpleJson" -be rust-lrpar
  cp ./runtests/rust_simple_json/externs.rs "${work}/src/externs.rs"

  printf '{"x":[1,2,true,null]}\n' > "${work}/sample.json"
  (
    cd "${work}"
    cargo run --quiet < sample.json > parsed.txt
  )

  grep -q 'JDict' "${work}/parsed.txt"
  grep -q 'JBool' "${work}/parsed.txt"
  grep -q 'JNull' "${work}/parsed.txt"
}

suite_rust_lua() {
  ensure_aot
  log "Rust lrpar Lua LR-compatible end-to-end"
  work="${TEST_TMP}/rust-lua-lr"
  rm -rf "${work}"
  mkdir -p "${work}"

  ./dist/TBNF.CLI.AOT ./runtests/lua_lr.tbnf -o "${work}/" -lang "Lua" -be rust-lrpar
  cp ./runtests/rust_lua/externs.rs "${work}/src/externs.rs"

  cat > "${work}/sample.lua" <<'LUA'
local x = 1 + 2 * 3
f(x)
return x
LUA

  (
    cd "${work}"
    cargo run --quiet < sample.lua > parsed.txt
  )

  grep -q 'Assignment' "${work}/parsed.txt"
  grep -q 'CallFunc' "${work}/parsed.txt"
  grep -q 'ReturnStmt' "${work}/parsed.txt"
  grep -q 'Bin' "${work}/parsed.txt"
}

suite_rust_grammars() {
  ensure_aot
  log "Rust lrpar additional grammar regressions"

  work="${TEST_TMP}/rust-grammar-arith"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Expr
case Add : (Expr, token, Expr) -> Expr
case Mul : (Expr, token, Expr) -> Expr
case Num : token -> Expr

start : expr { $1 }
expr : expr "+" term { Add($1, $2, $3) }
     | term { $1 }
term : term "*" atom { Mul($1, $2, $3) }
     | atom { $1 }
atom : <INT> { Num($1) }
     | "(" expr ")" { $2 }

ignore SPACE
SPACE = (" " | "\t" | "\r" | "\n")+;
INT = [0-9]+;
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Add(Box<Expr>, TbnfToken, Box<Expr>)' "${work}/out/src/test.y"
  grep -Fq 'Mul(Box<Expr>, TbnfToken, Box<Expr>)' "${work}/out/src/test.y"
  (
    cd "${work}/out"
    printf '1 + 2 * 3' | cargo run --quiet > parsed.txt
  )
  grep -q 'Add' "${work}/out/parsed.txt"
  grep -q 'Mul' "${work}/out/parsed.txt"
  grep -q 'Num' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-grammar-record-list"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Point(x: int, y: int)
type Shape
case Poly : list<Point> -> Shape

start : "poly" { Poly([Point(1, 2), Point(3, 4)]) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  (
    cd "${work}/out"
    printf 'poly' | cargo run --quiet > parsed.txt
  )
  grep -q 'Poly' "${work}/out/parsed.txt"
  grep -q 'Point' "${work}/out/parsed.txt"
  grep -q 'x: 1' "${work}/out/parsed.txt"
  grep -q 'y: 4' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-grammar-opaque-recursion"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
extern type maybe<a>
extern var some : <a> a -> maybe<a>
extern var none : <a> () -> maybe<a>

type node
case Node : maybe<node> -> node

start : "n" { Node(none()) }
      | "s" { Node(some(Node(none()))) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Node(Box<maybe<node>>)' "${work}/out/src/test.y"
  cat > "${work}/out/src/externs.rs" <<'RS'
#![allow(non_snake_case, non_camel_case_types, dead_code, unused_imports)]
use crate::test_y::*;

#[derive(Clone, Debug, PartialEq)]
pub enum maybe<T> {
    Some(T),
    None,
}

pub fn some<T: Clone>(arg0: &T) -> maybe<T> {
    maybe::Some(arg0.clone())
}

pub fn none<T>() -> maybe<T> {
    maybe::None
}
RS
  (
    cd "${work}/out"
    printf 's' | cargo run --quiet > parsed.txt
  )
  grep -q 'Some' "${work}/out/parsed.txt"
  grep -q 'None' "${work}/out/parsed.txt"
}

suite_rust_recursion() {
  ensure_aot
  log "Rust lrpar recursive Boxing regressions"

  work="${TEST_TMP}/rust-recursion-mutual"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Expr
type Node(expr: Expr)
case Wrap : Node -> Expr
case Leaf : int -> Expr

start : "a" { let n = Node(Leaf(1)) in Wrap(Node(n.expr)) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Wrap(Box<Node>)' "${work}/out/src/test.y"
  grep -Fq 'pub expr: Box<Expr>' "${work}/out/src/test.y"
  grep -Fq '*((n).expr)' "${work}/out/src/test.y"
  (
    cd "${work}/out"
    printf 'a' | cargo run --quiet > parsed.txt
  )
  grep -q 'Wrap' "${work}/out/parsed.txt"
  grep -q 'Leaf' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-recursion-generic"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Expr
type Holder<a>(value: a)
case Wrap : Holder<Expr> -> Expr
case Leaf : int -> Expr

start : "a" { Wrap(Holder(Leaf(1))) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Wrap(Box<Holder<Expr>>)' "${work}/out/src/test.y"
  (
    cd "${work}/out"
    printf 'a' | cargo run --quiet > parsed.txt
  )
  grep -q 'Wrap' "${work}/out/parsed.txt"
  grep -q 'Holder' "${work}/out/parsed.txt"
}

suite_rust_functions() {
  ensure_aot
  log "Rust lrpar function-value and extern-call regressions"

  work="${TEST_TMP}/rust-function-constructor"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Expr
case Var : token -> Expr

extern var applyTok : (token -> Expr, token) -> Expr

NAME = [a-z]+ ;
start : <NAME> { applyTok(Var, $1) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Box::new(Var) as Box<dyn Fn(TbnfToken) -> Expr>' "${work}/out/src/test.y"
  cat > "${work}/out/src/externs.rs" <<'RS'
#![allow(non_snake_case, non_camel_case_types, dead_code, unused_imports)]
use crate::test_y::*;

pub fn applyTok(arg0: &Box<dyn Fn(TbnfToken) -> Expr>, arg1: &TbnfToken) -> Expr {
    arg0(arg1.clone())
}
RS
  (
    cd "${work}/out"
    printf 'abc' | cargo run --quiet > parsed.txt
  )
  grep -q 'Var' "${work}/out/parsed.txt"
  grep -q 'abc' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-function-lambda"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
extern var applyInt : (int -> int, int) -> int

start : "a" { applyInt(fun (x: int) -> x, 41) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'Box::new(move |x: i64| { x }) as Box<dyn Fn(i64) -> i64>' "${work}/out/src/test.y"
  cat > "${work}/out/src/externs.rs" <<'RS'
#![allow(non_snake_case, non_camel_case_types, dead_code, unused_imports)]
use crate::test_y::*;

pub fn applyInt(arg0: &Box<dyn Fn(i64) -> i64>, arg1: &i64) -> i64 {
    arg0(*arg1)
}
RS
  (
    cd "${work}/out"
    printf 'a' | cargo run --quiet > parsed.txt
  )
  grep -q '^41$' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-generic-extern-stub"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
extern var id : <a> a -> a

start : "a" { id(fun (x: int) -> x) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'pub fn id<TbnfA>(arg0: &TbnfA) -> TbnfA' "${work}/out/src/externs.rs"
  ! grep -Fq 'TbnfA: Clone' "${work}/out/src/externs.rs"
  (
    cd "${work}/out"
    cargo check --quiet --lib
  )

  work="${TEST_TMP}/rust-angle-literals"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
start : "<" ">" { true }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq '\<' "${work}/out/src/test.l"
  grep -Fq '\>' "${work}/out/src/test.l"
  (
    cd "${work}/out"
    printf '<>' | cargo run --quiet > parsed.txt
  )
  grep -q '^true$' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-owned-string-literals"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Boxed(value: str)

start : "a" { Boxed("hello") }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  grep -Fq 'String::from("hello")' "${work}/out/src/test.y"
  (
    cd "${work}/out"
    printf 'a' | cargo run --quiet > parsed.txt
  )
  grep -q 'hello' "${work}/out/parsed.txt"

  work="${TEST_TMP}/rust-no-implicit-clone"
  rm -rf "${work}"
  mkdir -p "${work}"
  cat > "${work}/input.tbnf" <<'TBNF'
type Pair(a: str, b: str)

start : "a" { let x = "hello" in Pair(x, x) }
TBNF

  ./dist/TBNF.CLI.AOT "${work}/input.tbnf" -o "${work}/out" -lang "Test" -be rust-lrpar
  ! grep -Fq '.clone()' "${work}/out/src/test.y"
  (
    cd "${work}/out"
    if cargo check --quiet --lib 2> check.err; then
      echo "expected Rust move checker to reject value reuse without explicit clone" >&2
      exit 1
    fi
  )
  grep -q 'use of moved value' "${work}/out/check.err"
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
  typecheck           Type inference regression tests
  csharp-json
  csharp-lua
  typescript-lua      TypeScript case-class backend
  typescript-lua-tu   TypeScript tagged-union backend
  grammar-matrix      Same arithmetic grammar with assertions in C#, TypeScript, and Rust
  rust-json           Rust lrpar JSON end-to-end
  rust-lua            Rust lrpar Lua LR-compatible end-to-end
  rust-grammars       Rust lrpar additional grammar regressions
  rust-recursion      Rust lrpar recursive Boxing regressions
  rust-functions      Rust lrpar function-value and extern-call regressions
  rust-*              Rust lrpar backend tests
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
      suite_typecheck_regressions
      ;;
    typecheck|typecheck-regressions|type-inference) suite_typecheck_regressions ;;
    csharp-json) suite_csharp_json ;;
    csharp-lua) suite_csharp_lua ;;
    typescript-lua|typescript-case-class|ts-lua) suite_typescript_lua ;;
    typescript-lua-tu|typescript-tagged-union|ts-lua-tu) suite_typescript_lua_tu ;;
    grammar-matrix|cross-grammar|cross-backend-grammar) suite_grammar_matrix ;;
    rust-json|rust-lrpar-json) suite_rust_json ;;
    rust-lua|rust-lrpar-lua) suite_rust_lua ;;
    rust-grammars|rust-lrpar-grammars) suite_rust_grammars ;;
    rust-recursion|rust-lrpar-recursion) suite_rust_recursion ;;
    rust-functions|rust-lrpar-functions) suite_rust_functions ;;
    rust|rust-*)
      suite_rust_json
      suite_rust_lua
      suite_rust_grammars
      suite_rust_recursion
      suite_rust_functions
      ;;
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
      suite_typecheck_regressions
      suite_csharp_json
      suite_csharp_lua
      suite_typescript_lua
      suite_typescript_lua_tu
      suite_grammar_matrix
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
