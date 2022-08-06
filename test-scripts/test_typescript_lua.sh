node tbnf.js ./runtests/lua.tbnf -o ./runtests/typescript_lua/src -lang "lua" --backend=typescript-antlr
antlr4ts ./runtests/typescript_lua/src/lua.g4 -o ./runtests/typescript_lua/src
tsc -p ./runtests/typescript_lua/
cd ./runtests/typescript_lua/
npm install
cd ../../
node ./runtests/typescript_lua/main.js