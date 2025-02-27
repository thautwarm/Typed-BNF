grammar Lua;
options { language = CSharp; }
@parser::members {
public static parameters paramsv (MyList<IToken> names,maybe<IToken> vararg)
{
    return (parameters) new parameters(names,vararg);
}
public static if_else if_else (IToken pos,block else_body)
{
    return (if_else) new if_else(pos,else_body);
}
public static if_elseif if_elseif (IToken pos,expr cond,block elif_body)
{
    return (if_elseif) new if_elseif(pos,cond,elif_body);
}
public static range range (expr low,expr high,maybe<expr> step)
{
    return (range) new range(low,high,step);
}
public static block block (MyList<stmt> suite,maybe<stmt> ret)
{
    return (block) new block(suite,ret);
}
public static expr Var (IToken value)
{
    return (expr) new Var(value);
}
public static expr UnsolvedBin (MyList<Op<expr>> value)
{
    return (expr) new UnsolvedBin(value);
}
public static expr TableExpr (table value0)
{
    return (expr) new TableExpr(value0);
}
public static expr String (IToken value0)
{
    return (expr) new String(value0);
}
public static expr Num (IToken value0)
{
    return (expr) new Num(value0);
}
public static expr Not (IToken value0,expr value1)
{
    return (expr) new Not(value0,value1);
}
public static expr Nil (IToken value)
{
    return (expr) new Nil(value);
}
public static expr NestedExp (IToken value0,expr value1)
{
    return (expr) new NestedExp(value0,value1);
}
public static expr Neg (IToken value0,expr value1)
{
    return (expr) new Neg(value0,value1);
}
public static expr Len (IToken value0,expr value1)
{
    return (expr) new Len(value0,value1);
}
public static expr Inv (IToken value0,expr value1)
{
    return (expr) new Inv(value0,value1);
}
public static expr Index (expr value0,expr value1)
{
    return (expr) new Index(value0,value1);
}
public static expr FuncDef (IToken pos,bool is_local,maybe<funcname> fname,maybe<parameters> parameters,block body)
{
    return (expr) new FuncDef(pos,is_local,fname,parameters,body);
}
public static expr Exponent (expr value0,expr value1)
{
    return (expr) new Exponent(value0,value1);
}
public static expr Ellipse (IToken value0)
{
    return (expr) new Ellipse(value0);
}
public static expr CallMethod (expr value0,IToken value1,arguments value2)
{
    return (expr) new CallMethod(value0,value1,value2);
}
public static expr CallFunc (expr value0,arguments value1)
{
    return (expr) new CallFunc(value0,value1);
}
public static expr Bool (IToken value0,bool value1)
{
    return (expr) new Bool(value0,value1);
}
public static expr Bin (IToken op,expr l,expr r)
{
    return (expr) new Bin(op,l,r);
}
public static expr Attr (expr value0,IToken value1)
{
    return (expr) new Attr(value0,value1);
}
public static stmt WhileStmt (IToken value0,expr value1,block value2)
{
    return (stmt) new WhileStmt(value0,value1,value2);
}
public static stmt ReturnStmt (IToken value0,MyList<expr> value1)
{
    return (stmt) new ReturnStmt(value0,value1);
}
public static stmt RepeatStmt (IToken value0,block value1,expr value2)
{
    return (stmt) new RepeatStmt(value0,value1,value2);
}
public static stmt LabelStmt (IToken value)
{
    return (stmt) new LabelStmt(value);
}
public static stmt IfStmt (IToken value0,expr value1,block value2,MyList<if_elseif> value3,maybe<if_else> value4)
{
    return (stmt) new IfStmt(value0,value1,value2,value3,value4);
}
public static stmt GotoStmt (IToken value0,IToken value1)
{
    return (stmt) new GotoStmt(value0,value1);
}
public static stmt ForRangeStmt (IToken value0,IToken value1,range value2,block value3)
{
    return (stmt) new ForRangeStmt(value0,value1,value2,value3);
}
public static stmt ForInStmt (IToken value0,MyList<IToken> value1,MyList<expr> value2,block value3)
{
    return (stmt) new ForInStmt(value0,value1,value2,value3);
}
public static stmt ExprStmt (expr value)
{
    return (stmt) new ExprStmt(value);
}
public static stmt EmptyStmt (IToken value0)
{
    return (stmt) new EmptyStmt(value0);
}
public static stmt DoStmt (IToken value0,block value1)
{
    return (stmt) new DoStmt(value0,value1);
}
public static stmt BreakStmt (IToken value)
{
    return (stmt) new BreakStmt(value);
}
public static stmt Assignment (bool value0,MyList<expr> value1,maybe<MyList<expr>> value2)
{
    return (stmt) new Assignment(value0,value1,value2);
}
public static table_field NameField (IToken key,expr value)
{
    return (table_field) new NameField(key,value);
}
public static table_field IndexField (IToken pos,expr value,expr item)
{
    return (table_field) new IndexField(pos,value,item);
}
public static table_field ElementField (expr value0)
{
    return (table_field) new ElementField(value0);
}
public static table TableConstructor (IToken value0,MyList<table_field> value1)
{
    return (table) new TableConstructor(value0,value1);
}
public static arguments TableArgs (table value)
{
    return (arguments) new TableArgs(value);
}
public static arguments StringArg (IToken value)
{
    return (arguments) new StringArg(value);
}
public static arguments PositionalArgs (IToken value0,MyList<expr> value1)
{
    return (arguments) new PositionalArgs(value0,value1);
}
public static funcname VarName (IToken value)
{
    return (funcname) new VarName(value);
}
public static funcname MethodName (funcname value0,IToken value1)
{
    return (funcname) new MethodName(value0,value1);
}
public static funcname DotName (funcname value0,IToken value1)
{
    return (funcname) new DotName(value0,value1);
}
}
start returns [block result]: v=start__y_ EOF { $result = _localctx.v.result; };
start__y_ returns [block result]
: start__y__0__1=block { $result = _localctx.start__y__0__1.result;
            }
