node tbnf.js  ./runtests/simple_json.tbnf -o ./runtests/julia_simple_json -lang "simple_json" -be julia-fff
python run_generated_parser.py
