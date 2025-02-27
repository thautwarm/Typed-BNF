./dist/TBNF.CLI ./runtests/simple_json.tbnf -o ./runtests/csharp_simple_json/ -lang "SimpleJson" -be csharp-antlr
antlr4 ./runtests/csharp_simple_json/SimpleJson.g4 -package SimpleJson -o ./runtests/csharp_simple_json
dotnet run --project ./runtests/csharp_simple_json/SimpleJson.csproj -f net8.0
