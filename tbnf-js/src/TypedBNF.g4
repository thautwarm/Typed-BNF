grammar TypedBNF;
@header {
import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF-constructor"
}
start returns [result: Array<definition>]: v=start__y_ EOF { $result = localContext._v.result; };
list_o_toplevel_p_ returns [Array<definition> result]
: list_o_toplevel_p__0__1=toplevel { $result = <Array<definition>>[ localContext._list_o_toplevel_p__0__1.result ];
            }
| list_o_toplevel_p__2__1=list_o_toplevel_p_ list_o_toplevel_p__2__2=toplevel { $result = <Array<definition>> addList<definition>(<Array<definition>> localContext._list_o_toplevel_p__2__1.result, <definition> localContext._list_o_toplevel_p__2__2.result);
            }
;
start__y_ returns [Array<definition> result]
: start__y__0__1=list_o_toplevel_p_ { $result = localContext._start__y__0__1.result;
            }
;
identstr returns [string result]
: identstr_0__1=CNAMEPLUS { $result = <string> str(<Token> localContext._identstr_0__1);
            }
;
typ returns [monot result]
: typ_0__1=arrow_typ { $result = localContext._typ_0__1.result;
            }
;
slist_o__i__s__i__s_param_type_p_ returns [Array<[string, monot]> result]
: slist_o__i__s__i__s_param_type_p__0__1=param_type { $result = <Array<[string, monot]>>[ localContext._slist_o__i__s__i__s_param_type_p__0__1.result ];
            }
| slist_o__i__s__i__s_param_type_p__2__1=slist_o__i__s__i__s_param_type_p_ ',' slist_o__i__s__i__s_param_type_p__2__3=param_type { $result = <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> localContext._slist_o__i__s__i__s_param_type_p__2__1.result, <[string, monot]> localContext._slist_o__i__s__i__s_param_type_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_param_type_p__p_ returns [Array<[string, monot]> result]
:  { $result = <Array<[string, monot]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_param_type_p__p__2__1=slist_o__i__s__i__s_param_type_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_param_type_p_ returns [Array<[string, monot]> result]
: eslist_o__i__s__i__s_param_type_p__0__1=empty_o_slist_o__i__s__i__s_param_type_p__p_ { $result = localContext._eslist_o__i__s__i__s_param_type_p__0__1.result;
            }
;
arrow_typ returns [monot result]
: arrow_typ_0__1=typ2 '->' arrow_typ_0__3=arrow_typ { $result = <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>>[ <[string, monot]>["value", localContext._arrow_typ_0__1.result] ], <monot> localContext._arrow_typ_0__3.result);
            }
| '(' arrow_typ_2__2=eslist_o__i__s__i__s_param_type_p_ ')' '->' arrow_typ_2__5=arrow_typ { $result = <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>> process_tparam(<Array<[string, monot]>> localContext._arrow_typ_2__2.result), <monot> localContext._arrow_typ_2__5.result);
            }
| arrow_typ_4__1=type_product { $result = <monot> MK_TTuple(<Array<monot>> localContext._arrow_typ_4__1.result);
            }
;
slist_o__i__s__i__s_typ_p_ returns [Array<monot> result]
: slist_o__i__s__i__s_typ_p__0__1=typ { $result = <Array<monot>>[ localContext._slist_o__i__s__i__s_typ_p__0__1.result ];
            }
| slist_o__i__s__i__s_typ_p__2__1=slist_o__i__s__i__s_typ_p_ ',' slist_o__i__s__i__s_typ_p__2__3=typ { $result = <Array<monot>> addList<monot>(<Array<monot>> localContext._slist_o__i__s__i__s_typ_p__2__1.result, <monot> localContext._slist_o__i__s__i__s_typ_p__2__3.result);
            }
;
typ2 returns [monot result]
: typ2_0__1=CNAMEPLUS { $result = <monot> MK_TConst(<string> <string> str(<Token> localContext._typ2_0__1));
            }
