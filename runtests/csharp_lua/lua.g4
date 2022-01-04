grammar lua;
options { language = CSharp; }
@members {
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
public static expr TableExpr (table value1)
{
    return (expr) new TableExpr(value1);
}
public static expr String (IToken value1)
{
    return (expr) new String(value1);
}
public static expr Num (IToken value)
{
    return (expr) new Num(value);
}
public static expr Not (IToken value1,expr value2)
{
    return (expr) new Not(value1,value2);
}
public static expr Nil (IToken value)
{
    return (expr) new Nil(value);
}
public static expr NestedExp (IToken value1,expr value2)
{
    return (expr) new NestedExp(value1,value2);
}
public static expr Neg (IToken value1,expr value2)
{
    return (expr) new Neg(value1,value2);
}
public static expr Len (IToken value1,expr value2)
{
    return (expr) new Len(value1,value2);
}
public static expr Inv (IToken value1,expr value2)
{
    return (expr) new Inv(value1,value2);
}
public static expr Index (expr value1,expr value2)
{
    return (expr) new Index(value1,value2);
}
public static expr FuncDef (IToken pos,bool is_local,maybe<IToken> fname,maybe<parameters> parameters,block body)
{
    return (expr) new FuncDef(pos,is_local,fname,parameters,body);
}
public static expr Exponent (expr value1,expr value2)
{
    return (expr) new Exponent(value1,value2);
}
public static expr Ellipse (IToken value1)
{
    return (expr) new Ellipse(value1);
}
public static expr CallMethod (expr value1,IToken value2,arguments value3)
{
    return (expr) new CallMethod(value1,value2,value3);
}
public static expr CallFunc (expr value1,arguments value2)
{
    return (expr) new CallFunc(value1,value2);
}
public static expr Bool (IToken value1,bool value2)
{
    return (expr) new Bool(value1,value2);
}
public static expr Bin (IToken op,expr l,expr r)
{
    return (expr) new Bin(op,l,r);
}
public static expr Attr (expr value1,IToken value2)
{
    return (expr) new Attr(value1,value2);
}
public static stmt WhileStmt (IToken value1,expr value2,block value3)
{
    return (stmt) new WhileStmt(value1,value2,value3);
}
public static stmt ReturnStmt (IToken value1,MyList<expr> value2)
{
    return (stmt) new ReturnStmt(value1,value2);
}
public static stmt RepeatStmt (IToken value1,block value2,expr value3)
{
    return (stmt) new RepeatStmt(value1,value2,value3);
}
public static stmt LabelStmt (IToken value)
{
    return (stmt) new LabelStmt(value);
}
public static stmt IfStmt (IToken value1,expr value2,MyList<if_elseif> value3,maybe<if_else> value4)
{
    return (stmt) new IfStmt(value1,value2,value3,value4);
}
public static stmt GotoStmt (IToken value1,IToken value2)
{
    return (stmt) new GotoStmt(value1,value2);
}
public static stmt ForRangeStmt (IToken value1,IToken value2,range value3,block value4)
{
    return (stmt) new ForRangeStmt(value1,value2,value3,value4);
}
public static stmt ForInStmt (IToken value1,MyList<IToken> value2,MyList<expr> value3,block value4)
{
    return (stmt) new ForInStmt(value1,value2,value3,value4);
}
public static stmt ExprStmt (expr value)
{
    return (stmt) new ExprStmt(value);
}
public static stmt EmptyStmt (IToken value1)
{
    return (stmt) new EmptyStmt(value1);
}
public static stmt DoStmt (IToken value1,block value2)
{
    return (stmt) new DoStmt(value1,value2);
}
public static stmt BreakStmt (IToken value)
{
    return (stmt) new BreakStmt(value);
}
public static stmt Assignment (bool value1,MyList<expr> value2,maybe<MyList<expr>> value3)
{
    return (stmt) new Assignment(value1,value2,value3);
}
public static table_field NameField (IToken key,expr value)
{
    return (table_field) new NameField(key,value);
}
public static table_field IndexField (IToken pos,expr value,expr item)
{
    return (table_field) new IndexField(pos,value,item);
}
public static table_field ElementField (expr value1)
{
    return (table_field) new ElementField(value1);
}
public static table TableConstructor (IToken value1,MyList<table_field> value2)
{
    return (table) new TableConstructor(value1,value2);
}
public static arguments TableArgs (table value)
{
    return (arguments) new TableArgs(value);
}
public static arguments StringArg (IToken value)
{
    return (arguments) new StringArg(value);
}
public static arguments PositionalArgs (IToken value1,MyList<expr> value2)
{
    return (arguments) new PositionalArgs(value1,value2);
}
}
start returns [block result]: v=start__y_ EOF { $result = _localctx.v.result; };







