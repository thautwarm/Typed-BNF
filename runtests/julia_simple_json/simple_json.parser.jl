using FrontendForFreeParsing: @load_fff!
import Sedlex
export is_eof_token
export LexerBuffer
export Token


include("simple_json.constructors.jl")


module LexerInternal
    include("simple_json.lexer.jl")
end


@load_fff!(simple_json)


is_eof_token(token) = token.idint == -1
const LexerBuffer = Sedlex.lexbuf
const Token = Sedlex.LightToken


@inline perform_lex!(f, x::LexerBuffer) = LexerInternal.lex(f, x)
@inline _construct_token(args...) = Token(args...)
function parse(::Val{:simple_json}, x::String; outbuf::Union{Nothing, Ref{LexerBuffer}} = nothing)
    buf = Sedlex.from_ustring(x)
    outbuf !== nothing && (outbuf[] = buf)
    tokens = Token[]
    while true
        local token = perform_lex!(_construct_token, buf)
        token === nothing && continue
        is_eof_token(token) && break
        push!(tokens, token)
    end
    return rbnf_named_parse_START(nothing, Tokens(tokens, 0))
end
