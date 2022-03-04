grammar TypedBNF;
@header {
import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF_require"
}
start returns [result: list<definition>]: v=start__y_ EOF { $result = _localctx._v.result; };

















list_o_toplevel_p_ returns [list<definition> result]
: list_o_toplevel_p__0__1=toplevel { 
                $result = <list<definition>>[ _localctx._list_o_toplevel_p__0__1.result ];
            }
| list_o_toplevel_p__1__1=list_o_toplevel_p_ list_o_toplevel_p__1__2=toplevel { 
                $result = <list<definition>> addList<definition>(<list<definition>> _localctx._list_o_toplevel_p__1__1.result, <definition> _localctx._list_o_toplevel_p__1__2.result);
            }
;
start__y_ returns [list<definition> result]
: start__y__0__1=list_o_toplevel_p_ { 
                $result = _localctx._start__y__0__1.result;
            }
;
identstr returns [str result]
: identstr_0__1=CNAMEPLUS { 
                $result = <str> str(<token> _localctx._identstr_0__1);
            }
;
typ returns [monot result]
: typ_0__1=arrow_typ { 
                $result = _localctx._typ_0__1.result;
            }
;
slist_o__i__s__i__s_param_type_p_ returns [list<[str, monot]> result]
: slist_o__i__s__i__s_param_type_p__0__1=param_type { 
                $result = <list<[str, monot]>>[ _localctx._slist_o__i__s__i__s_param_type_p__0__1.result ];
            }