start__y_ returns [block result]
: var_0__1=block { 
                $result = _localctx.var_0__1.result;
            }
;
nempty_list_o_stat_p_ returns [MyList<stmt> result]
: var_0__1=stat { 
                $result = new MyList<stmt> { _localctx.var_0__1.result };
            }
| var_1__1=nempty_list_o_stat_p_ var_1__2=stat { 
                $result = (MyList<stmt>) appendList<stmt>((MyList<stmt>) _localctx.var_1__1.result, (stmt) _localctx.var_1__2.result);
            }
;
allow_empty_o_nempty_list_o_stat_p__p_ returns [MyList<stmt> result]
:  { 
                $result = new MyList<stmt> {  };
            }
| var_1__1=nempty_list_o_stat_p_ { 
                $result = _localctx.var_1__1.result;
            }
;
list_o_stat_p_ returns [MyList<stmt> result]
: var_0__1=allow_empty_o_nempty_list_o_stat_p__p_ { 
                $result = _localctx.var_0__1.result;
            }
;
opt_o_retstat_p_ returns [maybe<stmt> result]
: var_0__1=retstat { 
                $result = (maybe<stmt>) some<stmt>((stmt) _localctx.var_0__1.result);
            }
|  { 
                $result = (maybe<stmt>) none<stmt>();
            }
;
block returns [block result]
: var_0__1=list_o_stat_p_ var_0__2=opt_o_retstat_p_ { 
                $result = (block) block((MyList<stmt>) _localctx.var_0__1.result, (maybe<stmt>) _localctx.var_0__2.result);
            }
;
opt_o__i__h__i__p_ returns [maybe<IToken> result]
: var_0__1=';' { 
                $result = (maybe<IToken>) some<IToken>((IToken) _localctx.var_0__1);
            }
|  { 
                $result = (maybe<IToken>) none<IToken>();
            }
;
retstat returns [stmt result]
: var_0__1='return' var_0__2=seplist_o__i__s__i__s_exp_p_ opt_o__i__h__i__p_ { 
                $result = (stmt) ReturnStmt((IToken) _localctx.var_0__1, (MyList<expr>) _localctx.var_0__2.result);
            }
;
nempty_list_o_elseif_p_ returns [MyList<if_elseif> result]
: var_0__1=elseif { 
                $result = new MyList<if_elseif> { _localctx.var_0__1.result };
            }
| var_1__1=nempty_list_o_elseif_p_ var_1__2=elseif { 
                $result = (MyList<if_elseif>) appendList<if_elseif>((MyList<if_elseif>) _localctx.var_1__1.result, (if_elseif) _localctx.var_1__2.result);
            }
;
allow_empty_o_nempty_list_o_elseif_p__p_ returns [MyList<if_elseif> result]
:  { 
                $result = new MyList<if_elseif> {  };
            }
| var_1__1=nempty_list_o_elseif_p_ { 
                $result = _localctx.var_1__1.result;
            }
;
list_o_elseif_p_ returns [MyList<if_elseif> result]
: var_0__1=allow_empty_o_nempty_list_o_elseif_p__p_ { 
                $result = _localctx.var_0__1.result;
            }
;
opt_o_else_p_ returns [maybe<if_else> result]
: var_0__1=else__x_ { 
                $result = (maybe<if_else>) some<if_else>((if_else) _localctx.var_0__1.result);
            }
|  { 
                $result = (maybe<if_else>) none<if_else>();
            }
;
stat returns [stmt result]
: var_0__1=';' { 
                $result = (stmt) EmptyStmt((IToken) _localctx.var_0__1);
            }