;
nempty_list_o_stat_p_ returns [MyList<stmt> result]
: nempty_list_o_stat_p__0__1=stat { $result = new MyList<stmt> { _localctx.nempty_list_o_stat_p__0__1.result };
            }
| nempty_list_o_stat_p__1__1=nempty_list_o_stat_p_ nempty_list_o_stat_p__1__2=stat { $result = (MyList<stmt>) appendList<stmt>((MyList<stmt>) _localctx.nempty_list_o_stat_p__1__1.result, (stmt) _localctx.nempty_list_o_stat_p__1__2.result);
            }
;
allow_empty_o_nempty_list_o_stat_p__p_ returns [MyList<stmt> result]
:  { $result = new MyList<stmt> {  };
            }
| allow_empty_o_nempty_list_o_stat_p__p__1__1=nempty_list_o_stat_p_ { $result = _localctx.allow_empty_o_nempty_list_o_stat_p__p__1__1.result;
            }
;
list_o_stat_p_ returns [MyList<stmt> result]
: list_o_stat_p__0__1=allow_empty_o_nempty_list_o_stat_p__p_ { $result = _localctx.list_o_stat_p__0__1.result;
            }
;
opt_o_retstat_p_ returns [maybe<stmt> result]
: opt_o_retstat_p__0__1=retstat { $result = (maybe<stmt>) some<stmt>((stmt) _localctx.opt_o_retstat_p__0__1.result);
            }
|  { $result = (maybe<stmt>) none<stmt>();
            }
;
block returns [block result]
: block_0__1=list_o_stat_p_ block_0__2=opt_o_retstat_p_ { $result = (block) block((MyList<stmt>) _localctx.block_0__1.result, (maybe<stmt>) _localctx.block_0__2.result);
            }
;
opt_o__i__h__i__p_ returns [maybe<IToken> result]
: opt_o__i__h__i__p__0__1=';' { $result = (maybe<IToken>) some<IToken>((IToken) _localctx.opt_o__i__h__i__p__0__1);
            }
|  { $result = (maybe<IToken>) none<IToken>();
            }
;
retstat returns [stmt result]
: retstat_0__1='return' retstat_0__2=seplist_o__i__s__i__s_exp_p_ opt_o__i__h__i__p_ { $result = (stmt) ReturnStmt((IToken) _localctx.retstat_0__1, (MyList<expr>) _localctx.retstat_0__2.result);
            }
;
nempty_list_o_elseif_p_ returns [MyList<if_elseif> result]
: nempty_list_o_elseif_p__0__1=elseif { $result = new MyList<if_elseif> { _localctx.nempty_list_o_elseif_p__0__1.result };
            }
