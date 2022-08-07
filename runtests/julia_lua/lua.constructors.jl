using FrontendForFreeParsing: requirement
using FrontendForFreeParsing.Runtime
import FrontendForFreeParsing
export mkBinOpSeq
const mkBinOpSeq = requirement(Val(:lua), Val(:mkBinOpSeq))
export mkOperand
const mkOperand = requirement(Val(:lua), Val(:mkOperand))
export mkOperator
const mkOperator = requirement(Val(:lua), Val(:mkOperator))
export op
const op = requirement(Val(:lua), Val(:op))
export none
const none = requirement(Val(:lua), Val(:none))
export some
const some = requirement(Val(:lua), Val(:some))
export maybe
const maybe = requirement(Val(:lua), Val(:maybe))
export listMap
const listMap = requirement(Val(:lua), Val(:listMap))
export appendList
const appendList = requirement(Val(:lua), Val(:appendList))


export Case_DotName
struct Case_DotName <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_DotName(value0, value1)
        new(_FR_Case_DotName(value0,value1))
    end
end
export DotName
@inline DotName(args...) = funcname(Case_DotName(args...))


export Case_MethodName
struct Case_MethodName <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_MethodName(value0, value1)
        new(_FR_Case_MethodName(value0,value1))
    end
end
export MethodName
@inline MethodName(args...) = funcname(Case_MethodName(args...))


export Case_VarName
struct Case_VarName <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_VarName(value)
        new(value)
    end
end
export VarName
@inline VarName(args...) = funcname(Case_VarName(args...))


export funcname
struct funcname
    case :: Union{Case_VarName, Case_MethodName, Case_DotName}
end


export Case_PositionalArgs
struct Case_PositionalArgs <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_PositionalArgs(value0, value1)
        new(_FR_Case_PositionalArgs(value0,value1))
    end
end
export PositionalArgs
@inline PositionalArgs(args...) = arguments(Case_PositionalArgs(args...))


export Case_StringArg
struct Case_StringArg <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_StringArg(value)
        new(value)
    end
end
export StringArg
@inline StringArg(args...) = arguments(Case_StringArg(args...))


export Case_TableArgs
struct Case_TableArgs <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_TableArgs(value)
        new(_FR_Case_TableArgs(value))
    end
end
export TableArgs
@inline TableArgs(args...) = arguments(Case_TableArgs(args...))


export arguments
struct arguments
    case :: Union{Case_TableArgs, Case_StringArg, Case_PositionalArgs}
end


export Case_TableConstructor
struct Case_TableConstructor <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_TableConstructor(value0, value1)
        new(_FR_Case_TableConstructor(value0,value1))
    end
end
export TableConstructor
@inline TableConstructor(args...) = table(Case_TableConstructor(args...))


export table
struct table
    case :: Union{Case_TableConstructor}
end


export Case_ElementField
struct Case_ElementField <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_ElementField(value0)
        new(_FR_Case_ElementField(value0))
    end
end
export ElementField
@inline ElementField(args...) = table_field(Case_ElementField(args...))


export Case_IndexField
struct Case_IndexField <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_IndexField(pos, value, item)
        new(_FR_Case_IndexField(pos,value,item))
    end
end
export IndexField
@inline IndexField(args...) = table_field(Case_IndexField(args...))


export Case_NameField
struct Case_NameField <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_NameField(key, value)
        new(_FR_Case_NameField(key,value))
    end
end
export NameField
@inline NameField(args...) = table_field(Case_NameField(args...))


export table_field
struct table_field
    case :: Union{Case_NameField, Case_IndexField, Case_ElementField}
end


export Case_Assignment
struct Case_Assignment <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Assignment(value0, value1, value2)
        new(_FR_Case_Assignment(value0,value1,value2))
    end
end
export Assignment
@inline Assignment(args...) = stmt(Case_Assignment(args...))


export Case_BreakStmt
struct Case_BreakStmt <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_BreakStmt(value)
        new(value)
    end
end
export BreakStmt
@inline BreakStmt(args...) = stmt(Case_BreakStmt(args...))


export Case_DoStmt
struct Case_DoStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_DoStmt(value0, value1)
        new(_FR_Case_DoStmt(value0,value1))
    end
end
export DoStmt
@inline DoStmt(args...) = stmt(Case_DoStmt(args...))


export Case_EmptyStmt
struct Case_EmptyStmt <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    function Case_EmptyStmt(value0)
        new(value0)
    end