| typ2_2__1=typ2 '<' typ2_2__3=slist_o__i__s__i__s_typ_p_ '>' { $result = <monot> MK_TApp(<monot> localContext._typ2_2__1.result, <Array<monot>> localContext._typ2_2__3.result);
            }
;
type_product returns [Array<monot> result]
: type_product_0__1=type_product '*' type_product_0__3=typ2 { $result = <Array<monot>> addList<monot>(<Array<monot>> localContext._type_product_0__1.result, <monot> localContext._type_product_0__3.result);
            }
| type_product_2__1=typ2 { $result = <Array<monot>>[ localContext._type_product_2__1.result ];
            }
;
top_typ returns [polyt result]
: '<' top_typ_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' top_typ_0__4=typ { $result = <polyt> MK_Poly(<Array<string>> localContext._top_typ_0__2.result, <monot> localContext._top_typ_0__4.result);
            }
| top_typ_2__1=typ { $result = <polyt> MK_Mono(<monot> localContext._top_typ_2__1.result);
            }
;
tvar_str returns [string result]
: tvar_str_0__1=CNAMEPLUS { $result = <string> str(<Token> localContext._tvar_str_0__1);
            }
;
param_type returns [[string, monot] result]
: param_type_0__1=CNAMEPLUS ':' param_type_0__3=typ { $result = <[string, monot]>[<string> str(<Token> localContext._param_type_0__1), localContext._param_type_0__3.result];
            }
| param_type_2__1=typ { $result = <[string, monot]>["_", localContext._param_type_2__1.result];
            }
;
slist_o__i__s__i__s_tvar_str_p_ returns [Array<string> result]
: slist_o__i__s__i__s_tvar_str_p__0__1=tvar_str { $result = <Array<string>>[ localContext._slist_o__i__s__i__s_tvar_str_p__0__1.result ];
            }
| slist_o__i__s__i__s_tvar_str_p__2__1=slist_o__i__s__i__s_tvar_str_p_ ',' slist_o__i__s__i__s_tvar_str_p__2__3=tvar_str { $result = <Array<string>> addList<string>(<Array<string>> localContext._slist_o__i__s__i__s_tvar_str_p__2__1.result, <string> localContext._slist_o__i__s__i__s_tvar_str_p__2__3.result);
            }
;
type_params returns [Array<string> result]
: '<' type_params_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' { $result = localContext._type_params_0__2.result;
            }
|  { $result = <Array<string>>[  ];
            }
;
field_ann returns [[string, monot, position] result]
: field_ann_0__1=CNAMEPLUS ':' field_ann_0__3=typ { $result = <[string, monot, position]>[<string> str(<Token> localContext._field_ann_0__1), localContext._field_ann_0__3.result, <position> mkpos(<Token> localContext._field_ann_0__1)];
            }
