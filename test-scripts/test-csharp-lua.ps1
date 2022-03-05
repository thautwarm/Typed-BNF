try
{ mkdir ./runtests/csharp_lua -ErrorAction Stop }
catch { }

node tbnf-js/src/Main.js runtests/lua.tbnf  -o runtests/csharp_lua/ -lang "lua" -be csharp-antlr

# python .\runcli.py  .\runtests\lua.tbnf .\runtests\csharp_lua\ "lua" --backend csharp-antlr

antlr4 .\runtests\csharp_lua\lua.g4 -package lua

dotnet run --project .\runtests\csharp_lua\lua.csproj
