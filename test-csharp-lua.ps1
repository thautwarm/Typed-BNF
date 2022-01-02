try
{ mkdir ./runtests/csharp_lua -ErrorAction Stop }
catch { }

python .\runcli.py  .\runtests\lua.tbnf .\runtests\csharp_lua\ "lua" --backend csharp-antlr

antlr4 .\runtests\csharp_lua\lua.g4 -package lua

dotnet run --project .\runtests\csharp_lua\lua.csproj
