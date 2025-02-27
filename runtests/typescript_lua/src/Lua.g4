grammar Lua;
@parser::header {
import { DotName, MethodName, VarName, funcname_t, PositionalArgs, StringArg, TableArgs, arguments_t, TableConstructor, table_t, ElementField, IndexField, NameField, table_field_t, Assignment, BreakStmt, DoStmt, EmptyStmt, ExprStmt, ForInStmt, ForRangeStmt, GotoStmt, IfStmt, LabelStmt, RepeatStmt, ReturnStmt, WhileStmt, stmt_t, Attr, Bin, Bool, CallFunc, CallMethod, Ellipse, Exponent, FuncDef, Index, Inv, Len, Neg, NestedExp, Nil, Not, Num, String, TableExpr, UnsolvedBin, Var, expr_t, block_t, block, range_t, range, if_elseif_t, if_elseif, if_else_t, if_else, params_t, params, op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from "./LuaConstructor"
}
start returns [result: block_t]: v=start__y_ EOF { $result = localContext._v.result; };
start__y_ returns [block_t result]
: start__y__0__1=block { $result = localContext._start__y__0__1.result;
            }
;
nempty_list_o_stat_p_ returns [Array<stmt_t> result]
: nempty_list_o_stat_p__0__1=stat { $result = <Array<stmt_t>>[ localContext._nempty_list_o_stat_p__0__1.result ];
            }
| nempty_list_o_stat_p__2__1=nempty_list_o_stat_p_ nempty_list_o_stat_p__2__2=stat { $result = <Array<stmt_t>> appendList<stmt_t>(<Array<stmt_t>> localContext._nempty_list_o_stat_p__2__1.result, <stmt_t> localContext._nempty_list_o_stat_p__2__2.result);
            }
;
allow_empty_o_nempty_list_o_stat_p__p_ returns [Array<stmt_t> result]
:  { $result = <Array<stmt_t>>[  ];
            }
| allow_empty_o_nempty_list_o_stat_p__p__2__1=nempty_list_o_stat_p_ { $result = localContext._allow_empty_o_nempty_list_o_stat_p__p__2__1.result;
            }
;
list_o_stat_p_ returns [Array<stmt_t> result]
: list_o_stat_p__0__1=allow_empty_o_nempty_list_o_stat_p__p_ { $result = localContext._list_o_stat_p__0__1.result;
            }
;
opt_o_retstat_p_ returns [maybe_t<stmt_t> result]
: opt_o_retstat_p__0__1=retstat { $result = <maybe_t<stmt_t>> some<stmt_t>(<stmt_t> localContext._opt_o_retstat_p__0__1.result);
            }
|  { $result = <maybe_t<stmt_t>> none<stmt_t>();
            }
;
block returns [block_t result]
: block_0__1=list_o_stat_p_ block_0__2=opt_o_retstat_p_ { $result = <block_t> block(<Array<stmt_t>> localContext._block_0__1.result, <maybe_t<stmt_t>> localContext._block_0__2.result);
            }
;
opt_o__i__h__i__p_ returns [maybe_t<antlr.Token> result]
: opt_o__i__h__i__p__0__1=';' { $result = <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._opt_o__i__h__i__p__0__1);
            }
|  { $result = <maybe_t<antlr.Token>> none<antlr.Token>();
            }
;
retstat returns [stmt_t result]
: retstat_0__1='return' retstat_0__2=seplist_o__i__s__i__s_exp_p_ opt_o__i__h__i__p_ { $result = <stmt_t> ReturnStmt(<antlr.Token> localContext._retstat_0__1, <Array<expr_t>> localContext._retstat_0__2.result);
            }
;
nempty_list_o_elseif_p_ returns [Array<if_elseif_t> result]
: nempty_list_o_elseif_p__0__1=elseif { $result = <Array<if_elseif_t>>[ localContext._nempty_list_o_elseif_p__0__1.result ];
            }
| nempty_list_o_elseif_p__2__1=nempty_list_o_elseif_p_ nempty_list_o_elseif_p__2__2=elseif { $result = <Array<if_elseif_t>> appendList<if_elseif_t>(<Array<if_elseif_t>> localContext._nempty_list_o_elseif_p__2__1.result, <if_elseif_t> localContext._nempty_list_o_elseif_p__2__2.result);
            }
