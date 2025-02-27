./dist/TBNF.CLI.AOT ./runtests/lua.tbnf -o ./runtests/typescript_lua/src -lang "Lua" --backend typescript-antlr -ae case-class
antlr-ng -Dlanguage=TypeScript ./runtests/typescript_lua/src/Lua.g4 -o ./runtests/typescript_lua/src
tsc -p ./runtests/typescript_lua/
cd ./runtests/typescript_lua/
pnpm install
cd ../../
node ./runtests/typescript_lua/main.js
