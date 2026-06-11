#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"

work="${TBNF_TEST_TMP:-/tmp/tbnf-tests}/csharp-lua"
rm -rf "${work}"
mkdir -p "${work}"

cp ./runtests/csharp_lua/Lua.csproj \
   ./runtests/csharp_lua/ParseError.cs \
   ./runtests/csharp_lua/LuaApp.cs \
   ./runtests/csharp_lua/LuaRequire.cs \
   ./runtests/csharp_lua/tbnf.config.js \
   "${work}/"

./dist/TBNF.CLI.AOT ./runtests/lua.tbnf -o "${work}/" -lang "Lua" -be csharp-antlr
(
  cd "${work}"
  antlr4 Lua.g4 -package Lua
)

printf 'return 1\n' > "${work}/sample.lua"
dotnet run --project "${work}/Lua.csproj" -f net8.0 -- "${work}/sample.lua" "${work}/times.txt"
test -s "${work}/times.txt"