;
allow_empty_o_nempty_list_o_elseif_p__p_ returns [Array<if_elseif_t> result]
:  { $result = <Array<if_elseif_t>>[  ];
            }
| allow_empty_o_nempty_list_o_elseif_p__p__2__1=nempty_list_o_elseif_p_ { $result = localContext._allow_empty_o_nempty_list_o_elseif_p__p__2__1.result;
            }
;
list_o_elseif_p_ returns [Array<if_elseif_t> result]
: list_o_elseif_p__0__1=allow_empty_o_nempty_list_o_elseif_p__p_ { $result = localContext._list_o_elseif_p__0__1.result;
            }
;
opt_o_else_p_ returns [maybe_t<if_else_t> result]
: opt_o_else_p__0__1=else__x_ { $result = <maybe_t<if_else_t>> some<if_else_t>(<if_else_t> localContext._opt_o_else_p__0__1.result);
            }
|  { $result = <maybe_t<if_else_t>> none<if_else_t>();
            }
;
stat returns [stmt_t result]
: stat_0__1=';' { $result = <stmt_t> EmptyStmt(<antlr.Token> localContext._stat_0__1);
            }
| stat_2__1=nempty_seplist_o__i__s__i__s_exp_p_ '=' stat_2__3=nempty_seplist_o__i__s__i__s_exp_p_ { $result = <stmt_t> Assignment(<boolean> false, <Array<expr_t>> localContext._stat_2__1.result, <maybe_t<Array<expr_t>>> <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> localContext._stat_2__3.result));
            }
| stat_4__1=exp { $result = <stmt_t> ExprStmt(<expr_t> localContext._stat_4__1.result);
            }
| '::' stat_6__2=NAME '::' { $result = <stmt_t> LabelStmt(<antlr.Token> localContext._stat_6__2);
            }
| stat_8__1='break' { $result = <stmt_t> BreakStmt(<antlr.Token> localContext._stat_8__1);
            }
| stat_10__1='goto' stat_10__2=NAME { $result = <stmt_t> GotoStmt(<antlr.Token> localContext._stat_10__1, <antlr.Token> localContext._stat_10__2);
            }
| stat_12__1='do' stat_12__2=block 'end' { $result = <stmt_t> DoStmt(<antlr.Token> localContext._stat_12__1, <block_t> localContext._stat_12__2.result);
            }
| stat_14__1='while' stat_14__2=exp 'do' stat_14__4=block 'end' { $result = <stmt_t> WhileStmt(<antlr.Token> localContext._stat_14__1, <expr_t> localContext._stat_14__2.result, <block_t> localContext._stat_14__4.result);
            }
| stat_16__1='repeat' stat_16__2=block 'until' stat_16__4=exp { $result = <stmt_t> RepeatStmt(<antlr.Token> localContext._stat_16__1, <block_t> localContext._stat_16__2.result, <expr_t> localContext._stat_16__4.result);
            }
| stat_18__1='if' stat_18__2=exp 'then' stat_18__4=block stat_18__5=list_o_elseif_p_ stat_18__6=opt_o_else_p_ 'end' { $result = <stmt_t> IfStmt(<antlr.Token> localContext._stat_18__1, <expr_t> localContext._stat_18__2.result, <block_t> localContext._stat_18__4.result, <Array<if_elseif_t>> localContext._stat_18__5.result, <maybe_t<if_else_t>> localContext._stat_18__6.result);
            }
| stat_20__1='for' stat_20__2=NAME '=' stat_20__4=range 'do' stat_20__6=block 'end' { $result = <stmt_t> ForRangeStmt(<antlr.Token> localContext._stat_20__1, <antlr.Token> localContext._stat_20__2, <range_t> localContext._stat_20__4.result, <block_t> localContext._stat_20__6.result);
            }