| var_1__1=nempty_seplist_o__i__s__i__s_exp_p_ '=' var_1__3=nempty_seplist_o__i__s__i__s_exp_p_ { 
                $result = (stmt) Assignment((bool) false, (MyList<expr>) _localctx.var_1__1.result, (maybe<MyList<expr>>) (maybe<MyList<expr>>) some<MyList<expr>>((MyList<expr>) _localctx.var_1__3.result));
            }
| var_2__1=exp { 
                $result = (stmt) ExprStmt((expr) _localctx.var_2__1.result);
            }
| '::' var_3__2=NAME '::' { 
                $result = (stmt) LabelStmt((IToken) _localctx.var_3__2);
            }
| var_4__1='break' { 
                $result = (stmt) BreakStmt((IToken) _localctx.var_4__1);
            }
| var_5__1='goto' var_5__2=NAME { 
                $result = (stmt) GotoStmt((IToken) _localctx.var_5__1, (IToken) _localctx.var_5__2);
            }
| var_6__1='do' var_6__2=block 'end' { 
                $result = (stmt) DoStmt((IToken) _localctx.var_6__1, (block) _localctx.var_6__2.result);
            }
| var_7__1='while' var_7__2=exp 'do' var_7__4=block 'end' { 
                $result = (stmt) WhileStmt((IToken) _localctx.var_7__1, (expr) _localctx.var_7__2.result, (block) _localctx.var_7__4.result);
            }
| var_8__1='repeat' var_8__2=block 'until' var_8__4=exp { 
                $result = (stmt) RepeatStmt((IToken) _localctx.var_8__1, (block) _localctx.var_8__2.result, (expr) _localctx.var_8__4.result);
            }
| var_9__1='if' var_9__2=exp 'then' var_9__4=list_o_elseif_p_ var_9__5=opt_o_else_p_ 'end' { 
                $result = (stmt) IfStmt((IToken) _localctx.var_9__1, (expr) _localctx.var_9__2.result, (MyList<if_elseif>) _localctx.var_9__4.result, (maybe<if_else>) _localctx.var_9__5.result);
            }
| var_10__1='for' var_10__2=NAME '=' var_10__4=range 'do' var_10__6=block 'end' { 
                $result = (stmt) ForRangeStmt((IToken) _localctx.var_10__1, (IToken) _localctx.var_10__2, (range) _localctx.var_10__4.result, (block) _localctx.var_10__6.result);
            }
| var_11__1='for' var_11__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ 'in' var_11__4=nempty_seplist_o__i__s__i__s_exp_p_ 'do' var_11__6=block 'end' { 
                $result = (stmt) ForInStmt((IToken) _localctx.var_11__1, (MyList<IToken>) _localctx.var_11__2.result, (MyList<expr>) _localctx.var_11__4.result, (block) _localctx.var_11__6.result);
            }
| var_12__1='local' 'function' var_12__3=NAME '(' var_12__5=opt_o_parlist_p_ ')' var_12__7=block 'end' { 
                $result = (stmt) ExprStmt((expr) (expr) FuncDef((IToken) _localctx.var_12__1, (bool) true, (maybe<IToken>) (maybe<IToken>) some<IToken>((IToken) _localctx.var_12__3), (maybe<parameters>) _localctx.var_12__5.result, (block) _localctx.var_12__7.result));
            }
| 'local' var_13__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ var_13__3=opt_assign_rhs { 
                $result = (stmt) Assignment((bool) true, (MyList<expr>) (MyList<expr>) listMap<IToken, expr>((MyList<IToken>) _localctx.var_13__2.result, (System.Func<IToken, expr>) Var), (maybe<MyList<expr>>) _localctx.var_13__3.result);
            }
;
opt_assign_rhs returns [maybe<MyList<expr>> result]
: '=' var_0__2=nempty_seplist_o__i__s__i__s_exp_p_ { 
                $result = (maybe<MyList<expr>>) some<MyList<expr>>((MyList<expr>) _localctx.var_0__2.result);
            }
|  { 
                $result = (maybe<MyList<expr>>) none<MyList<expr>>();
            }
;
range returns [range result]
: var_0__1=exp ',' var_0__3=exp var_0__4=range_tail { 
                $result = (range) range((expr) _localctx.var_0__1.result, (expr) _localctx.var_0__3.result, (maybe<expr>) _localctx.var_0__4.result);
            }