end
export EmptyStmt
@inline EmptyStmt(args...) = stmt(Case_EmptyStmt(args...))


export Case_ExprStmt
struct Case_ExprStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_ExprStmt(value)
        new(_FR_Case_ExprStmt(value))
    end
end
export ExprStmt
@inline ExprStmt(args...) = stmt(Case_ExprStmt(args...))


export Case_ForInStmt
struct Case_ForInStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_ForInStmt(value0, value1, value2, value3)
        new(_FR_Case_ForInStmt(value0,value1,value2,value3))
    end
end
export ForInStmt
@inline ForInStmt(args...) = stmt(Case_ForInStmt(args...))


export Case_ForRangeStmt
struct Case_ForRangeStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_ForRangeStmt(value0, value1, value2, value3)
        new(_FR_Case_ForRangeStmt(value0,value1,value2,value3))
    end
end
export ForRangeStmt
@inline ForRangeStmt(args...) = stmt(Case_ForRangeStmt(args...))


export Case_GotoStmt
struct Case_GotoStmt <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    value1::Sedlex.LightToken
    function Case_GotoStmt(value0, value1)
        new(value0,value1)
    end
end
export GotoStmt
@inline GotoStmt(args...) = stmt(Case_GotoStmt(args...))


export Case_IfStmt
struct Case_IfStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_IfStmt(value0, value1, value2, value3, value4)
        new(_FR_Case_IfStmt(value0,value1,value2,value3,value4))
    end
end
export IfStmt
@inline IfStmt(args...) = stmt(Case_IfStmt(args...))


export Case_LabelStmt
struct Case_LabelStmt <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_LabelStmt(value)
        new(value)
    end
end
export LabelStmt
@inline LabelStmt(args...) = stmt(Case_LabelStmt(args...))


export Case_RepeatStmt
struct Case_RepeatStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_RepeatStmt(value0, value1, value2)
        new(_FR_Case_RepeatStmt(value0,value1,value2))
    end
end
export RepeatStmt
@inline RepeatStmt(args...) = stmt(Case_RepeatStmt(args...))


export Case_ReturnStmt
struct Case_ReturnStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_ReturnStmt(value0, value1)
        new(_FR_Case_ReturnStmt(value0,value1))
    end
end
export ReturnStmt
@inline ReturnStmt(args...) = stmt(Case_ReturnStmt(args...))


export Case_WhileStmt
struct Case_WhileStmt <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_WhileStmt(value0, value1, value2)
        new(_FR_Case_WhileStmt(value0,value1,value2))
    end
end
export WhileStmt
@inline WhileStmt(args...) = stmt(Case_WhileStmt(args...))


export stmt
struct stmt
    case :: Union{Case_WhileStmt, Case_ReturnStmt, Case_RepeatStmt, Case_LabelStmt, Case_IfStmt, Case_GotoStmt, Case_ForRangeStmt, Case_ForInStmt, Case_ExprStmt, Case_EmptyStmt, Case_DoStmt, Case_BreakStmt, Case_Assignment}
end


export Case_Attr
struct Case_Attr <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Attr(value0, value1)
        new(_FR_Case_Attr(value0,value1))
    end
end
export Attr
@inline Attr(args...) = expr(Case_Attr(args...))


export Case_Bin
struct Case_Bin <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Bin(op, l, r)
        new(_FR_Case_Bin(op,l,r))
    end
end
export Bin
@inline Bin(args...) = expr(Case_Bin(args...))


export Case_Bool
struct Case_Bool <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    value1::Bool
    function Case_Bool(value0, value1)
        new(value0,value1)
    end
end
export Bool
@inline Bool(args...) = expr(Case_Bool(args...))


export Case_CallFunc
struct Case_CallFunc <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_CallFunc(value0, value1)
        new(_FR_Case_CallFunc(value0,value1))
    end
end
export CallFunc
@inline CallFunc(args...) = expr(Case_CallFunc(args...))


export Case_CallMethod
struct Case_CallMethod <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_CallMethod(value0, value1, value2)
        new(_FR_Case_CallMethod(value0,value1,value2))
    end
end
export CallMethod
@inline CallMethod(args...) = expr(Case_CallMethod(args...))


export Case_Ellipse
struct Case_Ellipse <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    function Case_Ellipse(value0)
        new(value0)
    end
end
export Ellipse
@inline Ellipse(args...) = expr(Case_Ellipse(args...))


