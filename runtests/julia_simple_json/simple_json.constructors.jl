using FrontendForFreeParsing: requirement, ForwardResolvedField
import FrontendForFreeParsing: forward_resolve
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
export JBool
struct JBool
    value::bool
end
export JDict
struct JDict
_unbox::Any
function JDict(value)
    _FR_JDict(value)
end
end
export JFlt
struct JFlt
    value::float
end
export JInt
struct JInt
    value::int
end
export JList
struct JList
_unbox::Any
function JList(elements)
    _FR_JList(elements)
end
end
export JNull
struct JNull end
export JStr
struct JStr
    value::str
end
export Json
const Json = Union{JStr, JNull, JList, JInt, JFlt, JDict, JBool}
export NameValuePair
struct NameValuePair{_T_A, _T_B}
    name::_T_A
    value::_T_B
end
struct _FR_JDict
    value::TApp (TConst list, [TApp (TConst NameValuePair, [TConst str; TConst Json])])
end
Base.getproperty(this::JDict, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_JDict, name)
struct _FR_JList
    elements::TApp (TConst list, [TConst Json])
end
Base.getproperty(this::JList, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_JList, name)
begin
function json_9(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)
    JDict(__tbnf_SLOTS[1])
end
end
begin
function json_8(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)
    JList(__tbnf_SLOTS[1])
end
end
begin
function json_7(__tbnf_SLOTS_1)
    JBool(false)
end
end
begin
function json_6(__tbnf_SLOTS_1)
    JBool(true)
end
end
begin
function json_5(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
    JDict([])
end
end
begin
function json_4(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
    JList([])
end
end
begin
function json_3(__tbnf_SLOTS_1)
    JStr(unesc(getStr(__tbnf_SLOTS[0])))
end
end
begin
function json_2(__tbnf_SLOTS_1)
    JNull()
end
end
begin
function json_1(__tbnf_SLOTS_1)
    JFlt(parseFlt(getStr(__tbnf_SLOTS[0])))
end
end
begin
function json_0(__tbnf_SLOTS_1)
    JInt(parseInt(getStr(__tbnf_SLOTS[0])))
end
end
begin
function seplist(",",jsonpair)_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)
    appendList(__tbnf_SLOTS[0], __tbnf_SLOTS[2])
end
end
begin
function seplist(",",jsonpair)_0(__tbnf_SLOTS_1)
    [__tbnf_SLOTS[0]]
end
end
begin
function seplist(",",json)_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)
    appendList(__tbnf_SLOTS[0], __tbnf_SLOTS[2])
end
end
begin
function seplist(",",json)_0(__tbnf_SLOTS_1)
    [__tbnf_SLOTS[0]]
end
end
begin
function jsonpair_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)
    NameValuePair(unesc(getStr(__tbnf_SLOTS[0])), __tbnf_SLOTS[2])
end
end
begin
function start_0(__tbnf_SLOTS_1)
    __tbnf_SLOTS[0]
end
end
