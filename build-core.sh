./dist/TBNF.CLI TypedBNF.tbnf -o ./CLI/Grammar/ -lang TypedBNF -be csharp-antlr
antlr4 ./CLI/Grammar/TypedBNF.g4 -package TypedBNF -o ./CLI/Grammar/