| nempty_list_o_elseif_p__1__1=nempty_list_o_elseif_p_ nempty_list_o_elseif_p__1__2=elseif { $result = (MyList<if_elseif>) appendList<if_elseif>((MyList<if_elseif>) _localctx.nempty_list_o_elseif_p__1__1.result, (if_elseif) _localctx.nempty_list_o_elseif_p__1__2.result);
            }
;
allow_empty_o_nempty_list_o_elseif_p__p_ returns [MyList<if_elseif> result]
:  { $result = new MyList<if_elseif> {  };
            }
| allow_empty_o_nempty_list_o_elseif_p__p__1__1=nempty_list_o_elseif_p_ { $result = _localctx.allow_empty_o_nempty_list_o_elseif_p__p__1__1.result;
            }
;
list_o_elseif_p_ returns [MyList<if_elseif> result]
: list_o_elseif_p__0__1=allow_empty_o_nempty_list_o_elseif_p__p_ { $result = _localctx.list_o_elseif_p__0__1.result;
            }
;
opt_o_else_p_ returns [maybe<if_else> result]
: opt_o_else_p__0__1=else__x_ { $result = (maybe<if_else>) some<if_else>((if_else) _localctx.opt_o_else_p__0__1.result);
            }
|  { $result = (maybe<if_else>) none<if_else>();
            }
;
stat returns [stmt result]
: stat_0__1=';' { $result = (stmt) EmptyStmt((IToken) _localctx.stat_0__1);
            }
| stat_1__1=nempty_seplist_o__i__s__i__s_exp_p_ '=' stat_1__3=nempty_seplist_o__i__s__i__s_exp_p_ { $result = (stmt) Assignment((bool) false, (MyList<expr>) _localctx.stat_1__1.result, (maybe<MyList<expr>>) (maybe<MyList<expr>>) some<MyList<expr>>((MyList<expr>) _localctx.stat_1__3.result));
            }
| stat_2__1=exp { $result = (stmt) ExprStmt((expr) _localctx.stat_2__1.result);
            }
| '::' stat_3__2=NAME '::' { $result = (stmt) LabelStmt((IToken) _localctx.stat_3__2);
            }
| stat_4__1='break' { $result = (stmt) BreakStmt((IToken) _localctx.stat_4__1);
            }
| stat_5__1='goto' stat_5__2=NAME { $result = (stmt) GotoStmt((IToken) _localctx.stat_5__1, (IToken) _localctx.stat_5__2);
            }
| stat_6__1='do' stat_6__2=block 'end' { $result = (stmt) DoStmt((IToken) _localctx.stat_6__1, (block) _localctx.stat_6__2.result);
            }
| stat_7__1='while' stat_7__2=exp 'do' stat_7__4=block 'end' { $result = (stmt) WhileStmt((IToken) _localctx.stat_7__1, (expr) _localctx.stat_7__2.result, (block) _localctx.stat_7__4.result);
            }
| stat_8__1='repeat' stat_8__2=block 'until' stat_8__4=exp { $result = (stmt) RepeatStmt((IToken) _localctx.stat_8__1, (block) _localctx.stat_8__2.result, (expr) _localctx.stat_8__4.result);
            }
| stat_9__1='if' stat_9__2=exp 'then' stat_9__4=block stat_9__5=list_o_elseif_p_ stat_9__6=opt_o_else_p_ 'end' { $result = (stmt) IfStmt((IToken) _localctx.stat_9__1, (expr) _localctx.stat_9__2.result, (block) _localctx.stat_9__4.result, (MyList<if_elseif>) _localctx.stat_9__5.result, (maybe<if_else>) _localctx.stat_9__6.result);
            }
| stat_10__1='for' stat_10__2=NAME '=' stat_10__4=range 'do' stat_10__6=block 'end' { $result = (stmt) ForRangeStmt((IToken) _localctx.stat_10__1, (IToken) _localctx.stat_10__2, (range) _localctx.stat_10__4.result, (block) _localctx.stat_10__6.result);
            }
