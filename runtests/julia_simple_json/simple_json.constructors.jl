using FrontendForFreeParsing: requirement
using FrontendForFreeParsing.Runtime
import FrontendForFreeParsing
export appendList
const appendList = requirement(Val(:simple_json), Val(:appendList))
export unesc
const unesc = requirement(Val(:simple_json), Val(:unesc))
export getStr
const getStr = requirement(Val(:simple_json), Val(:getStr))
export parseFlt
const parseFlt = requirement(Val(:simple_json), Val(:parseFlt))
export parseInt
const parseInt = requirement(Val(:simple_json), Val(:parseInt))


export Case_JBool
struct Case_JBool <: FrontendForFreeParsing.AbstractUnionCase 
    value::Bool
    function Case_JBool(value)
        new(value)
    end
end
export JBool
@inline JBool(args...) = Json(Case_JBool(args...))


export Case_JDict
struct Case_JDict <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_JDict(value)
        new(_FR_Case_JDict(value))
    end
end
export JDict
@inline JDict(args...) = Json(Case_JDict(args...))


export Case_JFlt
struct Case_JFlt <: FrontendForFreeParsing.AbstractUnionCase 
    value::Cdouble
    function Case_JFlt(value)
        new(value)
    end
end
export JFlt
@inline JFlt(args...) = Json(Case_JFlt(args...))


export Case_JInt
struct Case_JInt <: FrontendForFreeParsing.AbstractUnionCase 
    value::Int
    function Case_JInt(value)
        new(value)
    end
end
export JInt
@inline JInt(args...) = Json(Case_JInt(args...))


export Case_JList
struct Case_JList <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_JList(elements)
        new(_FR_Case_JList(elements))
    end
end
export JList
@inline JList(args...) = Json(Case_JList(args...))


export Case_JNull
struct Case_JNull <: FrontendForFreeParsing.AbstractUnionCase end


export Case_JStr
struct Case_JStr <: FrontendForFreeParsing.AbstractUnionCase 
    value::String
    function Case_JStr(value)
        new(value)
    end
end
export JStr
@inline JStr(args...) = Json(Case_JStr(args...))


export Json
struct Json
    case :: Union{Case_JStr, Case_JNull, Case_JList, Case_JInt, Case_JFlt, Case_JDict, Case_JBool}
end


export NameValuePair
struct NameValuePair{_T_A, _T_B} <: FrontendForFreeParsing.AbstractUnionCase
    name::_T_A
    value::_T_B
end




struct _FR_Case_JDict <: FrontendForFreeParsing.AbstractForwardRef
    value::Vector{NameValuePair{String, Json}}
end
@inline Base.getproperty(this::Case_JDict, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_JDict, name)
@inline Base.propertynames(::Union{Case_JDict,Type{Case_JDict}}) = fieldnames(_FR_Case_JDict)


struct _FR_Case_JList <: FrontendForFreeParsing.AbstractForwardRef
    elements::Vector{Json}
end
@inline Base.getproperty(this::Case_JList, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_JList, name)
@inline Base.propertynames(::Union{Case_JList,Type{Case_JList}}) = fieldnames(_FR_Case_JList)


function json_9(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Json
    JDict(__tbnf_SLOTS_2)
end
function json_8(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Json
    JList(__tbnf_SLOTS_2)
end
function json_7(__tbnf_SLOTS_1)::Json
    JBool(false)
end
function json_6(__tbnf_SLOTS_1)::Json
    JBool(true)
end
function json_5(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::Json
    JDict(NameValuePair{String, Json}[])
end
function json_4(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::Json
    JList(Json[])
end
function json_3(__tbnf_SLOTS_1)::Json
    JStr(unesc(getStr(__tbnf_SLOTS_1)))
end
function json_2(__tbnf_SLOTS_1)::Json
    JNull()
end
function json_1(__tbnf_SLOTS_1)::Json
    JFlt(parseFlt(getStr(__tbnf_SLOTS_1)))
end
function json_0(__tbnf_SLOTS_1)::Json
    JInt(parseInt(getStr(__tbnf_SLOTS_1)))
end
function seplist_40__34__44__34__44_jsonpair_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{NameValuePair{String, Json}}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function seplist_40__34__44__34__44_jsonpair_41__0(__tbnf_SLOTS_1)::Vector{NameValuePair{String, Json}}
    NameValuePair{String, Json}[__tbnf_SLOTS_1]
end
function seplist_40__34__44__34__44_json_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{Json}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function seplist_40__34__44__34__44_json_41__0(__tbnf_SLOTS_1)::Vector{Json}
    Json[__tbnf_SLOTS_1]
end
function jsonpair_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::NameValuePair{String, Json}
    NameValuePair(unesc(getStr(__tbnf_SLOTS_1)), __tbnf_SLOTS_3)
end
function start_0(__tbnf_SLOTS_1)::Json
    __tbnf_SLOTS_1
end
