import FrontendForFreeParsing
import Sedlex    

FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:appendList}) = push!
FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:listMap}) =
    function listMap(xs::Vector, x)
        map(f, xs)
    end

const Maybe{T} = Union{Some{T}, Nothing}

FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:maybe}) = Maybe
FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:some}) = 
    function some(x)
        Some(x)
    end

FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:none}) = 
    function none()
        nothing
    end

struct Operator
    x :: Sedlex.LightToken
end

struct Operand{T}
    x :: T
end

const Op{T} = Union{Operand{T}, Operator}

FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:op}) = Op

function mkBinOpSeq(xs, _, f)
    f(xs)
end

FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:mkBinOpSeq}) = mkBinOpSeq
FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:mkOperand}) = x -> Operand(x)
FrontendForFreeParsing.requirement(::Val{:lua}, ::Val{:mkOperator}) = x -> Operator(x)

module Parser
# provide a @switch implementation
include("lua.parser.jl")
end