| stat_11__1='for' stat_11__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ 'in' stat_11__4=nempty_seplist_o__i__s__i__s_exp_p_ 'do' stat_11__6=block 'end' { $result = (stmt) ForInStmt((IToken) _localctx.stat_11__1, (MyList<IToken>) _localctx.stat_11__2.result, (MyList<expr>) _localctx.stat_11__4.result, (block) _localctx.stat_11__6.result);
            }
| stat_12__1='local' 'function' stat_12__3=funcname '(' stat_12__5=opt_o_parlist_p_ ')' stat_12__7=block 'end' { $result = (stmt) ExprStmt((expr) (expr) FuncDef((IToken) _localctx.stat_12__1, (bool) true, (maybe<funcname>) (maybe<funcname>) some<funcname>((funcname) _localctx.stat_12__3.result), (maybe<parameters>) _localctx.stat_12__5.result, (block) _localctx.stat_12__7.result));
            }
| 'local' stat_13__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ stat_13__3=opt_assign_rhs { $result = (stmt) Assignment((bool) true, (MyList<expr>) (MyList<expr>) listMap<IToken, expr>((MyList<IToken>) _localctx.stat_13__2.result, (System.Func<IToken, expr>) Var), (maybe<MyList<expr>>) _localctx.stat_13__3.result);
            }
;
opt_assign_rhs returns [maybe<MyList<expr>> result]
: '=' opt_assign_rhs_0__2=nempty_seplist_o__i__s__i__s_exp_p_ { $result = (maybe<MyList<expr>>) some<MyList<expr>>((MyList<expr>) _localctx.opt_assign_rhs_0__2.result);
            }
|  { $result = (maybe<MyList<expr>>) none<MyList<expr>>();
            }
;
range returns [range result]
: range_0__1=exp ',' range_0__3=exp range_0__4=range_tail { $result = (range) range((expr) _localctx.range_0__1.result, (expr) _localctx.range_0__3.result, (maybe<expr>) _localctx.range_0__4.result);
            }
;
range_tail returns [maybe<expr> result]
: ',' range_tail_0__2=exp { $result = (maybe<expr>) some<expr>((expr) _localctx.range_tail_0__2.result);
            }
|  { $result = (maybe<expr>) none<expr>();
            }
;
elseif returns [if_elseif result]
: elseif_0__1='elseif' elseif_0__2=exp 'then' elseif_0__4=block { $result = (if_elseif) if_elseif((IToken) _localctx.elseif_0__1, (expr) _localctx.elseif_0__2.result, (block) _localctx.elseif_0__4.result);
            }
;
else__x_ returns [if_else result]
: else__x__0__1='else' else__x__0__2=block { $result = (if_else) if_else((IToken) _localctx.else__x__0__1, (block) _localctx.else__x__0__2.result);
            }
;
exp returns [expr result]
: exp_0__1=binexp { int _ = 0;
                $result = _localctx.exp_0__1.result;
            }
;
binexp returns [expr result]
: binexp_0__1=binseq { $result = (expr) mkBinOpSeq((MyList<Op<expr>>) _localctx.binexp_0__1.result, (System.Func<IToken, expr, expr, expr>) Bin, (System.Func<MyList<Op<expr>>, expr>) UnsolvedBin);
            }
;
binseq returns [MyList<Op<expr>> result]
: binseq_0__1=binseq binseq_0__2=binop binseq_0__3=binoperand { $result = (MyList<Op<expr>>) appendList<Op<expr>>((MyList<Op<expr>>) (MyList<Op<expr>>) appendList<Op<expr>>((MyList<Op<expr>>) _localctx.binseq_0__1.result, (Op<expr>) _localctx.binseq_0__2.result), (Op<expr>) _localctx.binseq_0__3.result);
            }
| binseq_1__1=binoperand { $result = new MyList<Op<expr>> { _localctx.binseq_1__1.result };
            }
;
binoperand returns [Op<expr> result]
: binoperand_0__1=unaryexp { $result = (Op<expr>) mkOperand((expr) _localctx.binoperand_0__1.result);
            }
;
unaryexp returns [expr result]
: unaryexp_0__1='#' unaryexp_0__2=exponent { $result = (expr) Len((IToken) _localctx.unaryexp_0__1, (expr) _localctx.unaryexp_0__2.result);
            }
| unaryexp_1__1='-' unaryexp_1__2=exponent { $result = (expr) Neg((IToken) _localctx.unaryexp_1__1, (expr) _localctx.unaryexp_1__2.result);
            }