| slist_o__i__s__i__s_param_type_p__1__1=slist_o__i__s__i__s_param_type_p_ ',' slist_o__i__s__i__s_param_type_p__1__3=param_type { 
                $result = <list<[str, monot]>> addList<[str, monot]>(<list<[str, monot]>> _localctx._slist_o__i__s__i__s_param_type_p__1__1.result, <[str, monot]> _localctx._slist_o__i__s__i__s_param_type_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_param_type_p__p_ returns [list<[str, monot]> result]
:  { 
                $result = <list<[str, monot]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_param_type_p__p__1__1=slist_o__i__s__i__s_param_type_p_ { 
                $result = _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_param_type_p_ returns [list<[str, monot]> result]
: eslist_o__i__s__i__s_param_type_p__0__1=empty_o_slist_o__i__s__i__s_param_type_p__p_ { 
                $result = _localctx._eslist_o__i__s__i__s_param_type_p__0__1.result;
            }
;
arrow_typ returns [monot result]
: arrow_typ_0__1=typ2 '->' arrow_typ_0__3=arrow_typ { 
                $result = <monot> MK_TFun(<list<[str, monot]>> <list<[str, monot]>>[ <[str, monot]>["value", _localctx._arrow_typ_0__1.result] ], <monot> _localctx._arrow_typ_0__3.result);
            }
| '(' arrow_typ_1__2=eslist_o__i__s__i__s_param_type_p_ ')' '->' arrow_typ_1__5=arrow_typ { 
                $result = <monot> MK_TFun(<list<[str, monot]>> <list<[str, monot]>> process_tparam(<list<[str, monot]>> _localctx._arrow_typ_1__2.result), <monot> _localctx._arrow_typ_1__5.result);
            }
| arrow_typ_2__1=type_product { 
                $result = <monot> MK_TTuple(<list<monot>> _localctx._arrow_typ_2__1.result);
            }
;
slist_o__i__s__i__s_typ_p_ returns [list<monot> result]
: slist_o__i__s__i__s_typ_p__0__1=typ { 
                $result = <list<monot>>[ _localctx._slist_o__i__s__i__s_typ_p__0__1.result ];
            }
| slist_o__i__s__i__s_typ_p__1__1=slist_o__i__s__i__s_typ_p_ ',' slist_o__i__s__i__s_typ_p__1__3=typ { 
                $result = <list<monot>> addList<monot>(<list<monot>> _localctx._slist_o__i__s__i__s_typ_p__1__1.result, <monot> _localctx._slist_o__i__s__i__s_typ_p__1__3.result);
            }
;
typ2 returns [monot result]
: typ2_0__1=CNAMEPLUS { 
                $result = <monot> MK_TConst(<str> <str> str(<token> _localctx._typ2_0__1));
            }
| typ2_1__1=tvar { 
                $result = _localctx._typ2_1__1.result;
            }
| typ2_2__1=typ2 '<' typ2_2__3=slist_o__i__s__i__s_typ_p_ '>' { 
                $result = <monot> MK_TApp(<monot> _localctx._typ2_2__1.result, <list<monot>> _localctx._typ2_2__3.result);
            }
;
type_product returns [list<monot> result]
: type_product_0__1=type_product '*' type_product_0__3=typ2 { 
                $result = <list<monot>> addList<monot>(<list<monot>> _localctx._type_product_0__1.result, <monot> _localctx._type_product_0__3.result);
            }
| type_product_1__1=typ2 { 
                $result = <list<monot>>[ _localctx._type_product_1__1.result ];
            }
;
top_typ returns [polyt result]
: '<' top_typ_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' top_typ_0__4=typ { 
                $result = <polyt> MK_Poly(<list<str>> _localctx._top_typ_0__2.result, <monot> _localctx._top_typ_0__4.result);
            }
| top_typ_1__1=typ { 
                $result = <polyt> MK_Mono(<monot> _localctx._top_typ_1__1.result);
            }
;
tvar returns [monot result]
: '\'' tvar_0__2=CNAMEPLUS { 
                $result = <monot> MK_TVar(<str> <str> str(<token> _localctx._tvar_0__2));
            }
;
tvar_str returns [str result]
: '\'' tvar_str_0__2=CNAMEPLUS { 
                $result = <str> str(<token> _localctx._tvar_str_0__2);
            }
;
param_type returns [[str, monot] result]
: param_type_0__1=CNAMEPLUS ':' param_type_0__3=typ { 
                $result = <[str, monot]>[<str> str(<token> _localctx._param_type_0__1), _localctx._param_type_0__3.result];
            }
| param_type_1__1=typ { 
                $result = <[str, monot]>["_", _localctx._param_type_1__1.result];
            }
;
slist_o__i__s__i__s_tvar_str_p_ returns [list<str> result]
: slist_o__i__s__i__s_tvar_str_p__0__1=tvar_str { 
                $result = <list<str>>[ _localctx._slist_o__i__s__i__s_tvar_str_p__0__1.result ];
            }
| slist_o__i__s__i__s_tvar_str_p__1__1=slist_o__i__s__i__s_tvar_str_p_ ',' slist_o__i__s__i__s_tvar_str_p__1__3=tvar_str { 
                $result = <list<str>> addList<str>(<list<str>> _localctx._slist_o__i__s__i__s_tvar_str_p__1__1.result, <str> _localctx._slist_o__i__s__i__s_tvar_str_p__1__3.result);
            }
;
type_params returns [list<str> result]
: '<' type_params_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' { 
                $result = _localctx._type_params_0__2.result;
            }
|  { 
                $result = <list<str>>[  ];
            }
;
field_ann returns [[str, monot, position] result]
: field_ann_0__1=CNAMEPLUS ':' field_ann_0__3=typ { 
                $result = <[str, monot, position]>[<str> str(<token> _localctx._field_ann_0__1), _localctx._field_ann_0__3.result, <position> mkpos(<token> _localctx._field_ann_0__1)];
            }
;
slist_o__i__s__i__s_field_ann_p_ returns [list<[str, monot, position]> result]
: slist_o__i__s__i__s_field_ann_p__0__1=field_ann { 
                $result = <list<[str, monot, position]>>[ _localctx._slist_o__i__s__i__s_field_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_field_ann_p__1__1=slist_o__i__s__i__s_field_ann_p_ ',' slist_o__i__s__i__s_field_ann_p__1__3=field_ann { 
                $result = <list<[str, monot, position]>> addList<[str, monot, position]>(<list<[str, monot, position]>> _localctx._slist_o__i__s__i__s_field_ann_p__1__1.result, <[str, monot, position]> _localctx._slist_o__i__s__i__s_field_ann_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_field_ann_p__p_ returns [list<[str, monot, position]> result]
:  { 
                $result = <list<[str, monot, position]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1=slist_o__i__s__i__s_field_ann_p_ { 
                $result = _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_field_ann_p_ returns [list<[str, monot, position]> result]
: eslist_o__i__s__i__s_field_ann_p__0__1=empty_o_slist_o__i__s__i__s_field_ann_p__p_ { 
                $result = _localctx._eslist_o__i__s__i__s_field_ann_p__0__1.result;
            }
;
field_anns returns [[bool, list<[str, monot, position]>] result]
: '(' field_anns_0__2=eslist_o__i__s__i__s_field_ann_p_ ')' { 
                $result = <[bool, list<[str, monot, position]>]>[true, _localctx._field_anns_0__2.result];
            }
|  { 
                $result = <[bool, list<[str, monot, position]>]>[false, <list<[str, monot, position]>>[  ]];
            }
;
decl returns [definition result]
: 'extern' decl_0__2='var' decl_0__3=identstr ':' decl_0__5=top_typ { 
                $result = <definition> MK_Declvar(<str> _localctx._decl_0__3.result, <polyt> _localctx._decl_0__5.result, <position> <position> mkpos(<token> _localctx._decl_0__2));
            }
| decl_1__1='case' decl_1__2=identstr ':' decl_1__4=typ { 
                $result = <definition> MK_Declctor(<str> _localctx._decl_1__2.result, <monot> _localctx._decl_1__4.result, <position> <position> mkpos(<token> _localctx._decl_1__1));
            }
| decl_2__1='extern' 'type' decl_2__3=identstr decl_2__4=type_params decl_2__5=field_anns { 
                $result = <definition> MK_Decltype(<bool> true, <bool> <bool> fst<bool, list<[str, monot, position]>>(<[bool, list<[str, monot, position]>]> _localctx._decl_2__5.result), <str> _localctx._decl_2__3.result, <list<str>> _localctx._decl_2__4.result, <list<[str, monot, position]>> <list<[str, monot, position]>> snd<bool, list<[str, monot, position]>>(<[bool, list<[str, monot, position]>]> _localctx._decl_2__5.result), <position> <position> mkpos(<token> _localctx._decl_2__1));
            }
| decl_3__1='type' decl_3__2=identstr decl_3__3=type_params decl_3__4=field_anns { 
                $result = <definition> MK_Decltype(<bool> false, <bool> <bool> fst<bool, list<[str, monot, position]>>(<[bool, list<[str, monot, position]>]> _localctx._decl_3__4.result), <str> _localctx._decl_3__2.result, <list<str>> _localctx._decl_3__3.result, <list<[str, monot, position]>> <list<[str, monot, position]>> snd<bool, list<[str, monot, position]>>(<[bool, list<[str, monot, position]>]> _localctx._decl_3__4.result), <position> <position> mkpos(<token> _localctx._decl_3__1));
            }
;
toplevel returns [definition result]
: toplevel_0__1=def { 
                $result = _localctx._toplevel_0__1.result;
            }
| toplevel_1__1=decl { 
                $result = _localctx._toplevel_1__1.result;
            }
| toplevel_2__1=lexerdef { 
                $result = _localctx._toplevel_2__1.result;
            }
| toplevel_3__1='ignore' toplevel_3__2=slist_o__i__s__i__s_identstr_p_ { 
                $result = <definition> MK_Defignore(<list<str>> _localctx._toplevel_3__2.result, <position> <position> mkpos(<token> _localctx._toplevel_3__1));
            }
;
slist_o__i__s__i__s_identstr_p_ returns [list<str> result]
: slist_o__i__s__i__s_identstr_p__0__1=identstr { 
                $result = <list<str>>[ _localctx._slist_o__i__s__i__s_identstr_p__0__1.result ];
            }
| slist_o__i__s__i__s_identstr_p__1__1=slist_o__i__s__i__s_identstr_p_ ',' slist_o__i__s__i__s_identstr_p__1__3=identstr { 
                $result = <list<str>> addList<str>(<list<str>> _localctx._slist_o__i__s__i__s_identstr_p__1__1.result, <str> _localctx._slist_o__i__s__i__s_identstr_p__1__3.result);
            }
;
def returns [definition result]
: def_0__1=CNAMEPLUS '(' def_0__3=slist_o__i__s__i__s_identstr_p_ ')' def_0__5=productions { 
                $result = <definition> MK_Defmacro(<str> <str> str(<token> _localctx._def_0__1), <list<str>> _localctx._def_0__3.result, <list<[position, production]>> _localctx._def_0__5.result, <position> <position> mkpos(<token> _localctx._def_0__1));
            }
| def_1__1=CNAMEPLUS def_1__2=productions { 
                $result = <definition> MK_Defrule(<str> <str> str(<token> _localctx._def_1__1), <list<[position, production]>> _localctx._def_1__2.result, <position> <position> mkpos(<token> _localctx._def_1__1));
            }
;
productions returns [list<[position, production]> result]
: productions_0__1=':' productions_0__2=production { 
                $result = <list<[position, production]>>[ <[position, production]>[<position> mkpos(<token> _localctx._productions_0__1), _localctx._productions_0__2.result] ];
            }
| productions_1__1=productions productions_1__2='|' productions_1__3=production { 
                $result = <list<[position, production]>> addList<[position, production]>(<list<[position, production]>> _localctx._productions_1__1.result, <[position, production]> <[position, production]>[<position> mkpos(<token> _localctx._productions_1__2), _localctx._productions_1__3.result]);
            }
;
list_o_psym_p_ returns [list<symbol> result]
: list_o_psym_p__0__1=psym { 
                $result = <list<symbol>>[ _localctx._list_o_psym_p__0__1.result ];
            }
| list_o_psym_p__1__1=list_o_psym_p_ list_o_psym_p__1__2=psym { 
                $result = <list<symbol>> addList<symbol>(<list<symbol>> _localctx._list_o_psym_p__1__1.result, <symbol> _localctx._list_o_psym_p__1__2.result);
            }
;
empty_o_list_o_psym_p__p_ returns [list<symbol> result]
:  { 
                $result = <list<symbol>>[  ];
            }
| empty_o_list_o_psym_p__p__1__1=list_o_psym_p_ { 
                $result = _localctx._empty_o_list_o_psym_p__p__1__1.result;
            }
;
elist_o_psym_p_ returns [list<symbol> result]
: elist_o_psym_p__0__1=empty_o_list_o_psym_p__p_ { 
                $result = _localctx._elist_o_psym_p__0__1.result;
            }
;
production returns [production result]
: production_0__1=elist_o_psym_p_ '{' production_0__3=expr '}' { 
                $result = <production> MK_production(<list<symbol>> _localctx._production_0__1.result, <expr> _localctx._production_0__3.result);
            }
;
slist_o__i__s__i__s_psym_p_ returns [list<symbol> result]
: slist_o__i__s__i__s_psym_p__0__1=psym { 
                $result = <list<symbol>>[ _localctx._slist_o__i__s__i__s_psym_p__0__1.result ];
            }
| slist_o__i__s__i__s_psym_p__1__1=slist_o__i__s__i__s_psym_p_ ',' slist_o__i__s__i__s_psym_p__1__3=psym { 
                $result = <list<symbol>> addList<symbol>(<list<symbol>> _localctx._slist_o__i__s__i__s_psym_p__1__1.result, <symbol> _localctx._slist_o__i__s__i__s_psym_p__1__3.result);
            }
;
psym returns [symbol result]
: '<' psym_0__2=identstr '>' { 
                $result = <symbol> MK_Term(<str> _localctx._psym_0__2.result, <bool> false);
            }
| psym_1__1=ESCAPED_STRING { 
                $result = <symbol> MK_Term(<str> <str> unescape(<str> <str> str(<token> _localctx._psym_1__1)), <bool> true);
            }
| psym_2__1=identstr { 
                $result = <symbol> MK_Nonterm(<str> _localctx._psym_2__1.result);
            }
| psym_3__1=CNAMEPLUS '(' psym_3__3=slist_o__i__s__i__s_psym_p_ ')' { 
                $result = <symbol> MK_Macrocall(<str> <str> str(<token> _localctx._psym_3__1), <list<symbol>> _localctx._psym_3__3.result, <position> <position> mkpos(<token> _localctx._psym_3__1));
            }
;
ann returns [[str, monot] result]
: ann_0__1=identstr ':' ann_0__3=typ { 
                $result = <[str, monot]>[_localctx._ann_0__1.result, _localctx._ann_0__3.result];
            }
;
slist_o__i__s__i__s_ann_p_ returns [list<[str, monot]> result]
: slist_o__i__s__i__s_ann_p__0__1=ann { 
                $result = <list<[str, monot]>>[ _localctx._slist_o__i__s__i__s_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_ann_p__1__1=slist_o__i__s__i__s_ann_p_ ',' slist_o__i__s__i__s_ann_p__1__3=ann { 
                $result = <list<[str, monot]>> addList<[str, monot]>(<list<[str, monot]>> _localctx._slist_o__i__s__i__s_ann_p__1__1.result, <[str, monot]> _localctx._slist_o__i__s__i__s_ann_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_ann_p__p_ returns [list<[str, monot]> result]
:  { 
                $result = <list<[str, monot]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_ann_p__p__1__1=slist_o__i__s__i__s_ann_p_ { 
                $result = _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_ann_p_ returns [list<[str, monot]> result]
: eslist_o__i__s__i__s_ann_p__0__1=empty_o_slist_o__i__s__i__s_ann_p__p_ { 
                $result = _localctx._eslist_o__i__s__i__s_ann_p__0__1.result;
            }
;
func_parameters returns [list<[str, monot]> result]
: '(' func_parameters_0__2=eslist_o__i__s__i__s_ann_p_ ')' { 
                $result = _localctx._func_parameters_0__2.result;
            }
;
expr returns [expr result]
: expr_0__1='let' expr_0__2=identstr '=' expr_0__4=expr 'in' expr_0__6=expr { 
                $result = <expr> MK_Expr(<node> <node> MK_ELet(<str> _localctx._expr_0__2.result, <expr> _localctx._expr_0__4.result, <expr> _localctx._expr_0__6.result), <position> <position> mkpos(<token> _localctx._expr_0__1));
            }
| expr_1__1='fun' expr_1__2=func_parameters '->' expr_1__4=expr { 
                $result = <expr> MK_Expr(<node> <node> MK_EFun(<list<[str, monot]>> _localctx._expr_1__2.result, <expr> _localctx._expr_1__4.result), <position> <position> mkpos(<token> _localctx._expr_1__1));
            }
| expr_2__1=call { 
                $result = _localctx._expr_2__1.result;
            }
| expr_3__1=call ';' expr_3__3=expr { 
                $result = <expr> MK_Expr(<node> <node> MK_ELet(<str> "_", <expr> _localctx._expr_3__1.result, <expr> _localctx._expr_3__3.result), <position> <position> getpos(<expr> _localctx._expr_3__1.result));
            }
;
call returns [expr result]
: call_0__1=call '(' call_0__3=eslist_o__i__s__i__s_expr_p_ ')' { 
                $result = <expr> MK_Expr(<node> <node> MK_EApp(<expr> _localctx._call_0__1.result, <list<expr>> _localctx._call_0__3.result), <position> <position> getpos(<expr> _localctx._call_0__1.result));
            }
| call_1__1=atomexp { 
                $result = _localctx._call_1__1.result;
            }
;
empty_o_slist_o__i__s__i__s_expr_p__p_ returns [list<expr> result]
:  { 
                $result = <list<expr>>[  ];
            }
| empty_o_slist_o__i__s__i__s_expr_p__p__1__1=slist_o__i__s__i__s_expr_p_ { 
                $result = _localctx._empty_o_slist_o__i__s__i__s_expr_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_expr_p_ returns [list<expr> result]
: eslist_o__i__s__i__s_expr_p__0__1=empty_o_slist_o__i__s__i__s_expr_p__p_ { 
                $result = _localctx._eslist_o__i__s__i__s_expr_p__0__1.result;
            }
;
slist_o__i__s__i__s_expr_p_ returns [list<expr> result]
: slist_o__i__s__i__s_expr_p__0__1=expr { 
                $result = <list<expr>>[ _localctx._slist_o__i__s__i__s_expr_p__0__1.result ];
            }
| slist_o__i__s__i__s_expr_p__1__1=slist_o__i__s__i__s_expr_p_ ',' slist_o__i__s__i__s_expr_p__1__3=expr { 
                $result = <list<expr>> addList<expr>(<list<expr>> _localctx._slist_o__i__s__i__s_expr_p__1__1.result, <expr> _localctx._slist_o__i__s__i__s_expr_p__1__3.result);
            }
;
atomexp returns [expr result]
: atomexp_0__1=INT { 
                $result = <expr> MK_Expr(<node> <node> MK_EInt(<int> <int> toint(<token> _localctx._atomexp_0__1)), <position> <position> mkpos(<token> _localctx._atomexp_0__1));
            }
| atomexp_1__1=FLOAT { 
                $result = <expr> MK_Expr(<node> <node> MK_EFlt(<float> <float> tofloat(<token> _localctx._atomexp_1__1)), <position> <position> mkpos(<token> _localctx._atomexp_1__1));
            }
| atomexp_2__1=ESCAPED_STRING { 
                $result = <expr> MK_Expr(<node> <node> MK_EStr(<str> <str> unescape(<str> <str> str(<token> _localctx._atomexp_2__1))), <position> <position> mkpos(<token> _localctx._atomexp_2__1));
            }
| atomexp_3__1='$' atomexp_3__2=INT { 
                $result = <expr> MK_Expr(<node> <node> MK_ESlot(<int> <int> toint(<token> _localctx._atomexp_3__2)), <position> <position> mkpos(<token> _localctx._atomexp_3__1));
            }
| atomexp_4__1='[' atomexp_4__2=eslist_o__i__s__i__s_expr_p_ ']' { 
                $result = <expr> MK_Expr(<node> <node> MK_EList(<list<expr>> _localctx._atomexp_4__2.result), <position> <position> mkpos(<token> _localctx._atomexp_4__1));
            }
| atomexp_5__1='(' ')' { 
                $result = <expr> MK_Expr(<node> <node> MK_ETuple(<list<expr>> <list<expr>>[  ]), <position> <position> mkpos(<token> _localctx._atomexp_5__1));
            }
| atomexp_6__1='(' atomexp_6__2=slist_o__i__s__i__s_expr_p_ ')' { 
                $result = <expr> MK_Expr(<node> <node> MK_ETuple(<list<expr>> _localctx._atomexp_6__2.result), <position> <position> mkpos(<token> _localctx._atomexp_6__1));
            }
| atomexp_7__1=CNAMEPLUS { 
                $result = <expr> MK_Expr(<node> <node> MK_EVar(<str> <str> str(<token> _localctx._atomexp_7__1)), <position> <position> mkpos(<token> _localctx._atomexp_7__1));
            }
| atomexp_8__1=atomexp '.' atomexp_8__3=CNAMEPLUS { 
                $result = <expr> MK_Expr(<node> <node> MK_EField(<expr> _localctx._atomexp_8__1.result, <str> <str> str(<token> _localctx._atomexp_8__3)), <position> <position> getpos(<expr> _localctx._atomexp_8__1.result));
            }
| atomexp_9__1='true' { 
                $result = <expr> MK_Expr(<node> <node> MK_EBool(<bool> true), <position> <position> mkpos(<token> _localctx._atomexp_9__1));
            }
| atomexp_10__1='false' { 
                $result = <expr> MK_Expr(<node> <node> MK_EBool(<bool> false), <position> <position> mkpos(<token> _localctx._atomexp_10__1));
            }
;
slist_o__i__u__i__s_lexer_and_p_ returns [list<lexerule> result]
: slist_o__i__u__i__s_lexer_and_p__0__1=lexer_and { 
                $result = <list<lexerule>>[ _localctx._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
            }
| slist_o__i__u__i__s_lexer_and_p__1__1=slist_o__i__u__i__s_lexer_and_p_ '|' slist_o__i__u__i__s_lexer_and_p__1__3=lexer_and { 
                $result = <list<lexerule>> addList<lexerule>(<list<lexerule>> _localctx._slist_o__i__u__i__s_lexer_and_p__1__1.result, <lexerule> _localctx._slist_o__i__u__i__s_lexer_and_p__1__3.result);
            }
;
lexer__y_ returns [lexerule result]
: lexer__y__0__1=slist_o__i__u__i__s_lexer_and_p_ { 
                $result = <lexerule> MK_LOr(<list<lexerule>> _localctx._lexer__y__0__1.result);
            }
;
list_o_lexer_atomexpr_p_ returns [list<lexerule> result]
: list_o_lexer_atomexpr_p__0__1=lexer_atomexpr { 
                $result = <list<lexerule>>[ _localctx._list_o_lexer_atomexpr_p__0__1.result ];
            }
| list_o_lexer_atomexpr_p__1__1=list_o_lexer_atomexpr_p_ list_o_lexer_atomexpr_p__1__2=lexer_atomexpr { 
                $result = <list<lexerule>> addList<lexerule>(<list<lexerule>> _localctx._list_o_lexer_atomexpr_p__1__1.result, <lexerule> _localctx._list_o_lexer_atomexpr_p__1__2.result);
            }
;
lexer_and returns [lexerule result]
: lexer_and_0__1=list_o_lexer_atomexpr_p_ { 
                $result = <lexerule> MK_LSeq(<list<lexerule>> _localctx._lexer_and_0__1.result);
            }
;
lexer_atomexpr returns [lexerule result]
: lexer_atomexpr_0__1=lexer_atomexpr '+' { 
                $result = <lexerule> MK_LPlus(<lexerule> _localctx._lexer_atomexpr_0__1.result);
            }
| lexer_atomexpr_1__1=lexer_atomexpr '*' { 
                $result = <lexerule> MK_LStar(<lexerule> _localctx._lexer_atomexpr_1__1.result);
            }
| lexer_atomexpr_2__1=lexer_atomexpr '?' { 
                $result = <lexerule> MK_LOptional(<lexerule> _localctx._lexer_atomexpr_2__1.result);
            }
| lexer_atomexpr_3__1=lexer_atom { 
                $result = _localctx._lexer_atomexpr_3__1.result;
            }
;
lexer_atom returns [lexerule result]
: lexer_atom_0__1=ESCAPED_STRING { 
                $result = <lexerule> MK_LStr(<str> <str> unescape(<str> <str> str(<token> _localctx._lexer_atom_0__1)));
            }
| '!' lexer_atom_1__2=lexer_atom { 
                $result = <lexerule> MK_LNot(<lexerule> _localctx._lexer_atom_1__2.result);
            }
| '(' lexer_atom_2__2=lexer__y_ ')' { 
                $result = <lexerule> MK_LGroup(<lexerule> _localctx._lexer_atom_2__2.result);
            }
| '\\d' { 
                $result = MK_LNumber;
            }
| lexer_atom_4__1=RANGE { 
                $result = <lexerule> getrange(<str> <str> str(<token> _localctx._lexer_atom_4__1));
            }
| lexer_atom_5__1=UNICODE_RANGE { 
                $result = <lexerule> getunicoderange(<str> <str> str(<token> _localctx._lexer_atom_5__1));
            }
| '_' { 
                $result = MK_LWildcard;
            }
| '.' { 
                $result = MK_LWildcard;
            }
| lexer_atom_8__1=CNAMEPLUS { 
                $result = <lexerule> MK_LRef(<str> <str> str(<token> _localctx._lexer_atom_8__1));
            }
;
lexerdef returns [definition result]
: lexerdef_0__1=CNAMEPLUS '=' lexerdef_0__3=lexer__y_ ';' { 
                $result = <definition> MK_Deflexer(<str> <str> str(<token> _localctx._lexerdef_0__1), <lexerule> _localctx._lexerdef_0__3.result, <position> <position> mkpos(<token> _localctx._lexerdef_0__1));
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
fragment ESC : ('a' | 'b' | 't' | 'n' | 'r' | '\\' | '"') ;
ESCAPED_STRING : '"' (('\\' ESC) | ~('"' | '\\'))* '"' ;
CPP_COMMENT : '/*' .*? '*/' -> channel(HIDDEN);
C_COMMENT : '//' ~'\n'* -> channel(HIDDEN);