;
slist_o__i__s__i__s_field_ann_p_ returns [Array<[string, monot, position]> result]
: slist_o__i__s__i__s_field_ann_p__0__1=field_ann { $result = <Array<[string, monot, position]>>[ localContext._slist_o__i__s__i__s_field_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_field_ann_p__2__1=slist_o__i__s__i__s_field_ann_p_ ',' slist_o__i__s__i__s_field_ann_p__2__3=field_ann { $result = <Array<[string, monot, position]>> addList<[string, monot, position]>(<Array<[string, monot, position]>> localContext._slist_o__i__s__i__s_field_ann_p__2__1.result, <[string, monot, position]> localContext._slist_o__i__s__i__s_field_ann_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_field_ann_p__p_ returns [Array<[string, monot, position]> result]
:  { $result = <Array<[string, monot, position]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1=slist_o__i__s__i__s_field_ann_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_field_ann_p_ returns [Array<[string, monot, position]> result]
: eslist_o__i__s__i__s_field_ann_p__0__1=empty_o_slist_o__i__s__i__s_field_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_field_ann_p__0__1.result;
            }
;
field_anns returns [[boolean, Array<[string, monot, position]>] result]
: '(' field_anns_0__2=eslist_o__i__s__i__s_field_ann_p_ ')' { $result = <[boolean, Array<[string, monot, position]>]>[true, localContext._field_anns_0__2.result];
            }
|  { $result = <[boolean, Array<[string, monot, position]>]>[false, <Array<[string, monot, position]>>[  ]];
            }
;
decl returns [definition result]
: 'extern' decl_0__2='var' decl_0__3=identstr ':' decl_0__5=top_typ { $result = <definition> MK_Declvar(<string> localContext._decl_0__3.result, <polyt> localContext._decl_0__5.result, <position> <position> mkpos(<Token> localContext._decl_0__2));
            }
| decl_2__1='case' decl_2__2=identstr ':' decl_2__4=typ { $result = <definition> MK_Declctor(<string> localContext._decl_2__2.result, <monot> localContext._decl_2__4.result, <position> <position> mkpos(<Token> localContext._decl_2__1));
            }
| decl_4__1='extern' 'type' decl_4__3=identstr decl_4__4=type_params decl_4__5=field_anns { $result = <definition> MK_Decltype(<boolean> true, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> localContext._decl_4__5.result), <string> localContext._decl_4__3.result, <Array<string>> localContext._decl_4__4.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> localContext._decl_4__5.result), <position> <position> mkpos(<Token> localContext._decl_4__1));
            }
| decl_6__1='type' decl_6__2=identstr decl_6__3=type_params decl_6__4=field_anns { $result = <definition> MK_Decltype(<boolean> false, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> localContext._decl_6__4.result), <string> localContext._decl_6__2.result, <Array<string>> localContext._decl_6__3.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> localContext._decl_6__4.result), <position> <position> mkpos(<Token> localContext._decl_6__1));
            }
;
toplevel returns [definition result]
: toplevel_0__1=def { $result = localContext._toplevel_0__1.result;
            }
| toplevel_2__1=decl { $result = localContext._toplevel_2__1.result;
            }
| toplevel_4__1=lexerdef { $result = localContext._toplevel_4__1.result;
            }
| toplevel_6__1='ignore' toplevel_6__2=slist_o__i__s__i__s_identstr_p_ { $result = <definition> MK_Defignore(<Array<string>> localContext._toplevel_6__2.result, <position> <position> mkpos(<Token> localContext._toplevel_6__1));
            }
;
slist_o__i__s__i__s_identstr_p_ returns [Array<string> result]
: slist_o__i__s__i__s_identstr_p__0__1=identstr { $result = <Array<string>>[ localContext._slist_o__i__s__i__s_identstr_p__0__1.result ];
            }
| slist_o__i__s__i__s_identstr_p__2__1=slist_o__i__s__i__s_identstr_p_ ',' slist_o__i__s__i__s_identstr_p__2__3=identstr { $result = <Array<string>> addList<string>(<Array<string>> localContext._slist_o__i__s__i__s_identstr_p__2__1.result, <string> localContext._slist_o__i__s__i__s_identstr_p__2__3.result);
            }
;
def returns [definition result]
: def_0__1=CNAMEPLUS '(' def_0__3=slist_o__i__s__i__s_identstr_p_ ')' def_0__5=productions { $result = <definition> MK_Defmacro(<string> <string> str(<Token> localContext._def_0__1), <Array<string>> localContext._def_0__3.result, <Array<[position, production]>> localContext._def_0__5.result, <position> <position> mkpos(<Token> localContext._def_0__1));
            }
| def_2__1=CNAMEPLUS def_2__2=productions { $result = <definition> MK_Defrule(<string> <string> str(<Token> localContext._def_2__1), <Array<[position, production]>> localContext._def_2__2.result, <position> <position> mkpos(<Token> localContext._def_2__1));
            }
;
productions returns [Array<[position, production]> result]
: productions_0__1=':' productions_0__2=production { $result = <Array<[position, production]>>[ <[position, production]>[<position> mkpos(<Token> localContext._productions_0__1), localContext._productions_0__2.result] ];
            }