| unaryexp_2__1='~' unaryexp_2__2=exponent { $result = (expr) Inv((IToken) _localctx.unaryexp_2__1, (expr) _localctx.unaryexp_2__2.result);
            }
| unaryexp_3__1='not' unaryexp_3__2=exponent { $result = (expr) Not((IToken) _localctx.unaryexp_3__1, (expr) _localctx.unaryexp_3__2.result);
            }
| unaryexp_4__1=exponent { $result = _localctx.unaryexp_4__1.result;
            }
;
exponent returns [expr result]
: exponent_0__1=prefixexp '^' exponent_0__3=exponent { $result = (expr) Exponent((expr) _localctx.exponent_0__1.result, (expr) _localctx.exponent_0__3.result);
            }
| exponent_1__1=prefixexp { $result = _localctx.exponent_1__1.result;
            }
;
prefixexp returns [expr result]
: prefixexp_0__1=NAME { $result = (expr) Var((IToken) _localctx.prefixexp_0__1);
            }
| prefixexp_1__1='(' prefixexp_1__2=exp ')' { $result = (expr) NestedExp((IToken) _localctx.prefixexp_1__1, (expr) _localctx.prefixexp_1__2.result);
            }
| prefixexp_2__1=prefixexp prefixexp_2__2=args { $result = (expr) CallFunc((expr) _localctx.prefixexp_2__1.result, (arguments) _localctx.prefixexp_2__2.result);
            }
| prefixexp_3__1=prefixexp ':' prefixexp_3__3=NAME prefixexp_3__4=args { $result = (expr) CallMethod((expr) _localctx.prefixexp_3__1.result, (IToken) _localctx.prefixexp_3__3, (arguments) _localctx.prefixexp_3__4.result);
            }
| prefixexp_4__1=prefixexp '[' prefixexp_4__3=exp ']' { $result = (expr) Index((expr) _localctx.prefixexp_4__1.result, (expr) _localctx.prefixexp_4__3.result);
            }
| prefixexp_5__1=prefixexp '.' prefixexp_5__3=NAME { $result = (expr) Attr((expr) _localctx.prefixexp_5__1.result, (IToken) _localctx.prefixexp_5__3);
            }
| prefixexp_6__1=atom { $result = _localctx.prefixexp_6__1.result;
            }
;
atom returns [expr result]
: atom_0__1='nil' { $result = (expr) Nil((IToken) _localctx.atom_0__1);
            }
| atom_1__1='false' { $result = (expr) Bool((IToken) _localctx.atom_1__1, (bool) false);
            }
| atom_2__1='true' { $result = (expr) Bool((IToken) _localctx.atom_2__1, (bool) true);
            }
| atom_3__1=NUMERAL { $result = (expr) Num((IToken) _localctx.atom_3__1);
            }
| atom_4__1=STR_LIT { $result = (expr) String((IToken) _localctx.atom_4__1);
            }
| atom_5__1=NESTED_STR { $result = (expr) String((IToken) _localctx.atom_5__1);
            }
| atom_6__1='...' { $result = (expr) Ellipse((IToken) _localctx.atom_6__1);
            }
| atom_7__1=functiondef { $result = _localctx.atom_7__1.result;
            }
| atom_8__1=tableconstructor { $result = (expr) TableExpr((table) _localctx.atom_8__1.result);
            }
;
nempty_seplist_o__i__s__i__s_exp_p_ returns [MyList<expr> result]
: nempty_seplist_o__i__s__i__s_exp_p__0__1=exp { $result = new MyList<expr> { _localctx.nempty_seplist_o__i__s__i__s_exp_p__0__1.result };
            }
| nempty_seplist_o__i__s__i__s_exp_p__1__1=nempty_seplist_o__i__s__i__s_exp_p_ ',' nempty_seplist_o__i__s__i__s_exp_p__1__3=exp { $result = (MyList<expr>) appendList<expr>((MyList<expr>) _localctx.nempty_seplist_o__i__s__i__s_exp_p__1__1.result, (expr) _localctx.nempty_seplist_o__i__s__i__s_exp_p__1__3.result);
            }
;
allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ returns [MyList<expr> result]
:  { $result = new MyList<expr> {  };
            }
| allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__1__1=nempty_seplist_o__i__s__i__s_exp_p_ { $result = _localctx.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__1__1.result;
            }
;
seplist_o__i__s__i__s_exp_p_ returns [MyList<expr> result]
: seplist_o__i__s__i__s_exp_p__0__1=allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ { $result = _localctx.seplist_o__i__s__i__s_exp_p__0__1.result;
            }
;
args returns [arguments result]
: args_0__1='(' args_0__2=seplist_o__i__s__i__s_exp_p_ ')' { $result = (arguments) PositionalArgs((IToken) _localctx.args_0__1, (MyList<expr>) _localctx.args_0__2.result);
            }
| args_1__1=tableconstructor { $result = (arguments) TableArgs((table) _localctx.args_1__1.result);
            }
| args_2__1=STR_LIT { $result = (arguments) StringArg((IToken) _localctx.args_2__1);
            }
;
opt_o_funcname_p_ returns [maybe<funcname> result]
: opt_o_funcname_p__0__1=funcname { $result = (maybe<funcname>) some<funcname>((funcname) _localctx.opt_o_funcname_p__0__1.result);
            }
|  { $result = (maybe<funcname>) none<funcname>();
            }
;
opt_o_parlist_p_ returns [maybe<parameters> result]
: opt_o_parlist_p__0__1=parlist { $result = (maybe<parameters>) some<parameters>((parameters) _localctx.opt_o_parlist_p__0__1.result);
            }
|  { $result = (maybe<parameters>) none<parameters>();
            }
;
functiondef returns [expr result]
: functiondef_0__1='function' functiondef_0__2=opt_o_funcname_p_ '(' functiondef_0__4=opt_o_parlist_p_ ')' functiondef_0__6=block 'end' { $result = (expr) FuncDef((IToken) _localctx.functiondef_0__1, (bool) false, (maybe<funcname>) _localctx.functiondef_0__2.result, (maybe<parameters>) _localctx.functiondef_0__4.result, (block) _localctx.functiondef_0__6.result);
            }
;
varargs returns [maybe<IToken> result]
: ',' varargs_0__2='...' { $result = (maybe<IToken>) some<IToken>((IToken) _localctx.varargs_0__2);
            }
|  { $result = (maybe<IToken>) none<IToken>();
            }
;
nempty_seplist_o__i__s__i__s__i_name_k__p_ returns [MyList<IToken> result]
: nempty_seplist_o__i__s__i__s__i_name_k__p__0__1=NAME { $result = new MyList<IToken> { _localctx.nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 };
            }
| nempty_seplist_o__i__s__i__s__i_name_k__p__1__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ ',' nempty_seplist_o__i__s__i__s__i_name_k__p__1__3=NAME { $result = (MyList<IToken>) appendList<IToken>((MyList<IToken>) _localctx.nempty_seplist_o__i__s__i__s__i_name_k__p__1__1.result, (IToken) _localctx.nempty_seplist_o__i__s__i__s__i_name_k__p__1__3);
            }
;
parlist returns [parameters result]
: parlist_0__1='...' { $result = (parameters) paramsv((MyList<IToken>) new MyList<IToken> {  }, (maybe<IToken>) (maybe<IToken>) some<IToken>((IToken) _localctx.parlist_0__1));
            }
| parlist_1__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ parlist_1__2=varargs { $result = (parameters) paramsv((MyList<IToken>) _localctx.parlist_1__1.result, (maybe<IToken>) _localctx.parlist_1__2.result);
            }
;
nempty_seplist_o_fieldsep_s_field_p_ returns [MyList<table_field> result]
: nempty_seplist_o_fieldsep_s_field_p__0__1=field { $result = new MyList<table_field> { _localctx.nempty_seplist_o_fieldsep_s_field_p__0__1.result };
            }
| nempty_seplist_o_fieldsep_s_field_p__1__1=nempty_seplist_o_fieldsep_s_field_p_ fieldsep nempty_seplist_o_fieldsep_s_field_p__1__3=field { $result = (MyList<table_field>) appendList<table_field>((MyList<table_field>) _localctx.nempty_seplist_o_fieldsep_s_field_p__1__1.result, (table_field) _localctx.nempty_seplist_o_fieldsep_s_field_p__1__3.result);
            }
