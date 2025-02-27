./dist/TBNF.CLI.AOT ./runtests/lua.tbnf -o ./runtests/typescript_lua_tu/src -lang "Lua" --backend typescript-antlr -ae tagged-union
antlr-ng -Dlanguage=TypeScript ./runtests/typescript_lua_tu/src/Lua.g4 -o ./runtests/typescript_lua_tu/src
tsc -p ./runtests/typescript_lua_tu/
cd ./runtests/typescript_lua_tu/
pnpm install
cd ../../
node ./runtests/typescript_lua_tu/main.js
