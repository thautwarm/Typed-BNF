mkdir -p ./runtests/csharp_lua
tbnf runtests/lua.tbnf  -o runtests/csharp_lua/ -lang "lua" -be csharp-antlr

# python .\runcli.py  .\runtests\lua.tbnf .\runtests\csharp_lua\ "lua" --backend csharp-antlr

antlr4 ./runtests/csharp_lua/lua.g4 -package lua -o ./runtests/csharp_lua/

dotnet run --project ./runtests/csharp_lua/lua.csproj