export Case_Exponent
struct Case_Exponent <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Exponent(value0, value1)
        new(_FR_Case_Exponent(value0,value1))
    end
end
export Exponent
@inline Exponent(args...) = expr(Case_Exponent(args...))


export Case_FuncDef
struct Case_FuncDef <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_FuncDef(pos, is_local, fname, params, body)
        new(_FR_Case_FuncDef(pos,is_local,fname,params,body))
    end
end
export FuncDef
@inline FuncDef(args...) = expr(Case_FuncDef(args...))


export Case_Index
struct Case_Index <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Index(value0, value1)
        new(_FR_Case_Index(value0,value1))
    end
end
export Index
@inline Index(args...) = expr(Case_Index(args...))


export Case_Inv
struct Case_Inv <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Inv(value0, value1)
        new(_FR_Case_Inv(value0,value1))
    end
end
export Inv
@inline Inv(args...) = expr(Case_Inv(args...))


export Case_Len
struct Case_Len <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Len(value0, value1)
        new(_FR_Case_Len(value0,value1))
    end
end
export Len
@inline Len(args...) = expr(Case_Len(args...))


export Case_Neg
struct Case_Neg <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Neg(value0, value1)
        new(_FR_Case_Neg(value0,value1))
    end
end
export Neg
@inline Neg(args...) = expr(Case_Neg(args...))


export Case_NestedExp
struct Case_NestedExp <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_NestedExp(value0, value1)
        new(_FR_Case_NestedExp(value0,value1))
    end
end
export NestedExp
@inline NestedExp(args...) = expr(Case_NestedExp(args...))


export Case_Nil
struct Case_Nil <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_Nil(value)
        new(value)
    end
end
export Nil
@inline Nil(args...) = expr(Case_Nil(args...))


export Case_Not
struct Case_Not <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_Not(value0, value1)
        new(_FR_Case_Not(value0,value1))
    end
end
export Not
@inline Not(args...) = expr(Case_Not(args...))


export Case_Num
struct Case_Num <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    function Case_Num(value0)
        new(value0)
    end
end
export Num
@inline Num(args...) = expr(Case_Num(args...))


export Case_String
struct Case_String <: FrontendForFreeParsing.AbstractUnionCase 
    value0::Sedlex.LightToken
    function Case_String(value0)
        new(value0)
    end
end
export String
@inline String(args...) = expr(Case_String(args...))


export Case_TableExpr
struct Case_TableExpr <: FrontendForFreeParsing.AbstractUnionCase 
    value0::table
    function Case_TableExpr(value0)
        new(value0)
    end
end
export TableExpr
@inline TableExpr(args...) = expr(Case_TableExpr(args...))


export Case_UnsolvedBin
struct Case_UnsolvedBin <: FrontendForFreeParsing.AbstractUnionCase 
_unbox::Any
    function Case_UnsolvedBin(value)
        new(_FR_Case_UnsolvedBin(value))
    end
end
export UnsolvedBin
@inline UnsolvedBin(args...) = expr(Case_UnsolvedBin(args...))


export Case_Var
struct Case_Var <: FrontendForFreeParsing.AbstractUnionCase 
    value::Sedlex.LightToken
    function Case_Var(value)
        new(value)
    end
end
export Var
@inline Var(args...) = expr(Case_Var(args...))


export expr
struct expr
    case :: Union{Case_Var, Case_UnsolvedBin, Case_TableExpr, Case_String, Case_Num, Case_Not, Case_Nil, Case_NestedExp, Case_Neg, Case_Len, Case_Inv, Case_Index, Case_FuncDef, Case_Exponent, Case_Ellipse, Case_CallMethod, Case_CallFunc, Case_Bool, Case_Bin, Case_Attr}
end


export block
struct block <: FrontendForFreeParsing.AbstractUnionCase
    suite::Vector{stmt}
    ret::maybe{stmt}
end


export range
struct range <: FrontendForFreeParsing.AbstractUnionCase
    low::expr
    high::expr
    step::maybe{expr}
end


export if_elseif
struct if_elseif <: FrontendForFreeParsing.AbstractUnionCase
_unbox::Any
function if_elseif(pos, cond, elif_body)
    new(_FR_if_elseif(pos,cond,elif_body))
end
end


export if_else
struct if_else <: FrontendForFreeParsing.AbstractUnionCase
_unbox::Any
function if_else(pos, else_body)
    new(_FR_if_else(pos,else_body))
