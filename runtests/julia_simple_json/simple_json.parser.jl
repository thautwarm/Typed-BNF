using FrontendForFreeParsing: load_fff, requirement
export is_eof_token
export LexerBuffer
export Token
include("simple_json.constructors.jl")
module LexerInternal
include("simple_json.lexer.jl")
end
load_fff((@__MODULE__), :simple_json)
is_eof_token(token::Sedlex.Token) = token.token_id == -1
const LexerBuffer = Sedlex.lexbuf
const Token = Sedlex.Token
@inline perform_lex!(f, x::LexerBuffer) = LexerInternal.lex(f, x, is_eof_token)
@inline _construct_token(args) = Token(args...)
function lexall(x::String)
buf = Sedlex.from_ustring(x)
tokens = Token[]
while true
local token = perform_lex!(_construct_token, buf)
token === nothing && continue
is_eof_token(token) && break
push!(tokens, token)
end
return rbnf_named_parse_start(nothing, tokens)
end
