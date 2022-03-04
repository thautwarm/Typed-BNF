rm -rf ./tbnf-js/src/*.js
tbnf TypedBNF.tbnf ./tbnf-js/src "TypedBNF" --backend typescript-antlr
antlr4ts ./tbnf-js/src/TypedBNF.g4 -o ./tbnf-js/src
fable --typedArrays false --outDir ./tbnf-js/src
find tbnf-js/src/ -name "package.json" -exec rm {} \;
cd tbnf-js && tsc
npm run makecommonjs
npm run assembly
cd ..