| stat_22__1='for' stat_22__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ 'in' stat_22__4=nempty_seplist_o__i__s__i__s_exp_p_ 'do' stat_22__6=block 'end' { $result = <stmt_t> ForInStmt(<antlr.Token> localContext._stat_22__1, <Array<antlr.Token>> localContext._stat_22__2.result, <Array<expr_t>> localContext._stat_22__4.result, <block_t> localContext._stat_22__6.result);
            }
| stat_24__1='local' 'function' stat_24__3=funcname '(' stat_24__5=opt_o_parlist_p_ ')' stat_24__7=block 'end' { $result = <stmt_t> ExprStmt(<expr_t> <expr_t> FuncDef(<antlr.Token> localContext._stat_24__1, <boolean> true, <maybe_t<funcname_t>> <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> localContext._stat_24__3.result), <maybe_t<params_t>> localContext._stat_24__5.result, <block_t> localContext._stat_24__7.result));
            }
| 'local' stat_26__2=nempty_seplist_o__i__s__i__s__i_name_k__p_ stat_26__3=opt_assign_rhs { $result = <stmt_t> Assignment(<boolean> true, <Array<expr_t>> <Array<expr_t>> listMap<antlr.Token, expr_t>(<Array<antlr.Token>> localContext._stat_26__2.result, <(value:antlr.Token) => expr_t> Var), <maybe_t<Array<expr_t>>> localContext._stat_26__3.result);
            }
;
opt_assign_rhs returns [maybe_t<Array<expr_t>> result]
: '=' opt_assign_rhs_0__2=nempty_seplist_o__i__s__i__s_exp_p_ { $result = <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> localContext._opt_assign_rhs_0__2.result);
            }
|  { $result = <maybe_t<Array<expr_t>>> none<Array<expr_t>>();
            }
;
range returns [range_t result]
: range_0__1=exp ',' range_0__3=exp range_0__4=range_tail { $result = <range_t> range(<expr_t> localContext._range_0__1.result, <expr_t> localContext._range_0__3.result, <maybe_t<expr_t>> localContext._range_0__4.result);
            }
;
range_tail returns [maybe_t<expr_t> result]
: ',' range_tail_0__2=exp { $result = <maybe_t<expr_t>> some<expr_t>(<expr_t> localContext._range_tail_0__2.result);
            }
|  { $result = <maybe_t<expr_t>> none<expr_t>();
            }
;
elseif returns [if_elseif_t result]
: elseif_0__1='elseif' elseif_0__2=exp 'then' elseif_0__4=block { $result = <if_elseif_t> if_elseif(<antlr.Token> localContext._elseif_0__1, <expr_t> localContext._elseif_0__2.result, <block_t> localContext._elseif_0__4.result);
            }
;
else__x_ returns [if_else_t result]
: else__x__0__1='else' else__x__0__2=block { $result = <if_else_t> if_else(<antlr.Token> localContext._else__x__0__1, <block_t> localContext._else__x__0__2.result);
            }
;
exp returns [expr_t result]
: exp_0__1=binexp { let _ : number = 0;
                $result = localContext._exp_0__1.result;
            }
;
binexp returns [expr_t result]
: binexp_0__1=binseq { $result = <expr_t> mkBinOpSeq(<Array<op_t<expr_t>>> localContext._binexp_0__1.result, <(op:antlr.Token, l:expr_t, r:expr_t) => expr_t> Bin, <(value:Array<op_t<expr_t>>) => expr_t> UnsolvedBin);
            }
;
binseq returns [Array<op_t<expr_t>> result]
: binseq_0__1=binseq binseq_0__2=binop binseq_0__3=binoperand { $result = <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> localContext._binseq_0__1.result, <op_t<expr_t>> localContext._binseq_0__2.result), <op_t<expr_t>> localContext._binseq_0__3.result);
            }
| binseq_2__1=binoperand { $result = <Array<op_t<expr_t>>>[ localContext._binseq_2__1.result ];
            }
;
binoperand returns [op_t<expr_t> result]
: binoperand_0__1=unaryexp { $result = <op_t<expr_t>> mkOperand(<expr_t> localContext._binoperand_0__1.result);
            }