end
end


export params
struct params <: FrontendForFreeParsing.AbstractUnionCase
    names::Vector{Sedlex.LightToken}
    vararg::maybe{Sedlex.LightToken}
end




struct _FR_Case_DotName <: FrontendForFreeParsing.AbstractForwardRef
    value0::funcname
    value1::Sedlex.LightToken
end
@inline Base.getproperty(this::Case_DotName, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_DotName, name)
@inline Base.propertynames(::Union{Case_DotName,Type{Case_DotName}}) = fieldnames(_FR_Case_DotName)


struct _FR_Case_MethodName <: FrontendForFreeParsing.AbstractForwardRef
    value0::funcname
    value1::Sedlex.LightToken
end
@inline Base.getproperty(this::Case_MethodName, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_MethodName, name)
@inline Base.propertynames(::Union{Case_MethodName,Type{Case_MethodName}}) = fieldnames(_FR_Case_MethodName)


struct _FR_Case_PositionalArgs <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::Vector{expr}
end
@inline Base.getproperty(this::Case_PositionalArgs, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_PositionalArgs, name)
@inline Base.propertynames(::Union{Case_PositionalArgs,Type{Case_PositionalArgs}}) = fieldnames(_FR_Case_PositionalArgs)


struct _FR_Case_TableArgs <: FrontendForFreeParsing.AbstractForwardRef
    value::table
end
@inline Base.getproperty(this::Case_TableArgs, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_TableArgs, name)
@inline Base.propertynames(::Union{Case_TableArgs,Type{Case_TableArgs}}) = fieldnames(_FR_Case_TableArgs)


struct _FR_Case_TableConstructor <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::Vector{table_field}
end
@inline Base.getproperty(this::Case_TableConstructor, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_TableConstructor, name)
@inline Base.propertynames(::Union{Case_TableConstructor,Type{Case_TableConstructor}}) = fieldnames(_FR_Case_TableConstructor)


struct _FR_Case_ElementField <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
end
@inline Base.getproperty(this::Case_ElementField, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_ElementField, name)
@inline Base.propertynames(::Union{Case_ElementField,Type{Case_ElementField}}) = fieldnames(_FR_Case_ElementField)


struct _FR_Case_IndexField <: FrontendForFreeParsing.AbstractForwardRef
    pos::Sedlex.LightToken
    value::expr
    item::expr
end
@inline Base.getproperty(this::Case_IndexField, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_IndexField, name)
@inline Base.propertynames(::Union{Case_IndexField,Type{Case_IndexField}}) = fieldnames(_FR_Case_IndexField)


struct _FR_Case_NameField <: FrontendForFreeParsing.AbstractForwardRef
    key::Sedlex.LightToken
    value::expr
end
@inline Base.getproperty(this::Case_NameField, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_NameField, name)
@inline Base.propertynames(::Union{Case_NameField,Type{Case_NameField}}) = fieldnames(_FR_Case_NameField)


struct _FR_Case_Assignment <: FrontendForFreeParsing.AbstractForwardRef
    value0::Bool
    value1::Vector{expr}
    value2::maybe{Vector{expr}}
end
@inline Base.getproperty(this::Case_Assignment, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Assignment, name)
@inline Base.propertynames(::Union{Case_Assignment,Type{Case_Assignment}}) = fieldnames(_FR_Case_Assignment)


struct _FR_Case_DoStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::block
end
@inline Base.getproperty(this::Case_DoStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_DoStmt, name)
@inline Base.propertynames(::Union{Case_DoStmt,Type{Case_DoStmt}}) = fieldnames(_FR_Case_DoStmt)


struct _FR_Case_ExprStmt <: FrontendForFreeParsing.AbstractForwardRef
    value::expr
end
@inline Base.getproperty(this::Case_ExprStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_ExprStmt, name)
@inline Base.propertynames(::Union{Case_ExprStmt,Type{Case_ExprStmt}}) = fieldnames(_FR_Case_ExprStmt)


struct _FR_Case_ForInStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::Vector{Sedlex.LightToken}
    value2::Vector{expr}
    value3::block
end
@inline Base.getproperty(this::Case_ForInStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_ForInStmt, name)
@inline Base.propertynames(::Union{Case_ForInStmt,Type{Case_ForInStmt}}) = fieldnames(_FR_Case_ForInStmt)


struct _FR_Case_ForRangeStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::Sedlex.LightToken
    value2::range
    value3::block
