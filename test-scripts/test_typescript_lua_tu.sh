#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"

work="${TBNF_TEST_TMP:-/tmp/tbnf-tests}/typescript-lua-tu"
src="${work}/src"
rm -rf "${work}"
mkdir -p "${src}"

cp ./runtests/typescript_lua_tu/package.json \
   ./runtests/typescript_lua_tu/pnpm-lock.yaml \
   ./runtests/typescript_lua_tu/tsconfig.json \
   "${work}/"
cp ./runtests/typescript_lua_tu/src/tbnf.config.js \
   ./runtests/typescript_lua_tu/src/api.ts \
   ./runtests/typescript_lua_tu/src/LuaRequire.ts \
   "${src}/"
python3 - "${work}/tsconfig.json" <<'PY'
import pathlib
import sys

path = pathlib.Path(sys.argv[1])
text = path.read_text()
text = text.replace(
    '"moduleResolution": "node",',
    '"moduleResolution": "node",\n'
    '        "ignoreDeprecations": "6.0",\n'
    '        "strict": false,\n'
    '        "strictPropertyInitialization": false,\n'
    '        "skipLibCheck": true,',
)
text = text.replace('"lib": ["ES6"],', '"lib": ["ES6", "DOM"],')
path.write_text(text)
PY

./dist/TBNF.CLI.AOT ./runtests/lua.tbnf -o "${src}" -lang "Lua" --backend typescript-antlr -ae tagged-union
(
  cd "${src}"
  antlr-ng -Dlanguage=TypeScript Lua.g4
)
(
  cd "${work}"
  pnpm install --frozen-lockfile
  tsc -p .
  node -e "const api = require('./src/api.js'); console.dir(api.parse_lua('return 1', '<test>'), { depth: 3 });"
)
