mkdir -p ./runtests/julia_lua
node tbnf.js ./runtests/weaker-lua.tbnf -o ./runtests/julia_lua -lang "lua" -be julia-fff
cd runtests/julia_lua/
[ -f lua.fff_parser.jl ] && rm lua.fff_parser.jl
julia entry.jl
cd ../../