;
range_tail returns [maybe<expr> result]
: ',' var_0__2=exp { 
                $result = (maybe<expr>) some<expr>((expr) _localctx.var_0__2.result);
            }
|  { 
                $result = (maybe<expr>) none<expr>();
            }
;
elseif returns [if_elseif result]
: var_0__1='elseif' var_0__2=exp 'then' var_0__4=block { 
                $result = (if_elseif) if_elseif((IToken) _localctx.var_0__1, (expr) _localctx.var_0__2.result, (block) _localctx.var_0__4.result);
            }
;
else__x_ returns [if_else result]
: var_0__1='else' var_0__2=block { 
                $result = (if_else) if_else((IToken) _localctx.var_0__1, (block) _localctx.var_0__2.result);
            }
;
exp returns [expr result]
: var_0__1=binexp { 
                $result = _localctx.var_0__1.result;
            }
;
binexp returns [expr result]
: var_0__1=binseq { 
                $result = (expr) mkBinOpSeq((MyList<Op<expr>>) _localctx.var_0__1.result, (System.Func<IToken, expr, expr, expr>) Bin, (System.Func<MyList<Op<expr>>, expr>) UnsolvedBin);
            }
;
binseq returns [MyList<Op<expr>> result]
: var_0__1=binseq var_0__2=binop var_0__3=binoperand { 
                $result = (MyList<Op<expr>>) appendList<Op<expr>>((MyList<Op<expr>>) (MyList<Op<expr>>) appendList<Op<expr>>((MyList<Op<expr>>) _localctx.var_0__1.result, (Op<expr>) _localctx.var_0__2.result), (Op<expr>) _localctx.var_0__3.result);
            }
| var_1__1=binoperand { 
                $result = new MyList<Op<expr>> { _localctx.var_1__1.result };
            }
;
binoperand returns [Op<expr> result]
: var_0__1=unaryexp { 
                $result = (Op<expr>) mkOperand((expr) _localctx.var_0__1.result);
            }
;
unaryexp returns [expr result]
: var_0__1='#' var_0__2=exponent { 
                $result = (expr) Len((IToken) _localctx.var_0__1, (expr) _localctx.var_0__2.result);
            }
| var_1__1='-' var_1__2=exponent { 
                $result = (expr) Neg((IToken) _localctx.var_1__1, (expr) _localctx.var_1__2.result);
            }
| var_2__1='~' var_2__2=exponent { 
                $result = (expr) Inv((IToken) _localctx.var_2__1, (expr) _localctx.var_2__2.result);
            }
| var_3__1='not' var_3__2=exponent { 
                $result = (expr) Not((IToken) _localctx.var_3__1, (expr) _localctx.var_3__2.result);
            }
| var_4__1=exponent { 
                $result = _localctx.var_4__1.result;
            }
;
exponent returns [expr result]
: var_0__1=prefixexp '^' var_0__3=exponent { 
                $result = (expr) Exponent((expr) _localctx.var_0__1.result, (expr) _localctx.var_0__3.result);
            }
| var_1__1=prefixexp { 
                $result = _localctx.var_1__1.result;
            }
;
prefixexp returns [expr result]
: var_0__1=NAME { 
                $result = (expr) Var((IToken) _localctx.var_0__1);
            }
| var_1__1='(' var_1__2=exp ')' { 
                $result = (expr) NestedExp((IToken) _localctx.var_1__1, (expr) _localctx.var_1__2.result);
            }
| var_2__1=prefixexp var_2__2=args { 
                $result = (expr) CallFunc((expr) _localctx.var_2__1.result, (arguments) _localctx.var_2__2.result);
            }
| var_3__1=prefixexp ':' var_3__3=NAME var_3__4=args { 
                $result = (expr) CallMethod((expr) _localctx.var_3__1.result, (IToken) _localctx.var_3__3, (arguments) _localctx.var_3__4.result);
            }
| var_4__1=prefixexp '[' var_4__3=exp ']' { 
                $result = (expr) Index((expr) _localctx.var_4__1.result, (expr) _localctx.var_4__3.result);
            }
| var_5__1=prefixexp '.' var_5__3=NAME { 
                $result = (expr) Attr((expr) _localctx.var_5__1.result, (IToken) _localctx.var_5__3);
            }
