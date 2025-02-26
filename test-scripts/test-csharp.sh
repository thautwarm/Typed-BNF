tbnf runtests/simple_json.tbnf  -o runtests/csharp_simple_json/ -lang "simple_json" -be csharp-antlr

antlr4 ./runtests/csharp_simple_json/simple_json.g4 -package simple_json -o ./runtests/csharp_simple_json

dotnet run --project ./runtests/csharp_simple_json/simple_json.csproj