| productions_2__1=productions productions_2__2='|' productions_2__3=production { $result = <Array<[position, production]>> addList<[position, production]>(<Array<[position, production]>> localContext._productions_2__1.result, <[position, production]> <[position, production]>[<position> mkpos(<Token> localContext._productions_2__2), localContext._productions_2__3.result]);
            }
;
list_o_psym_p_ returns [Array<symbol> result]
: list_o_psym_p__0__1=psym { $result = <Array<symbol>>[ localContext._list_o_psym_p__0__1.result ];
            }
| list_o_psym_p__2__1=list_o_psym_p_ list_o_psym_p__2__2=psym { $result = <Array<symbol>> addList<symbol>(<Array<symbol>> localContext._list_o_psym_p__2__1.result, <symbol> localContext._list_o_psym_p__2__2.result);
            }
;
empty_o_list_o_psym_p__p_ returns [Array<symbol> result]
:  { $result = <Array<symbol>>[  ];
            }
| empty_o_list_o_psym_p__p__2__1=list_o_psym_p_ { $result = localContext._empty_o_list_o_psym_p__p__2__1.result;
            }
;
elist_o_psym_p_ returns [Array<symbol> result]
: elist_o_psym_p__0__1=empty_o_list_o_psym_p__p_ { $result = localContext._elist_o_psym_p__0__1.result;
            }
;
production returns [production result]
: production_0__1=elist_o_psym_p_ '{' production_0__3=expr '}' { $result = <production> MK_production(<Array<symbol>> localContext._production_0__1.result, <expr> localContext._production_0__3.result);
            }
;
slist_o__i__s__i__s_psym_p_ returns [Array<symbol> result]
: slist_o__i__s__i__s_psym_p__0__1=psym { $result = <Array<symbol>>[ localContext._slist_o__i__s__i__s_psym_p__0__1.result ];
            }
| slist_o__i__s__i__s_psym_p__2__1=slist_o__i__s__i__s_psym_p_ ',' slist_o__i__s__i__s_psym_p__2__3=psym { $result = <Array<symbol>> addList<symbol>(<Array<symbol>> localContext._slist_o__i__s__i__s_psym_p__2__1.result, <symbol> localContext._slist_o__i__s__i__s_psym_p__2__3.result);
            }
;
psym returns [symbol result]
: '<' psym_0__2=identstr '>' { $result = <symbol> MK_Term(<string> localContext._psym_0__2.result, <boolean> false);
            }
| psym_2__1=ESCAPED_STRING { $result = <symbol> MK_Term(<string> <string> unescape(<string> <string> str(<Token> localContext._psym_2__1)), <boolean> true);
            }
| psym_4__1=identstr { $result = <symbol> MK_Nonterm(<string> localContext._psym_4__1.result);
            }
| psym_6__1=CNAMEPLUS '(' psym_6__3=slist_o__i__s__i__s_psym_p_ ')' { $result = <symbol> MK_Macrocall(<string> <string> str(<Token> localContext._psym_6__1), <Array<symbol>> localContext._psym_6__3.result, <position> <position> mkpos(<Token> localContext._psym_6__1));
            }
;
ann returns [[string, monot] result]
: ann_0__1=identstr ':' ann_0__3=typ { $result = <[string, monot]>[localContext._ann_0__1.result, localContext._ann_0__3.result];
            }
