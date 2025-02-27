mkdir -p ./runtests/csharp_lua
./dist/TBNF.CLI.AOT ./runtests/lua.tbnf -o ./runtests/csharp_lua/ -lang "Lua" -be csharp-antlr
antlr4 ./runtests/csharp_lua/Lua.g4 -package Lua -o ./runtests/csharp_lua/
dotnet run --project ./runtests/csharp_lua/Lua.csproj -f net8.0
