#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"

work="${TBNF_TEST_TMP:-/tmp/tbnf-tests}/csharp-simple-json"
rm -rf "${work}"
mkdir -p "${work}"

cp ./runtests/csharp_simple_json/SimpleJson.csproj \
   ./runtests/csharp_simple_json/ParseError.cs \
   ./runtests/csharp_simple_json/SimpleJsonRequire.cs \
   ./runtests/csharp_simple_json/tbnf.config.js \
   "${work}/"

./dist/TBNF.CLI.AOT ./runtests/simple_json.tbnf -o "${work}/" -lang "SimpleJson" -be csharp-antlr
(
  cd "${work}"
  antlr4 SimpleJson.g4 -package SimpleJson
)

printf '{"x":[1,2,true,null]}\n' > "${work}/sample.json"
dotnet run --project "${work}/SimpleJson.csproj" -f net8.0 -- "${work}/sample.json" "${work}/times.txt"
test -s "${work}/times.txt"