end
@inline Base.getproperty(this::Case_ForRangeStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_ForRangeStmt, name)
@inline Base.propertynames(::Union{Case_ForRangeStmt,Type{Case_ForRangeStmt}}) = fieldnames(_FR_Case_ForRangeStmt)


struct _FR_Case_IfStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
    value2::block
    value3::Vector{if_elseif}
    value4::maybe{if_else}
end
@inline Base.getproperty(this::Case_IfStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_IfStmt, name)
@inline Base.propertynames(::Union{Case_IfStmt,Type{Case_IfStmt}}) = fieldnames(_FR_Case_IfStmt)


struct _FR_Case_RepeatStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::block
    value2::expr
end
@inline Base.getproperty(this::Case_RepeatStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_RepeatStmt, name)
@inline Base.propertynames(::Union{Case_RepeatStmt,Type{Case_RepeatStmt}}) = fieldnames(_FR_Case_RepeatStmt)


struct _FR_Case_ReturnStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::Vector{expr}
end
@inline Base.getproperty(this::Case_ReturnStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_ReturnStmt, name)
@inline Base.propertynames(::Union{Case_ReturnStmt,Type{Case_ReturnStmt}}) = fieldnames(_FR_Case_ReturnStmt)


struct _FR_Case_WhileStmt <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
    value2::block
end
@inline Base.getproperty(this::Case_WhileStmt, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_WhileStmt, name)
@inline Base.propertynames(::Union{Case_WhileStmt,Type{Case_WhileStmt}}) = fieldnames(_FR_Case_WhileStmt)


struct _FR_Case_Attr <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
    value1::Sedlex.LightToken
end
@inline Base.getproperty(this::Case_Attr, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Attr, name)
@inline Base.propertynames(::Union{Case_Attr,Type{Case_Attr}}) = fieldnames(_FR_Case_Attr)


struct _FR_Case_Bin <: FrontendForFreeParsing.AbstractForwardRef
    op::Sedlex.LightToken
    l::expr
    r::expr
end
@inline Base.getproperty(this::Case_Bin, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Bin, name)
@inline Base.propertynames(::Union{Case_Bin,Type{Case_Bin}}) = fieldnames(_FR_Case_Bin)


struct _FR_Case_CallFunc <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
    value1::arguments
end
@inline Base.getproperty(this::Case_CallFunc, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_CallFunc, name)
@inline Base.propertynames(::Union{Case_CallFunc,Type{Case_CallFunc}}) = fieldnames(_FR_Case_CallFunc)


struct _FR_Case_CallMethod <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
    value1::Sedlex.LightToken
    value2::arguments
end
@inline Base.getproperty(this::Case_CallMethod, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_CallMethod, name)
@inline Base.propertynames(::Union{Case_CallMethod,Type{Case_CallMethod}}) = fieldnames(_FR_Case_CallMethod)


struct _FR_Case_Exponent <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
    value1::expr
end
@inline Base.getproperty(this::Case_Exponent, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Exponent, name)
@inline Base.propertynames(::Union{Case_Exponent,Type{Case_Exponent}}) = fieldnames(_FR_Case_Exponent)


struct _FR_Case_FuncDef <: FrontendForFreeParsing.AbstractForwardRef
    pos::Sedlex.LightToken
    is_local::Bool
    fname::maybe{funcname}
    params::maybe{params}
    body::block
end
@inline Base.getproperty(this::Case_FuncDef, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_FuncDef, name)
@inline Base.propertynames(::Union{Case_FuncDef,Type{Case_FuncDef}}) = fieldnames(_FR_Case_FuncDef)


struct _FR_Case_Index <: FrontendForFreeParsing.AbstractForwardRef
    value0::expr
    value1::expr
end
@inline Base.getproperty(this::Case_Index, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Index, name)
@inline Base.propertynames(::Union{Case_Index,Type{Case_Index}}) = fieldnames(_FR_Case_Index)


struct _FR_Case_Inv <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
end
@inline Base.getproperty(this::Case_Inv, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Inv, name)
@inline Base.propertynames(::Union{Case_Inv,Type{Case_Inv}}) = fieldnames(_FR_Case_Inv)


struct _FR_Case_Len <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
end
@inline Base.getproperty(this::Case_Len, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Len, name)
@inline Base.propertynames(::Union{Case_Len,Type{Case_Len}}) = fieldnames(_FR_Case_Len)


