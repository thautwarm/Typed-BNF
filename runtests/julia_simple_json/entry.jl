import FrontendForFreeParsing
import Sedlex

FrontendForFreeParsing.requirement(::Val{:simple_json}, ::Val{:appendList}) = push!
FrontendForFreeParsing.requirement(::Val{:simple_json}, ::Val{:parseInt}) =
    function parseInt(x::String)
        parse(Int, x)
    end

FrontendForFreeParsing.requirement(::Val{:simple_json}, ::Val{:getStr}) =
    function getStr(x::Sedlex.LightToken)
        Sedlex.sedlex_lexeme(x)
    end

FrontendForFreeParsing.requirement(::Val{:simple_json}, ::Val{:unesc}) =
    function unesc(x::String)
        Base.unescape_string(x)
    end

FrontendForFreeParsing.requirement(::Val{:simple_json}, ::Val{:parseFlt}) =
    function parseFlt(x::String)
        parse(Cdouble, x)
    end

module Parser
# provide a @switch implementation
include("simple_json.parser.jl")
end