;
opt_o_fieldsep_p_ returns [maybe<int> result]
: opt_o_fieldsep_p__0__1=fieldsep { $result = (maybe<int>) some<int>((int) _localctx.opt_o_fieldsep_p__0__1.result);
            }
|  { $result = (maybe<int>) none<int>();
            }
;
tableconstructor returns [table result]
: tableconstructor_0__1='{' tableconstructor_0__2=nempty_seplist_o_fieldsep_s_field_p_ opt_o_fieldsep_p_ '}' { $result = (table) TableConstructor((IToken) _localctx.tableconstructor_0__1, (MyList<table_field>) _localctx.tableconstructor_0__2.result);
            }
| tableconstructor_1__1='{' '}' { $result = (table) TableConstructor((IToken) _localctx.tableconstructor_1__1, (MyList<table_field>) new MyList<table_field> {  });
            }
;
funcname returns [funcname result]
: funcname_0__1=funcname '.' funcname_0__3=NAME { $result = (funcname) DotName((funcname) _localctx.funcname_0__1.result, (IToken) _localctx.funcname_0__3);
            }
| funcname_1__1=funcname ':' funcname_1__3=NAME { $result = (funcname) MethodName((funcname) _localctx.funcname_1__1.result, (IToken) _localctx.funcname_1__3);
            }
| funcname_2__1=NAME { $result = (funcname) VarName((IToken) _localctx.funcname_2__1);
            }
;
field returns [table_field result]
: field_0__1='[' field_0__2=exp ']' '=' field_0__5=exp { $result = (table_field) IndexField((IToken) _localctx.field_0__1, (expr) _localctx.field_0__2.result, (expr) _localctx.field_0__5.result);
            }
| field_1__1=NAME '=' field_1__3=exp { $result = (table_field) NameField((IToken) _localctx.field_1__1, (expr) _localctx.field_1__3.result);
            }
| field_2__1=exp { $result = (table_field) ElementField((expr) _localctx.field_2__1.result);
            }
;
fieldsep returns [int result]
: ',' { $result = 0;
            }
| ';' { $result = 0;
            }
;
binop returns [Op<expr> result]
: binop_0__1='or' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_0__1);
            }
| binop_1__1='and' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_1__1);
            }
| binop_2__1='<' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_2__1);
            }
| binop_3__1='>' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_3__1);
            }
| binop_4__1='<=' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_4__1);
            }
| binop_5__1='>=' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_5__1);
            }
| binop_6__1='~=' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_6__1);
            }
| binop_7__1='==' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_7__1);
            }
| binop_8__1='|' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_8__1);
            }
| binop_9__1='~' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_9__1);
            }
| binop_10__1='&' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_10__1);
            }
| binop_11__1='<<' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_11__1);
            }
| binop_12__1='>>' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_12__1);
            }
| binop_13__1='..' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_13__1);
            }
| binop_14__1='+' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_14__1);
            }
| binop_15__1='-' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_15__1);
            }
| binop_16__1='*' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_16__1);
            }
| binop_17__1='/' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_17__1);
            }
| binop_18__1='//' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_18__1);
            }
| binop_19__1='%' { $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.binop_19__1);
            }
;
LINE_COMMENT : '-' '-' ~'\n'* '\n' -> channel(HIDDEN);
SPACE : (' ' | '\t' | '\r' | '\n') -> channel(HIDDEN);
fragment DIGIT : [\u0030-\u0039] ;
fragment HEXCHAR : ([\u0030-\u0039] | [\u0061-\u007A] | [\u0041-\u005A]) ;
fragment UCHAR : ([\u0061-\u007A] | [\u0041-\u005A] | '_') ;
NAME : UCHAR (UCHAR | DIGIT)* ;
fragment INT : DIGIT+ ;
fragment INTEGRAL : INT ('.' INT)? (('E' | 'e') INT)? ;
fragment HEX : '0x' HEXCHAR+ ;
NUMERAL : HEX | INTEGRAL ;
STR_LIT : '"' (('\\' .) | ~'"')* '"' ;
fragment NESTED_STR1 : '[' ((']' ~']') | ~']')* ']' ;
fragment NESTED_STR2 : '=' (('[' (~']' | (']' (~'=' | ('=' ~']'))))* ']') | (('=' ~']') | ~'=')*) '=' ;
NESTED_STR : '[' (NESTED_STR1 | NESTED_STR2) ']' ;