;
unaryexp returns [expr_t result]
: unaryexp_0__1='#' unaryexp_0__2=exponent { $result = <expr_t> Len(<antlr.Token> localContext._unaryexp_0__1, <expr_t> localContext._unaryexp_0__2.result);
            }
| unaryexp_2__1='-' unaryexp_2__2=exponent { $result = <expr_t> Neg(<antlr.Token> localContext._unaryexp_2__1, <expr_t> localContext._unaryexp_2__2.result);
            }
| unaryexp_4__1='~' unaryexp_4__2=exponent { $result = <expr_t> Inv(<antlr.Token> localContext._unaryexp_4__1, <expr_t> localContext._unaryexp_4__2.result);
            }
| unaryexp_6__1='not' unaryexp_6__2=exponent { $result = <expr_t> Not(<antlr.Token> localContext._unaryexp_6__1, <expr_t> localContext._unaryexp_6__2.result);
            }
| unaryexp_8__1=exponent { $result = localContext._unaryexp_8__1.result;
            }
;
exponent returns [expr_t result]
: exponent_0__1=prefixexp '^' exponent_0__3=exponent { $result = <expr_t> Exponent(<expr_t> localContext._exponent_0__1.result, <expr_t> localContext._exponent_0__3.result);
            }
| exponent_2__1=prefixexp { $result = localContext._exponent_2__1.result;
            }
;
prefixexp returns [expr_t result]
: prefixexp_0__1=NAME { $result = <expr_t> Var(<antlr.Token> localContext._prefixexp_0__1);
            }
| prefixexp_2__1='(' prefixexp_2__2=exp ')' { $result = <expr_t> NestedExp(<antlr.Token> localContext._prefixexp_2__1, <expr_t> localContext._prefixexp_2__2.result);
            }
| prefixexp_4__1=prefixexp prefixexp_4__2=args { $result = <expr_t> CallFunc(<expr_t> localContext._prefixexp_4__1.result, <arguments_t> localContext._prefixexp_4__2.result);
            }
| prefixexp_6__1=prefixexp ':' prefixexp_6__3=NAME prefixexp_6__4=args { $result = <expr_t> CallMethod(<expr_t> localContext._prefixexp_6__1.result, <antlr.Token> localContext._prefixexp_6__3, <arguments_t> localContext._prefixexp_6__4.result);
            }
| prefixexp_8__1=prefixexp '[' prefixexp_8__3=exp ']' { $result = <expr_t> Index(<expr_t> localContext._prefixexp_8__1.result, <expr_t> localContext._prefixexp_8__3.result);
            }
| prefixexp_10__1=prefixexp '.' prefixexp_10__3=NAME { $result = <expr_t> Attr(<expr_t> localContext._prefixexp_10__1.result, <antlr.Token> localContext._prefixexp_10__3);
            }
| prefixexp_12__1=atom { $result = localContext._prefixexp_12__1.result;
            }
;
atom returns [expr_t result]
: atom_0__1='nil' { $result = <expr_t> Nil(<antlr.Token> localContext._atom_0__1);
            }
| atom_2__1='false' { $result = <expr_t> Bool(<antlr.Token> localContext._atom_2__1, <boolean> false);
            }
| atom_4__1='true' { $result = <expr_t> Bool(<antlr.Token> localContext._atom_4__1, <boolean> true);
            }
| atom_6__1=NUMERAL { $result = <expr_t> Num(<antlr.Token> localContext._atom_6__1);
            }
| atom_8__1=STR_LIT { $result = <expr_t> String(<antlr.Token> localContext._atom_8__1);
            }
| atom_10__1=NESTED_STR { $result = <expr_t> String(<antlr.Token> localContext._atom_10__1);
            }
| atom_12__1='...' { $result = <expr_t> Ellipse(<antlr.Token> localContext._atom_12__1);
            }
| atom_14__1=functiondef { $result = localContext._atom_14__1.result;
            }
| atom_16__1=tableconstructor { $result = <expr_t> TableExpr(<table_t> localContext._atom_16__1.result);
            }
;
nempty_seplist_o__i__s__i__s_exp_p_ returns [Array<expr_t> result]
: nempty_seplist_o__i__s__i__s_exp_p__0__1=exp { $result = <Array<expr_t>>[ localContext._nempty_seplist_o__i__s__i__s_exp_p__0__1.result ];
            }