struct _FR_Case_Neg <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
end
@inline Base.getproperty(this::Case_Neg, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Neg, name)
@inline Base.propertynames(::Union{Case_Neg,Type{Case_Neg}}) = fieldnames(_FR_Case_Neg)


struct _FR_Case_NestedExp <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
end
@inline Base.getproperty(this::Case_NestedExp, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_NestedExp, name)
@inline Base.propertynames(::Union{Case_NestedExp,Type{Case_NestedExp}}) = fieldnames(_FR_Case_NestedExp)


struct _FR_Case_Not <: FrontendForFreeParsing.AbstractForwardRef
    value0::Sedlex.LightToken
    value1::expr
end
@inline Base.getproperty(this::Case_Not, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_Not, name)
@inline Base.propertynames(::Union{Case_Not,Type{Case_Not}}) = fieldnames(_FR_Case_Not)


struct _FR_Case_UnsolvedBin <: FrontendForFreeParsing.AbstractForwardRef
    value::Vector{op{expr}}
end
@inline Base.getproperty(this::Case_UnsolvedBin, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_Case_UnsolvedBin, name)
@inline Base.propertynames(::Union{Case_UnsolvedBin,Type{Case_UnsolvedBin}}) = fieldnames(_FR_Case_UnsolvedBin)


struct _FR_if_elseif <: FrontendForFreeParsing.AbstractForwardRef
    pos::Sedlex.LightToken
    cond::expr
    elif_body::block
end
@inline Base.getproperty(this::if_elseif, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_if_elseif, name)
@inline Base.propertynames(::Union{if_elseif,Type{if_elseif}}) = fieldnames(_FR_if_elseif)


struct _FR_if_else <: FrontendForFreeParsing.AbstractForwardRef
    pos::Sedlex.LightToken
    else_body::block
end
@inline Base.getproperty(this::if_else, name::Symbol) = getfield(getfield(this, :_unbox) :: _FR_if_else, name)
@inline Base.propertynames(::Union{if_else,Type{if_else}}) = fieldnames(_FR_if_else)


