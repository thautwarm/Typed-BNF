# python ./runcli.py  ./runtests/simple_json.tbnf ./runtests/ocaml_simple_json/ "simple_json" --backend ocaml-menhir

node tbnf.js  -i ./runtests/simple_json.tbnf -o ./runtests/ocaml_simple_json -lang "simple_json" --backend=ocaml-menhir

bash -c -i "menhir runtests/ocaml_simple_json/simple_json_parser.mly --external-tokens Simple_json_lexer"

bash -c -i "cd runtests/ocaml_simple_json/ && dune build && dune utop ."

# 'dune utop .' start interactive env
# utop> Apis.parse_json "<json_string>"
