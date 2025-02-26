tbnf  ./runtests/simple_json.tbnf -o ./runtests/julia_simple_json -lang "simple_json" -be julia-fff
cd runtests/julia_simple_json/
[ -f simple_json.fff_parser.jl ] && rm simple_json.fff_parser.jl
julia entry.jl
cd ../../