| nempty_seplist_o__i__s__i__s_exp_p__2__1=nempty_seplist_o__i__s__i__s_exp_p_ ',' nempty_seplist_o__i__s__i__s_exp_p__2__3=exp { $result = <Array<expr_t>> appendList<expr_t>(<Array<expr_t>> localContext._nempty_seplist_o__i__s__i__s_exp_p__2__1.result, <expr_t> localContext._nempty_seplist_o__i__s__i__s_exp_p__2__3.result);
            }
;
allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ returns [Array<expr_t> result]
:  { $result = <Array<expr_t>>[  ];
            }
| allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1=nempty_seplist_o__i__s__i__s_exp_p_ { $result = localContext._allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1.result;
            }
;
seplist_o__i__s__i__s_exp_p_ returns [Array<expr_t> result]
: seplist_o__i__s__i__s_exp_p__0__1=allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ { $result = localContext._seplist_o__i__s__i__s_exp_p__0__1.result;
            }
;
args returns [arguments_t result]
: args_0__1='(' args_0__2=seplist_o__i__s__i__s_exp_p_ ')' { $result = <arguments_t> PositionalArgs(<antlr.Token> localContext._args_0__1, <Array<expr_t>> localContext._args_0__2.result);
            }
| args_2__1=tableconstructor { $result = <arguments_t> TableArgs(<table_t> localContext._args_2__1.result);
            }
| args_4__1=STR_LIT { $result = <arguments_t> StringArg(<antlr.Token> localContext._args_4__1);
            }
;
opt_o_funcname_p_ returns [maybe_t<funcname_t> result]
: opt_o_funcname_p__0__1=funcname { $result = <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> localContext._opt_o_funcname_p__0__1.result);
            }
|  { $result = <maybe_t<funcname_t>> none<funcname_t>();
            }
;
opt_o_parlist_p_ returns [maybe_t<params_t> result]
: opt_o_parlist_p__0__1=parlist { $result = <maybe_t<params_t>> some<params_t>(<params_t> localContext._opt_o_parlist_p__0__1.result);
            }
|  { $result = <maybe_t<params_t>> none<params_t>();
            }
;
functiondef returns [expr_t result]
: functiondef_0__1='function' functiondef_0__2=opt_o_funcname_p_ '(' functiondef_0__4=opt_o_parlist_p_ ')' functiondef_0__6=block 'end' { $result = <expr_t> FuncDef(<antlr.Token> localContext._functiondef_0__1, <boolean> false, <maybe_t<funcname_t>> localContext._functiondef_0__2.result, <maybe_t<params_t>> localContext._functiondef_0__4.result, <block_t> localContext._functiondef_0__6.result);
            }
;
varargs returns [maybe_t<antlr.Token> result]
: ',' varargs_0__2='...' { $result = <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._varargs_0__2);
            }
|  { $result = <maybe_t<antlr.Token>> none<antlr.Token>();
            }
;
nempty_seplist_o__i__s__i__s__i_name_k__p_ returns [Array<antlr.Token> result]
: nempty_seplist_o__i__s__i__s__i_name_k__p__0__1=NAME { $result = <Array<antlr.Token>>[ localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 ];
            }
| nempty_seplist_o__i__s__i__s__i_name_k__p__2__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ ',' nempty_seplist_o__i__s__i__s__i_name_k__p__2__3=NAME { $result = <Array<antlr.Token>> appendList<antlr.Token>(<Array<antlr.Token>> localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__1.result, <antlr.Token> localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__3);
            }
;
parlist returns [params_t result]
: parlist_0__1='...' { $result = <params_t> params(<Array<antlr.Token>> <Array<antlr.Token>>[  ], <maybe_t<antlr.Token>> <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._parlist_0__1));
            }
| parlist_2__1=nempty_seplist_o__i__s__i__s__i_name_k__p_ parlist_2__2=varargs { $result = <params_t> params(<Array<antlr.Token>> localContext._parlist_2__1.result, <maybe_t<antlr.Token>> localContext._parlist_2__2.result);
            }