| var_6__1=atom { 
                $result = _localctx.var_6__1.result;
            }
;
atom returns [expr result]
: var_0__1='nil' { 
                $result = (expr) Nil((IToken) _localctx.var_0__1);
            }
| var_1__1='false' { 
                $result = (expr) Bool((IToken) _localctx.var_1__1, (bool) false);
            }
| var_2__1='true' { 
                $result = (expr) Bool((IToken) _localctx.var_2__1, (bool) true);
            }
| var_3__1=NUMERAL { 
                $result = (expr) Num((IToken) _localctx.var_3__1);
            }
| var_4__1=STR_LIT { 
                $result = (expr) String((IToken) _localctx.var_4__1);
            }
| var_5__1='...' { 
                $result = (expr) Ellipse((IToken) _localctx.var_5__1);
            }
| var_6__1=functiondef { 
                $result = _localctx.var_6__1.result;
            }
| var_7__1=tableconstructor { 
                $result = (expr) TableExpr((table) _localctx.var_7__1.result);
            }
;
nempty_seplist_o__i__s__i__s_exp_p_ returns [MyList<expr> result]
: var_0__1=exp { 
                $result = new MyList<expr> { _localctx.var_0__1.result };
            }
| var_1__1=nempty_seplist_o__i__s__i__s_exp_p_ ',' var_1__3=exp { 
                $result = (MyList<expr>) appendList<expr>((MyList<expr>) _localctx.var_1__1.result, (expr) _localctx.var_1__3.result);
            }
;
allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ returns [MyList<expr> result]
:  { 
                $result = new MyList<expr> {  };
            }
| var_1__1=nempty_seplist_o__i__s__i__s_exp_p_ { 
                $result = _localctx.var_1__1.result;
            }
;
seplist_o__i__s__i__s_exp_p_ returns [MyList<expr> result]
: var_0__1=allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ { 
                $result = _localctx.var_0__1.result;
            }
;
args returns [arguments result]
: var_0__1='(' var_0__2=seplist_o__i__s__i__s_exp_p_ ')' { 
                $result = (arguments) PositionalArgs((IToken) _localctx.var_0__1, (MyList<expr>) _localctx.var_0__2.result);
            }
| var_1__1=tableconstructor { 
                $result = (arguments) TableArgs((table) _localctx.var_1__1.result);
            }
| var_2__1=STR_LIT { 
                $result = (arguments) StringArg((IToken) _localctx.var_2__1);
            }
;
opt_o__i_name_k__p_ returns [maybe<IToken> result]
: var_0__1=NAME { 
                $result = (maybe<IToken>) some<IToken>((IToken) _localctx.var_0__1);
            }
|  { 
                $result = (maybe<IToken>) none<IToken>();
            }
;
opt_o_parlist_p_ returns [maybe<parameters> result]
: var_0__1=parlist { 
                $result = (maybe<parameters>) some<parameters>((parameters) _localctx.var_0__1.result);
            }
|  { 
                $result = (maybe<parameters>) none<parameters>();
            }
;
functiondef returns [expr result]
: var_0__1='function' var_0__2=opt_o__i_name_k__p_ '(' var_0__4=opt_o_parlist_p_ ')' var_0__6=block 'end' { 
                $result = (expr) FuncDef((IToken) _localctx.var_0__1, (bool) false, (maybe<IToken>) _localctx.var_0__2.result, (maybe<parameters>) _localctx.var_0__4.result, (block) _localctx.var_0__6.result);
            }
;
varargs returns [maybe<IToken> result]
: ',' var_0__2='...' { 
                $result = (maybe<IToken>) some<IToken>((IToken) _localctx.var_0__2);
            }
|  { 
                $result = (maybe<IToken>) none<IToken>();
            }
;
nempty_seplist_o__i__s__i__s__i_name_k__p_ returns [MyList<IToken> result]
: var_0__1=NAME { 
                $result = new MyList<IToken> { _localctx.var_0__1 };
            }
| var_1__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ ',' var_1__3=NAME { 
                $result = (MyList<IToken>) appendList<IToken>((MyList<IToken>) _localctx.var_1__1.result, (IToken) _localctx.var_1__3);
            }