function binop_19(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_18(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_17(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_16(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_15(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_14(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_13(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_12(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_11(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_10(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_9(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_8(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_7(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_6(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_5(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_4(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_3(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_2(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_1(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function binop_0(__tbnf_SLOTS_1)::op{expr}
    mkOperator(__tbnf_SLOTS_1)
end
function fieldsep_1(__tbnf_SLOTS_1)::Int
    0
end
function fieldsep_0(__tbnf_SLOTS_1)::Int
    0
end
function field_2(__tbnf_SLOTS_1)::table_field
    ElementField(__tbnf_SLOTS_1)
end
function field_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::table_field
    NameField(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function field_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5)::table_field
    IndexField(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_5)
end
function funcname_2(__tbnf_SLOTS_1)::funcname
    VarName(__tbnf_SLOTS_1)
end
function funcname_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::funcname
    MethodName(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function funcname_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::funcname
    DotName(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function tableconstructor_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::table
    TableConstructor(__tbnf_SLOTS_1, table_field[])
end
function tableconstructor_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::table
    TableConstructor(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function opt_40_fieldsep_41__1()::maybe{Int}
    none()
end
function opt_40_fieldsep_41__0(__tbnf_SLOTS_1)::maybe{Int}
    some(__tbnf_SLOTS_1)
end
function nempty_seplist_40_fieldsep_44_field_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{table_field}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function nempty_seplist_40_fieldsep_44_field_41__0(__tbnf_SLOTS_1)::Vector{table_field}
    table_field[__tbnf_SLOTS_1]
end
function parlist_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::params
    params(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function parlist_0(__tbnf_SLOTS_1)::params
    params(Sedlex.LightToken[], some(__tbnf_SLOTS_1))
end
function nempty_seplist_40__34__44__34__44__60_NAME_62__41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{Sedlex.LightToken}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function nempty_seplist_40__34__44__34__44__60_NAME_62__41__0(__tbnf_SLOTS_1)::Vector{Sedlex.LightToken}
    Sedlex.LightToken[__tbnf_SLOTS_1]
end
function varargs_1()::maybe{Sedlex.LightToken}
    none()
end
function varargs_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::maybe{Sedlex.LightToken}
    some(__tbnf_SLOTS_2)
end
function functiondef_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6, __tbnf_SLOTS_7)::expr
    FuncDef(__tbnf_SLOTS_1, false, __tbnf_SLOTS_2, __tbnf_SLOTS_4, __tbnf_SLOTS_6)
end
function opt_40_parlist_41__1()::maybe{params}
    none()
end
function opt_40_parlist_41__0(__tbnf_SLOTS_1)::maybe{params}
    some(__tbnf_SLOTS_1)
end
function opt_40_funcname_41__1()::maybe{funcname}
    none()
end
function opt_40_funcname_41__0(__tbnf_SLOTS_1)::maybe{funcname}
    some(__tbnf_SLOTS_1)
end
function args_2(__tbnf_SLOTS_1)::arguments
    StringArg(__tbnf_SLOTS_1)
end
function args_1(__tbnf_SLOTS_1)::arguments
    TableArgs(__tbnf_SLOTS_1)
end
function args_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::arguments
    PositionalArgs(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function seplist_40__34__44__34__44_exp_41__0(__tbnf_SLOTS_1)::Vector{expr}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_seplist_40__34__44__34__44_exp_41__41__1(__tbnf_SLOTS_1)::Vector{expr}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_seplist_40__34__44__34__44_exp_41__41__0()::Vector{expr}
    expr[]
end
function nempty_seplist_40__34__44__34__44_exp_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{expr}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function nempty_seplist_40__34__44__34__44_exp_41__0(__tbnf_SLOTS_1)::Vector{expr}
    expr[__tbnf_SLOTS_1]
end
function atom_8(__tbnf_SLOTS_1)::expr
    TableExpr(__tbnf_SLOTS_1)
end
function atom_7(__tbnf_SLOTS_1)::expr
    __tbnf_SLOTS_1
end
function atom_6(__tbnf_SLOTS_1)::expr
    Ellipse(__tbnf_SLOTS_1)
end
function atom_5(__tbnf_SLOTS_1)::expr
    String(__tbnf_SLOTS_1)
end
function atom_4(__tbnf_SLOTS_1)::expr
    String(__tbnf_SLOTS_1)
end
function atom_3(__tbnf_SLOTS_1)::expr
    Num(__tbnf_SLOTS_1)
end
function atom_2(__tbnf_SLOTS_1)::expr
    Bool(__tbnf_SLOTS_1, true)
end
function atom_1(__tbnf_SLOTS_1)::expr
    Bool(__tbnf_SLOTS_1, false)
end
function atom_0(__tbnf_SLOTS_1)::expr
    Nil(__tbnf_SLOTS_1)
end
function prefixexp_6(__tbnf_SLOTS_1)::expr
    __tbnf_SLOTS_1
end
function prefixexp_5(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::expr
    Attr(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function prefixexp_4(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::expr
    Index(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function prefixexp_3(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::expr
    CallMethod(__tbnf_SLOTS_1, __tbnf_SLOTS_3, __tbnf_SLOTS_4)
end
function prefixexp_2(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::expr
    CallFunc(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function prefixexp_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::expr
    NestedExp(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function prefixexp_0(__tbnf_SLOTS_1)::expr
    Var(__tbnf_SLOTS_1)
end
function exponent_1(__tbnf_SLOTS_1)::expr
    __tbnf_SLOTS_1
end
function exponent_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::expr
    Exponent(__tbnf_SLOTS_1, __tbnf_SLOTS_3)
end
function unaryexp_4(__tbnf_SLOTS_1)::expr
    __tbnf_SLOTS_1
end
function unaryexp_3(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::expr
    Not(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function unaryexp_2(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::expr
    Inv(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function unaryexp_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::expr
    Neg(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function unaryexp_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::expr
    Len(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function binoperand_0(__tbnf_SLOTS_1)::op{expr}
    mkOperand(__tbnf_SLOTS_1)
end
function binseq_1(__tbnf_SLOTS_1)::Vector{op{expr}}
    op{expr}[__tbnf_SLOTS_1]
end
function binseq_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::Vector{op{expr}}
    appendList(appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_2), __tbnf_SLOTS_3)
end
function binexp_0(__tbnf_SLOTS_1)::expr
    mkBinOpSeq(__tbnf_SLOTS_1, Bin, UnsolvedBin)
end
function exp_0(__tbnf_SLOTS_1)::expr
    let _ = 0
        __tbnf_SLOTS_1
    end
end
function else_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::if_else
    if_else(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function elseif_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::if_elseif
    if_elseif(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4)
end
function range_tail_1()::maybe{expr}
    none()
end
function range_tail_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::maybe{expr}
    some(__tbnf_SLOTS_2)
end
function range_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::range
    range(__tbnf_SLOTS_1, __tbnf_SLOTS_3, __tbnf_SLOTS_4)
end
function opt_assign_rhs_1()::maybe{Vector{expr}}
    none()
end
function opt_assign_rhs_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::maybe{Vector{expr}}
    some(__tbnf_SLOTS_2)
end
function stat_13(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::stmt
    Assignment(true, listMap(__tbnf_SLOTS_2, Var), __tbnf_SLOTS_3)
end
function stat_12(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6, __tbnf_SLOTS_7, __tbnf_SLOTS_8)::stmt
    ExprStmt(FuncDef(__tbnf_SLOTS_1, true, some(__tbnf_SLOTS_3), __tbnf_SLOTS_5, __tbnf_SLOTS_7))
end
function stat_11(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6, __tbnf_SLOTS_7)::stmt
    ForInStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4, __tbnf_SLOTS_6)
end
function stat_10(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6, __tbnf_SLOTS_7)::stmt
    ForRangeStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4, __tbnf_SLOTS_6)
end
function stat_9(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6, __tbnf_SLOTS_7)::stmt
    IfStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4, __tbnf_SLOTS_5, __tbnf_SLOTS_6)
end
function stat_8(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4)::stmt
    RepeatStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4)
end
function stat_7(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3, __tbnf_SLOTS_4, __tbnf_SLOTS_5)::stmt
    WhileStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_4)
end
function stat_6(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::stmt
    DoStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function stat_5(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::stmt
    GotoStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function stat_4(__tbnf_SLOTS_1)::stmt
    BreakStmt(__tbnf_SLOTS_1)
end
function stat_3(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::stmt
    LabelStmt(__tbnf_SLOTS_2)
end
function stat_2(__tbnf_SLOTS_1)::stmt
    ExprStmt(__tbnf_SLOTS_1)
end
function stat_1(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::stmt
    Assignment(false, __tbnf_SLOTS_1, some(__tbnf_SLOTS_3))
end
function stat_0(__tbnf_SLOTS_1)::stmt
    EmptyStmt(__tbnf_SLOTS_1)
end
function opt_40_else_41__1()::maybe{if_else}
    none()
end
function opt_40_else_41__0(__tbnf_SLOTS_1)::maybe{if_else}
    some(__tbnf_SLOTS_1)
end
function list_40_elseif_41__0(__tbnf_SLOTS_1)::Vector{if_elseif}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_list_40_elseif_41__41__1(__tbnf_SLOTS_1)::Vector{if_elseif}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_list_40_elseif_41__41__0()::Vector{if_elseif}
    if_elseif[]
end
function nempty_list_40_elseif_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::Vector{if_elseif}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function nempty_list_40_elseif_41__0(__tbnf_SLOTS_1)::Vector{if_elseif}
    if_elseif[__tbnf_SLOTS_1]
end
function retstat_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2, __tbnf_SLOTS_3)::stmt
    ReturnStmt(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function opt_40__34__59__34__41__1()::maybe{Sedlex.LightToken}
    none()
end
function opt_40__34__59__34__41__0(__tbnf_SLOTS_1)::maybe{Sedlex.LightToken}
    some(__tbnf_SLOTS_1)
end
function block_0(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::block
    block(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function opt_40_retstat_41__1()::maybe{stmt}
    none()
end
function opt_40_retstat_41__0(__tbnf_SLOTS_1)::maybe{stmt}
    some(__tbnf_SLOTS_1)
end
function list_40_stat_41__0(__tbnf_SLOTS_1)::Vector{stmt}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_list_40_stat_41__41__1(__tbnf_SLOTS_1)::Vector{stmt}
    __tbnf_SLOTS_1
end
function allow_empty_40_nempty_list_40_stat_41__41__0()::Vector{stmt}
    stmt[]
end
function nempty_list_40_stat_41__1(__tbnf_SLOTS_1, __tbnf_SLOTS_2)::Vector{stmt}
    appendList(__tbnf_SLOTS_1, __tbnf_SLOTS_2)
end
function nempty_list_40_stat_41__0(__tbnf_SLOTS_1)::Vector{stmt}
    stmt[__tbnf_SLOTS_1]
end
function start_0(__tbnf_SLOTS_1)::block
    __tbnf_SLOTS_1
end