;
nempty_seplist_o_fieldsep_s_field_p_ returns [Array<table_field_t> result]
: nempty_seplist_o_fieldsep_s_field_p__0__1=field { $result = <Array<table_field_t>>[ localContext._nempty_seplist_o_fieldsep_s_field_p__0__1.result ];
            }
| nempty_seplist_o_fieldsep_s_field_p__2__1=nempty_seplist_o_fieldsep_s_field_p_ fieldsep nempty_seplist_o_fieldsep_s_field_p__2__3=field { $result = <Array<table_field_t>> appendList<table_field_t>(<Array<table_field_t>> localContext._nempty_seplist_o_fieldsep_s_field_p__2__1.result, <table_field_t> localContext._nempty_seplist_o_fieldsep_s_field_p__2__3.result);
            }
;
opt_o_fieldsep_p_ returns [maybe_t<number> result]
: opt_o_fieldsep_p__0__1=fieldsep { $result = <maybe_t<number>> some<number>(<number> localContext._opt_o_fieldsep_p__0__1.result);
            }
|  { $result = <maybe_t<number>> none<number>();
            }
;
tableconstructor returns [table_t result]
: tableconstructor_0__1='{' tableconstructor_0__2=nempty_seplist_o_fieldsep_s_field_p_ opt_o_fieldsep_p_ '}' { $result = <table_t> TableConstructor(<antlr.Token> localContext._tableconstructor_0__1, <Array<table_field_t>> localContext._tableconstructor_0__2.result);
            }
| tableconstructor_2__1='{' '}' { $result = <table_t> TableConstructor(<antlr.Token> localContext._tableconstructor_2__1, <Array<table_field_t>> <Array<table_field_t>>[  ]);
            }
;
funcname returns [funcname_t result]
: funcname_0__1=funcname '.' funcname_0__3=NAME { $result = <funcname_t> DotName(<funcname_t> localContext._funcname_0__1.result, <antlr.Token> localContext._funcname_0__3);
            }
| funcname_2__1=funcname ':' funcname_2__3=NAME { $result = <funcname_t> MethodName(<funcname_t> localContext._funcname_2__1.result, <antlr.Token> localContext._funcname_2__3);
            }
| funcname_4__1=NAME { $result = <funcname_t> VarName(<antlr.Token> localContext._funcname_4__1);
            }
;
field returns [table_field_t result]
: field_0__1='[' field_0__2=exp ']' '=' field_0__5=exp { $result = <table_field_t> IndexField(<antlr.Token> localContext._field_0__1, <expr_t> localContext._field_0__2.result, <expr_t> localContext._field_0__5.result);
            }
| field_2__1=NAME '=' field_2__3=exp { $result = <table_field_t> NameField(<antlr.Token> localContext._field_2__1, <expr_t> localContext._field_2__3.result);
            }
| field_4__1=exp { $result = <table_field_t> ElementField(<expr_t> localContext._field_4__1.result);
            }
;
fieldsep returns [number result]
: ',' { $result = 0;
            }
| ';' { $result = 0;
            }
;
binop returns [op_t<expr_t> result]
: binop_0__1='or' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_0__1);
            }
| binop_2__1='and' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_2__1);
            }
| binop_4__1='<' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_4__1);
            }
| binop_6__1='>' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_6__1);
            }
| binop_8__1='<=' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_8__1);
            }
| binop_10__1='>=' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_10__1);
            }
| binop_12__1='~=' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_12__1);
            }
| binop_14__1='==' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_14__1);
            }
| binop_16__1='|' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_16__1);
            }
| binop_18__1='~' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_18__1);
            }
| binop_20__1='&' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_20__1);
            }
| binop_22__1='<<' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_22__1);
            }
| binop_24__1='>>' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_24__1);
            }
| binop_26__1='..' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_26__1);
            }
| binop_28__1='+' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_28__1);
            }
| binop_30__1='-' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_30__1);
            }
| binop_32__1='*' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_32__1);
            }
| binop_34__1='/' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_34__1);
            }
| binop_36__1='//' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_36__1);
            }
| binop_38__1='%' { $result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_38__1);
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