;
parlist returns [parameters result]
: var_0__1='...' { 
                $result = (parameters) paramsv((MyList<IToken>) new MyList<IToken> {  }, (maybe<IToken>) (maybe<IToken>) some<IToken>((IToken) _localctx.var_0__1));
            }
| var_1__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ var_1__2=varargs { 
                $result = (parameters) paramsv((MyList<IToken>) _localctx.var_1__1.result, (maybe<IToken>) _localctx.var_1__2.result);
            }
;
nempty_seplist_o_fieldsep_s_field_p_ returns [MyList<table_field> result]
: var_0__1=field { 
                $result = new MyList<table_field> { _localctx.var_0__1.result };
            }
| var_1__1=nempty_seplist_o_fieldsep_s_field_p_ fieldsep var_1__3=field { 
                $result = (MyList<table_field>) appendList<table_field>((MyList<table_field>) _localctx.var_1__1.result, (table_field) _localctx.var_1__3.result);
            }
;
allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ returns [MyList<table_field> result]
:  { 
                $result = new MyList<table_field> {  };
            }
| var_1__1=nempty_seplist_o_fieldsep_s_field_p_ { 
                $result = _localctx.var_1__1.result;
            }
;
seplist_o_fieldsep_s_field_p_ returns [MyList<table_field> result]
: var_0__1=allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ { 
                $result = _localctx.var_0__1.result;
            }
;
opt_o_fieldsep_p_ returns [maybe<int> result]
: var_0__1=fieldsep { 
                $result = (maybe<int>) some<int>((int) _localctx.var_0__1.result);
            }
|  { 
                $result = (maybe<int>) none<int>();
            }
;
tableconstructor returns [table result]
: var_0__1='{' var_0__2=seplist_o_fieldsep_s_field_p_ opt_o_fieldsep_p_ '}' { 
                $result = (table) TableConstructor((IToken) _localctx.var_0__1, (MyList<table_field>) _localctx.var_0__2.result);
            }
;
field returns [table_field result]
: var_0__1='[' var_0__2=exp ']' '=' var_0__5=exp { 
                $result = (table_field) IndexField((IToken) _localctx.var_0__1, (expr) _localctx.var_0__2.result, (expr) _localctx.var_0__5.result);
            }
| var_1__1=NAME '=' var_1__3=exp { 
                $result = (table_field) NameField((IToken) _localctx.var_1__1, (expr) _localctx.var_1__3.result);
            }
| var_2__1=exp { 
                $result = (table_field) ElementField((expr) _localctx.var_2__1.result);
            }
;
fieldsep returns [int result]
: ',' { 
                $result = 0;
            }
| ';' { 
                $result = 0;
            }
;
binop returns [Op<expr> result]
: var_0__1='or' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_0__1);
            }
| var_1__1='and' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_1__1);
            }
| var_2__1='<' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_2__1);
            }
| var_3__1='>' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_3__1);
            }
| var_4__1='<=' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_4__1);
            }
| var_5__1='>=' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_5__1);
            }
| var_6__1='~=' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_6__1);
            }
| var_7__1='==' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_7__1);
            }
| var_8__1='|' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_8__1);
            }
| var_9__1='~' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_9__1);
            }
| var_10__1='&' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_10__1);
            }
| var_11__1='<<' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_11__1);
            }
| var_12__1='>>' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_12__1);
            }
| var_13__1='..' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_13__1);
            }
| var_14__1='+' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_14__1);
            }
| var_15__1='-' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_15__1);
            }
| var_16__1='*' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_16__1);
            }
| var_17__1='/' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_17__1);
            }
| var_18__1='//' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_18__1);
            }
| var_19__1='%' { 
                $result = (Op<expr>) mkOperator<expr>((IToken) _localctx.var_19__1);
            }
;
SPACE : (' ' | '\t' | '\r' | '\n') -> skip;
fragment DIGIT : [\u0030-\u0039] ;
fragment UCHAR : ([\u0061-\u007A] | [\u0041-\u005A] | '_') ;
NAME : UCHAR (UCHAR | DIGIT)* ;
fragment INT : DIGIT+ ;
NUMERAL : '-'? INT ('.' INT)? (('E' | 'e') INT)? ;
STR_LIT : '"' (('\\' .) | ~'"')* '"' ;
