python .\runcli.py  .\runtests\simple_json.tbnf .\runtests\csharp_simple_json\ "simple_json" --backend csharp-antlr

antlr4 .\runtests\csharp_simple_json\simple_json.g4 -package simple_json

dotnet run --project .\runtests\csharp_simple_json\simple_json.csproj