;
slist_o__i__s__i__s_ann_p_ returns [Array<[string, monot]> result]
: slist_o__i__s__i__s_ann_p__0__1=ann { $result = <Array<[string, monot]>>[ localContext._slist_o__i__s__i__s_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_ann_p__2__1=slist_o__i__s__i__s_ann_p_ ',' slist_o__i__s__i__s_ann_p__2__3=ann { $result = <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> localContext._slist_o__i__s__i__s_ann_p__2__1.result, <[string, monot]> localContext._slist_o__i__s__i__s_ann_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_ann_p__p_ returns [Array<[string, monot]> result]
:  { $result = <Array<[string, monot]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_ann_p__p__2__1=slist_o__i__s__i__s_ann_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_ann_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_ann_p_ returns [Array<[string, monot]> result]
: eslist_o__i__s__i__s_ann_p__0__1=empty_o_slist_o__i__s__i__s_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_ann_p__0__1.result;
            }
;
func_parameters returns [Array<[string, monot]> result]
: '(' func_parameters_0__2=eslist_o__i__s__i__s_ann_p_ ')' { $result = localContext._func_parameters_0__2.result;
            }
;
expr returns [expr result]
: expr_0__1='let' expr_0__2=identstr '=' expr_0__4=expr 'in' expr_0__6=expr { $result = <expr> MK_Expr(<node> <node> MK_ELet(<string> localContext._expr_0__2.result, <expr> localContext._expr_0__4.result, <expr> localContext._expr_0__6.result), <position> <position> mkpos(<Token> localContext._expr_0__1));
            }
| expr_2__1='fun' expr_2__2=func_parameters '->' expr_2__4=expr { $result = <expr> MK_Expr(<node> <node> MK_EFun(<Array<[string, monot]>> localContext._expr_2__2.result, <expr> localContext._expr_2__4.result), <position> <position> mkpos(<Token> localContext._expr_2__1));
            }
| expr_4__1=call { $result = localContext._expr_4__1.result;
            }
| expr_6__1=call ';' expr_6__3=expr { $result = <expr> MK_Expr(<node> <node> MK_ELet(<string> "_", <expr> localContext._expr_6__1.result, <expr> localContext._expr_6__3.result), <position> <position> getpos(<expr> localContext._expr_6__1.result));
            }
;
call returns [expr result]
: call_0__1=call '(' call_0__3=eslist_o__i__s__i__s_expr_p_ ')' { $result = <expr> MK_Expr(<node> <node> MK_EApp(<expr> localContext._call_0__1.result, <Array<expr>> localContext._call_0__3.result), <position> <position> getpos(<expr> localContext._call_0__1.result));
            }
| call_2__1=atomexp { $result = localContext._call_2__1.result;
            }
;
empty_o_slist_o__i__s__i__s_expr_p__p_ returns [Array<expr> result]
:  { $result = <Array<expr>>[  ];
            }
| empty_o_slist_o__i__s__i__s_expr_p__p__2__1=slist_o__i__s__i__s_expr_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_expr_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_expr_p_ returns [Array<expr> result]
: eslist_o__i__s__i__s_expr_p__0__1=empty_o_slist_o__i__s__i__s_expr_p__p_ { $result = localContext._eslist_o__i__s__i__s_expr_p__0__1.result;
            }
;
slist_o__i__s__i__s_expr_p_ returns [Array<expr> result]
: slist_o__i__s__i__s_expr_p__0__1=expr { $result = <Array<expr>>[ localContext._slist_o__i__s__i__s_expr_p__0__1.result ];
            }
| slist_o__i__s__i__s_expr_p__2__1=slist_o__i__s__i__s_expr_p_ ',' slist_o__i__s__i__s_expr_p__2__3=expr { $result = <Array<expr>> addList<expr>(<Array<expr>> localContext._slist_o__i__s__i__s_expr_p__2__1.result, <expr> localContext._slist_o__i__s__i__s_expr_p__2__3.result);
            }
;
atomexp returns [expr result]
: atomexp_0__1=INT { $result = <expr> MK_Expr(<node> <node> MK_EInt(<number> <number> toint(<Token> localContext._atomexp_0__1)), <position> <position> mkpos(<Token> localContext._atomexp_0__1));
            }
| atomexp_2__1=FLOAT { $result = <expr> MK_Expr(<node> <node> MK_EFlt(<number> <number> tofloat(<Token> localContext._atomexp_2__1)), <position> <position> mkpos(<Token> localContext._atomexp_2__1));
            }
| atomexp_4__1=ESCAPED_STRING { $result = <expr> MK_Expr(<node> <node> MK_EStr(<string> <string> unescape(<string> <string> str(<Token> localContext._atomexp_4__1))), <position> <position> mkpos(<Token> localContext._atomexp_4__1));
            }
| atomexp_6__1='$' atomexp_6__2=INT { $result = <expr> MK_Expr(<node> <node> MK_ESlot(<number> <number> toint(<Token> localContext._atomexp_6__2)), <position> <position> mkpos(<Token> localContext._atomexp_6__1));
            }
| atomexp_8__1='[' atomexp_8__2=eslist_o__i__s__i__s_expr_p_ ']' { $result = <expr> MK_Expr(<node> <node> MK_EList(<Array<expr>> localContext._atomexp_8__2.result), <position> <position> mkpos(<Token> localContext._atomexp_8__1));
            }
| atomexp_10__1='(' ')' { $result = <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> <Array<expr>>[  ]), <position> <position> mkpos(<Token> localContext._atomexp_10__1));
            }
| atomexp_12__1='(' atomexp_12__2=slist_o__i__s__i__s_expr_p_ ')' { $result = <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> localContext._atomexp_12__2.result), <position> <position> mkpos(<Token> localContext._atomexp_12__1));
            }
