find ./tbnf-js/src/ -maxdepth 2 -name "*.js" ! -name "tbnf.config.js" -exec rm {} \;
tbnf TypedBNF.tbnf -o ./tbnf-js/src -lang TypedBNF -be typescript-antlr
# tbnf TypedBNF.tbnf ./tbnf-js/src "TypedBNF" --backend typescript-antlr
antlr4ts ./tbnf-js/src/TypedBNF.g4 -o ./tbnf-js/src
fable --typedArrays false --outDir ./tbnf-js/src --noCache
find tbnf-js/src/ -name "package.json" -exec rm {} \;
cd tbnf-js && npm run make-commonjs && tsc
 pkg src/Main.js -t node14-linux,node14-macos,node14-win -o ../tbnf
cd ..
find ./tbnf-js/src/ -maxdepth 2 -name "*.js" ! -name "tbnf.config.js" -exec rm {} \;