| atomexp_14__1=CNAMEPLUS { $result = <expr> MK_Expr(<node> <node> MK_EVar(<string> <string> str(<Token> localContext._atomexp_14__1)), <position> <position> mkpos(<Token> localContext._atomexp_14__1));
            }
| atomexp_16__1=atomexp '.' atomexp_16__3=CNAMEPLUS { $result = <expr> MK_Expr(<node> <node> MK_EField(<expr> localContext._atomexp_16__1.result, <string> <string> str(<Token> localContext._atomexp_16__3)), <position> <position> getpos(<expr> localContext._atomexp_16__1.result));
            }
| atomexp_18__1='true' { $result = <expr> MK_Expr(<node> <node> MK_EBool(<boolean> true), <position> <position> mkpos(<Token> localContext._atomexp_18__1));
            }
| atomexp_20__1='false' { $result = <expr> MK_Expr(<node> <node> MK_EBool(<boolean> false), <position> <position> mkpos(<Token> localContext._atomexp_20__1));
            }
;
slist_o__i__u__i__s_lexer_and_p_ returns [Array<lexerule> result]
: slist_o__i__u__i__s_lexer_and_p__0__1=lexer_and { $result = <Array<lexerule>>[ localContext._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
            }
| slist_o__i__u__i__s_lexer_and_p__2__1=slist_o__i__u__i__s_lexer_and_p_ '|' slist_o__i__u__i__s_lexer_and_p__2__3=lexer_and { $result = <Array<lexerule>> addList<lexerule>(<Array<lexerule>> localContext._slist_o__i__u__i__s_lexer_and_p__2__1.result, <lexerule> localContext._slist_o__i__u__i__s_lexer_and_p__2__3.result);
            }
;
lexer__y_ returns [lexerule result]
: lexer__y__0__1=slist_o__i__u__i__s_lexer_and_p_ { $result = <lexerule> MK_LOr(<Array<lexerule>> localContext._lexer__y__0__1.result);
            }
;
list_o_lexer_atomexpr_p_ returns [Array<lexerule> result]
: list_o_lexer_atomexpr_p__0__1=lexer_atomexpr { $result = <Array<lexerule>>[ localContext._list_o_lexer_atomexpr_p__0__1.result ];
            }
| list_o_lexer_atomexpr_p__2__1=list_o_lexer_atomexpr_p_ list_o_lexer_atomexpr_p__2__2=lexer_atomexpr { $result = <Array<lexerule>> addList<lexerule>(<Array<lexerule>> localContext._list_o_lexer_atomexpr_p__2__1.result, <lexerule> localContext._list_o_lexer_atomexpr_p__2__2.result);
            }
;
lexer_and returns [lexerule result]
: lexer_and_0__1=list_o_lexer_atomexpr_p_ { $result = <lexerule> MK_LSeq(<Array<lexerule>> localContext._lexer_and_0__1.result);
            }
;
lexer_atomexpr returns [lexerule result]
: lexer_atomexpr_0__1=lexer_atomexpr '+' { $result = <lexerule> MK_LPlus(<lexerule> localContext._lexer_atomexpr_0__1.result);
            }
| lexer_atomexpr_2__1=lexer_atomexpr '*' { $result = <lexerule> MK_LStar(<lexerule> localContext._lexer_atomexpr_2__1.result);
            }
| lexer_atomexpr_4__1=lexer_atomexpr '?' { $result = <lexerule> MK_LOptional(<lexerule> localContext._lexer_atomexpr_4__1.result);
            }
| lexer_atomexpr_6__1=lexer_atom { $result = localContext._lexer_atomexpr_6__1.result;
            }
;
lexer_atom returns [lexerule result]
: lexer_atom_0__1=ESCAPED_STRING { $result = <lexerule> MK_LStr(<string> <string> unescape(<string> <string> str(<Token> localContext._lexer_atom_0__1)));
            }
| '!' lexer_atom_2__2=lexer_atom { $result = <lexerule> MK_LNot(<lexerule> localContext._lexer_atom_2__2.result);
            }
| '(' lexer_atom_4__2=lexer__y_ ')' { $result = <lexerule> MK_LGroup(<lexerule> localContext._lexer_atom_4__2.result);
            }
| '\\d' { $result = MK_LNumber;
            }
| lexer_atom_8__1=RANGE { $result = <lexerule> getrange(<string> <string> str(<Token> localContext._lexer_atom_8__1));
            }
| lexer_atom_10__1=UNICODE_RANGE { $result = <lexerule> getunicoderange(<string> <string> str(<Token> localContext._lexer_atom_10__1));
            }
| '_' { $result = MK_LWildcard;
            }
| '.' { $result = MK_LWildcard;
            }
| lexer_atom_16__1=CNAMEPLUS { $result = <lexerule> MK_LRef(<string> <string> str(<Token> localContext._lexer_atom_16__1));
            }
;
lexerdef returns [definition result]
: lexerdef_0__1=CNAMEPLUS '=' lexerdef_0__3=lexer__y_ ';' { $result = <definition> MK_Deflexer(<string> <string> str(<Token> localContext._lexerdef_0__1), <lexerule> localContext._lexerdef_0__3.result, <position> <position> mkpos(<Token> localContext._lexerdef_0__1));
            }
;
fragment UCODE : (DIGIT | [\u0061-\u0066] | [\u0041-\u0046]) ;
fragment UNICODE : '\\' 'u' UCODE UCODE UCODE UCODE ;
UNICODE_RANGE : '[' UNICODE '-' UNICODE ']' ;
RANGE : '[' . '-' . ']' ;
fragment LCASE_LETTER : [\u0061-\u007A] ;
fragment UCASE_LETTER : [\u0041-\u005A] ;
fragment LETTER : (UCASE_LETTER | LCASE_LETTER) ;
fragment WORD : LETTER+ ;
CNAMEPLUS : ('_' | LETTER) ('_' | '-' | LETTER | DIGIT)* ;
INT : DIGIT+ ;
fragment DIGIT : [\u0030-\u0039] ;
WS : (' ' | '\t' | '\r' | '\n') -> channel(HIDDEN);
FLOAT : INT ('.' INT)? (('E' | 'e') INT)? ;
fragment ESC1 : ('a' | 'b' | 't' | 'n' | 'r' | '\\' | '"') ;
fragment ESC2 : ('a' | 'b' | 't' | 'n' | 'r' | '\\' | '\'') ;
ESCAPED_STRING : ('"' (('\\' ESC1) | ~('"' | '\\'))* '"') | ('\'' (('\\' ESC2) | ~('\'' | '\\'))* '\'') ;
CPP_COMMENT : '/*' .*? '*/' -> channel(HIDDEN);
C_COMMENT : '//' ~'\n'* -> channel(HIDDEN);
