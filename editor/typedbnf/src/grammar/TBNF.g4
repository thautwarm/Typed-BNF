grammar TBNF;
@parser::header {
import { MKTApp, MKTConst, MKTFun, MKTList, MKTTuple, MKTVar, monot_t, MKMono, MKPoly, polyt_t, MKDeclctor, MKDecltype, MKDeclvar, MKDefignore, MKDeflexer, MKDefmacro, MKDefrule, definition_t, MKproduction, production_t, MKMacrocall, MKNonterm, MKTerm, symbol_t, MKExpr, expr_t, MKEApp, MKEBool, MKEField, MKEFlt, MKEFun, MKEInt, MKELet, MKEList, MKESlot, MKEStr, MKETuple, MKEVar, node_t, MKLGroup, MKLNot, MKLNumber, MKLOptional, MKLOr, MKLPlus, MKLRef, MKLSeq, MKLStar, MKLStr, MKLWildcard, UnicodeRange, getrange, lexerule_t, position_t, getPos, toFloat, toInt, process_tparam, snd, fst, list_index, mkpos, str, unescape, addList } from "./TBNFConstructor"
}
start returns [result: Array<definition_t>]: v=start__y_ EOF { $result = localContext._v.result; };
list_o_toplevel_p_ returns [Array<definition_t> result]
: list_o_toplevel_p__0__1=toplevel { $result = <Array<definition_t>>[ localContext._list_o_toplevel_p__0__1.result ];
            }
| list_o_toplevel_p__2__1=list_o_toplevel_p_ list_o_toplevel_p__2__2=toplevel { $result = <Array<definition_t>> addList<definition_t>(<Array<definition_t>> localContext._list_o_toplevel_p__2__1.result, <definition_t> localContext._list_o_toplevel_p__2__2.result);
            }
;
start__y_ returns [Array<definition_t> result]
: start__y__0__1=list_o_toplevel_p_ { $result = localContext._start__y__0__1.result;
            }
;
identstr returns [string result]
: identstr_0__1=CNAMEPLUS { $result = <string> str(<antlr.Token> localContext._identstr_0__1);
            }
;
typ returns [monot_t result]
: typ_0__1=arrow_typ { $result = localContext._typ_0__1.result;
            }
;
slist_o__i__s__i__s_param_type_p_ returns [Array<[string, monot_t]> result]
: slist_o__i__s__i__s_param_type_p__0__1=param_type { $result = <Array<[string, monot_t]>>[ localContext._slist_o__i__s__i__s_param_type_p__0__1.result ];
            }
| slist_o__i__s__i__s_param_type_p__2__1=slist_o__i__s__i__s_param_type_p_ ',' slist_o__i__s__i__s_param_type_p__2__3=param_type { $result = <Array<[string, monot_t]>> addList<[string, monot_t]>(<Array<[string, monot_t]>> localContext._slist_o__i__s__i__s_param_type_p__2__1.result, <[string, monot_t]> localContext._slist_o__i__s__i__s_param_type_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_param_type_p__p_ returns [Array<[string, monot_t]> result]
:  { $result = <Array<[string, monot_t]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_param_type_p__p__2__1=slist_o__i__s__i__s_param_type_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_param_type_p_ returns [Array<[string, monot_t]> result]
: eslist_o__i__s__i__s_param_type_p__0__1=empty_o_slist_o__i__s__i__s_param_type_p__p_ { $result = localContext._eslist_o__i__s__i__s_param_type_p__0__1.result;
            }
;
arrow_typ returns [monot_t result]
: arrow_typ_0__1=typ2 '->' arrow_typ_0__3=arrow_typ { $result = <monot_t> MKTFun(<Array<[string, monot_t]>> <Array<[string, monot_t]>>[ <[string, monot_t]>["value", localContext._arrow_typ_0__1.result] ], <monot_t> localContext._arrow_typ_0__3.result);
            }
| '(' arrow_typ_2__2=eslist_o__i__s__i__s_param_type_p_ ')' '->' arrow_typ_2__5=arrow_typ { $result = <monot_t> MKTFun(<Array<[string, monot_t]>> <Array<[string, monot_t]>> process_tparam(<Array<[string, monot_t]>> localContext._arrow_typ_2__2.result), <monot_t> localContext._arrow_typ_2__5.result);
            }
| arrow_typ_4__1=type_product { $result = <monot_t> MKTTuple(<Array<monot_t>> localContext._arrow_typ_4__1.result);
            }
;
slist_o__i__s__i__s_typ_p_ returns [Array<monot_t> result]
: slist_o__i__s__i__s_typ_p__0__1=typ { $result = <Array<monot_t>>[ localContext._slist_o__i__s__i__s_typ_p__0__1.result ];
            }
| slist_o__i__s__i__s_typ_p__2__1=slist_o__i__s__i__s_typ_p_ ',' slist_o__i__s__i__s_typ_p__2__3=typ { $result = <Array<monot_t>> addList<monot_t>(<Array<monot_t>> localContext._slist_o__i__s__i__s_typ_p__2__1.result, <monot_t> localContext._slist_o__i__s__i__s_typ_p__2__3.result);
            }
;
typ2 returns [monot_t result]
: typ2_0__1=CNAMEPLUS { $result = <monot_t> MKTConst(<string> <string> str(<antlr.Token> localContext._typ2_0__1));
            }
| typ2_2__1=typ2 '<' typ2_2__3=slist_o__i__s__i__s_typ_p_ '>' { $result = <monot_t> MKTApp(<monot_t> localContext._typ2_2__1.result, <Array<monot_t>> localContext._typ2_2__3.result);
            }
;
type_product returns [Array<monot_t> result]
: type_product_0__1=type_product '*' type_product_0__3=typ2 { $result = <Array<monot_t>> addList<monot_t>(<Array<monot_t>> localContext._type_product_0__1.result, <monot_t> localContext._type_product_0__3.result);
            }
| type_product_2__1=typ2 { $result = <Array<monot_t>>[ localContext._type_product_2__1.result ];
            }
;
top_typ returns [polyt_t result]
: '<' top_typ_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' top_typ_0__4=typ { $result = <polyt_t> MKPoly(<Array<string>> localContext._top_typ_0__2.result, <monot_t> localContext._top_typ_0__4.result);
            }
| top_typ_2__1=typ { $result = <polyt_t> MKMono(<monot_t> localContext._top_typ_2__1.result);
            }
;
tvar_str returns [string result]
: tvar_str_0__1=CNAMEPLUS { $result = <string> str(<antlr.Token> localContext._tvar_str_0__1);
            }
;
param_type returns [[string, monot_t] result]
: param_type_0__1=CNAMEPLUS ':' param_type_0__3=typ { $result = <[string, monot_t]>[<string> str(<antlr.Token> localContext._param_type_0__1), localContext._param_type_0__3.result];
            }
| param_type_2__1=typ { $result = <[string, monot_t]>["_", localContext._param_type_2__1.result];
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
field_ann returns [[string, monot_t, position_t] result]
: field_ann_0__1=CNAMEPLUS ':' field_ann_0__3=typ { $result = <[string, monot_t, position_t]>[<string> str(<antlr.Token> localContext._field_ann_0__1), localContext._field_ann_0__3.result, <position_t> mkpos(<antlr.Token> localContext._field_ann_0__1)];
            }
;
slist_o__i__s__i__s_field_ann_p_ returns [Array<[string, monot_t, position_t]> result]
: slist_o__i__s__i__s_field_ann_p__0__1=field_ann { $result = <Array<[string, monot_t, position_t]>>[ localContext._slist_o__i__s__i__s_field_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_field_ann_p__2__1=slist_o__i__s__i__s_field_ann_p_ ',' slist_o__i__s__i__s_field_ann_p__2__3=field_ann { $result = <Array<[string, monot_t, position_t]>> addList<[string, monot_t, position_t]>(<Array<[string, monot_t, position_t]>> localContext._slist_o__i__s__i__s_field_ann_p__2__1.result, <[string, monot_t, position_t]> localContext._slist_o__i__s__i__s_field_ann_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_field_ann_p__p_ returns [Array<[string, monot_t, position_t]> result]
:  { $result = <Array<[string, monot_t, position_t]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1=slist_o__i__s__i__s_field_ann_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_field_ann_p_ returns [Array<[string, monot_t, position_t]> result]
: eslist_o__i__s__i__s_field_ann_p__0__1=empty_o_slist_o__i__s__i__s_field_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_field_ann_p__0__1.result;
            }
;
field_anns returns [[boolean, Array<[string, monot_t, position_t]>] result]
: '(' field_anns_0__2=eslist_o__i__s__i__s_field_ann_p_ ')' { $result = <[boolean, Array<[string, monot_t, position_t]>]>[true, localContext._field_anns_0__2.result];
            }
|  { $result = <[boolean, Array<[string, monot_t, position_t]>]>[false, <Array<[string, monot_t, position_t]>>[  ]];
            }
;
decl returns [definition_t result]
: 'extern' decl_0__2='var' decl_0__3=identstr ':' decl_0__5=top_typ { $result = <definition_t> MKDeclvar(<string> localContext._decl_0__3.result, <polyt_t> localContext._decl_0__5.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._decl_0__2));
            }
| decl_2__1='case' decl_2__2=identstr ':' decl_2__4=typ { $result = <definition_t> MKDeclctor(<string> localContext._decl_2__2.result, <monot_t> localContext._decl_2__4.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._decl_2__1));
            }
| decl_4__1='extern' 'type' decl_4__3=identstr decl_4__4=type_params decl_4__5=field_anns { $result = <definition_t> MKDecltype(<boolean> true, <boolean> <boolean> fst<boolean, Array<[string, monot_t, position_t]>>(<[boolean, Array<[string, monot_t, position_t]>]> localContext._decl_4__5.result), <string> localContext._decl_4__3.result, <Array<string>> localContext._decl_4__4.result, <Array<[string, monot_t, position_t]>> <Array<[string, monot_t, position_t]>> snd<boolean, Array<[string, monot_t, position_t]>>(<[boolean, Array<[string, monot_t, position_t]>]> localContext._decl_4__5.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._decl_4__1));
            }
| decl_6__1='type' decl_6__2=identstr decl_6__3=type_params decl_6__4=field_anns { $result = <definition_t> MKDecltype(<boolean> false, <boolean> <boolean> fst<boolean, Array<[string, monot_t, position_t]>>(<[boolean, Array<[string, monot_t, position_t]>]> localContext._decl_6__4.result), <string> localContext._decl_6__2.result, <Array<string>> localContext._decl_6__3.result, <Array<[string, monot_t, position_t]>> <Array<[string, monot_t, position_t]>> snd<boolean, Array<[string, monot_t, position_t]>>(<[boolean, Array<[string, monot_t, position_t]>]> localContext._decl_6__4.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._decl_6__1));
            }
;
toplevel returns [definition_t result]
: toplevel_0__1=def { $result = localContext._toplevel_0__1.result;
            }
| toplevel_2__1=decl { $result = localContext._toplevel_2__1.result;
            }
| toplevel_4__1=lexerdef { $result = localContext._toplevel_4__1.result;
            }
| toplevel_6__1='ignore' toplevel_6__2=slist_o__i__s__i__s_identstr_p_ { $result = <definition_t> MKDefignore(<Array<string>> localContext._toplevel_6__2.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._toplevel_6__1));
            }
;
slist_o__i__s__i__s_identstr_p_ returns [Array<string> result]
: slist_o__i__s__i__s_identstr_p__0__1=identstr { $result = <Array<string>>[ localContext._slist_o__i__s__i__s_identstr_p__0__1.result ];
            }
| slist_o__i__s__i__s_identstr_p__2__1=slist_o__i__s__i__s_identstr_p_ ',' slist_o__i__s__i__s_identstr_p__2__3=identstr { $result = <Array<string>> addList<string>(<Array<string>> localContext._slist_o__i__s__i__s_identstr_p__2__1.result, <string> localContext._slist_o__i__s__i__s_identstr_p__2__3.result);
            }
;
def returns [definition_t result]
: def_0__1=CNAMEPLUS '(' def_0__3=slist_o__i__s__i__s_identstr_p_ ')' def_0__5=productions { $result = <definition_t> MKDefmacro(<string> <string> str(<antlr.Token> localContext._def_0__1), <Array<string>> localContext._def_0__3.result, <Array<[position_t, production_t]>> localContext._def_0__5.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._def_0__1));
            }
| def_2__1=CNAMEPLUS def_2__2=productions { $result = <definition_t> MKDefrule(<string> <string> str(<antlr.Token> localContext._def_2__1), <Array<[position_t, production_t]>> localContext._def_2__2.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._def_2__1));
            }
;
productions returns [Array<[position_t, production_t]> result]
: productions_0__1=':' productions_0__2=production { $result = <Array<[position_t, production_t]>>[ <[position_t, production_t]>[<position_t> mkpos(<antlr.Token> localContext._productions_0__1), localContext._productions_0__2.result] ];
            }
| productions_2__1=productions productions_2__2='|' productions_2__3=production { $result = <Array<[position_t, production_t]>> addList<[position_t, production_t]>(<Array<[position_t, production_t]>> localContext._productions_2__1.result, <[position_t, production_t]> <[position_t, production_t]>[<position_t> mkpos(<antlr.Token> localContext._productions_2__2), localContext._productions_2__3.result]);
            }
;
list_o_psym_p_ returns [Array<symbol_t> result]
: list_o_psym_p__0__1=psym { $result = <Array<symbol_t>>[ localContext._list_o_psym_p__0__1.result ];
            }
| list_o_psym_p__2__1=list_o_psym_p_ list_o_psym_p__2__2=psym { $result = <Array<symbol_t>> addList<symbol_t>(<Array<symbol_t>> localContext._list_o_psym_p__2__1.result, <symbol_t> localContext._list_o_psym_p__2__2.result);
            }
;
empty_o_list_o_psym_p__p_ returns [Array<symbol_t> result]
:  { $result = <Array<symbol_t>>[  ];
            }
| empty_o_list_o_psym_p__p__2__1=list_o_psym_p_ { $result = localContext._empty_o_list_o_psym_p__p__2__1.result;
            }
;
elist_o_psym_p_ returns [Array<symbol_t> result]
: elist_o_psym_p__0__1=empty_o_list_o_psym_p__p_ { $result = localContext._elist_o_psym_p__0__1.result;
            }
;
production returns [production_t result]
: production_0__1=elist_o_psym_p_ '{' production_0__3=expr '}' { $result = <production_t> MKproduction(<Array<symbol_t>> localContext._production_0__1.result, <expr_t> localContext._production_0__3.result);
            }
;
slist_o__i__s__i__s_psym_p_ returns [Array<symbol_t> result]
: slist_o__i__s__i__s_psym_p__0__1=psym { $result = <Array<symbol_t>>[ localContext._slist_o__i__s__i__s_psym_p__0__1.result ];
            }
| slist_o__i__s__i__s_psym_p__2__1=slist_o__i__s__i__s_psym_p_ ',' slist_o__i__s__i__s_psym_p__2__3=psym { $result = <Array<symbol_t>> addList<symbol_t>(<Array<symbol_t>> localContext._slist_o__i__s__i__s_psym_p__2__1.result, <symbol_t> localContext._slist_o__i__s__i__s_psym_p__2__3.result);
            }
;
psym returns [symbol_t result]
: '<' psym_0__2=identstr '>' { $result = <symbol_t> MKTerm(<string> localContext._psym_0__2.result, <boolean> false);
            }
| psym_2__1=ESCAPED_STRING { $result = <symbol_t> MKTerm(<string> <string> unescape(<string> <string> str(<antlr.Token> localContext._psym_2__1)), <boolean> true);
            }
| psym_4__1=identstr { $result = <symbol_t> MKNonterm(<string> localContext._psym_4__1.result);
            }
| psym_6__1=CNAMEPLUS '(' psym_6__3=slist_o__i__s__i__s_psym_p_ ')' { $result = <symbol_t> MKMacrocall(<string> <string> str(<antlr.Token> localContext._psym_6__1), <Array<symbol_t>> localContext._psym_6__3.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._psym_6__1));
            }
;
ann returns [[string, monot_t] result]
: ann_0__1=identstr ':' ann_0__3=typ { $result = <[string, monot_t]>[localContext._ann_0__1.result, localContext._ann_0__3.result];
            }
;
slist_o__i__s__i__s_ann_p_ returns [Array<[string, monot_t]> result]
: slist_o__i__s__i__s_ann_p__0__1=ann { $result = <Array<[string, monot_t]>>[ localContext._slist_o__i__s__i__s_ann_p__0__1.result ];
            }
| slist_o__i__s__i__s_ann_p__2__1=slist_o__i__s__i__s_ann_p_ ',' slist_o__i__s__i__s_ann_p__2__3=ann { $result = <Array<[string, monot_t]>> addList<[string, monot_t]>(<Array<[string, monot_t]>> localContext._slist_o__i__s__i__s_ann_p__2__1.result, <[string, monot_t]> localContext._slist_o__i__s__i__s_ann_p__2__3.result);
            }
;
empty_o_slist_o__i__s__i__s_ann_p__p_ returns [Array<[string, monot_t]> result]
:  { $result = <Array<[string, monot_t]>>[  ];
            }
| empty_o_slist_o__i__s__i__s_ann_p__p__2__1=slist_o__i__s__i__s_ann_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_ann_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_ann_p_ returns [Array<[string, monot_t]> result]
: eslist_o__i__s__i__s_ann_p__0__1=empty_o_slist_o__i__s__i__s_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_ann_p__0__1.result;
            }
;
func_parameters returns [Array<[string, monot_t]> result]
: '(' func_parameters_0__2=eslist_o__i__s__i__s_ann_p_ ')' { $result = localContext._func_parameters_0__2.result;
            }
;
expr returns [expr_t result]
: expr_0__1='let' expr_0__2=identstr '=' expr_0__4=expr 'in' expr_0__6=expr { $result = <expr_t> MKExpr(<node_t> <node_t> MKELet(<string> localContext._expr_0__2.result, <expr_t> localContext._expr_0__4.result, <expr_t> localContext._expr_0__6.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._expr_0__1));
            }
| expr_2__1='fun' expr_2__2=func_parameters '->' expr_2__4=expr { $result = <expr_t> MKExpr(<node_t> <node_t> MKEFun(<Array<[string, monot_t]>> localContext._expr_2__2.result, <expr_t> localContext._expr_2__4.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._expr_2__1));
            }
| expr_4__1=call { $result = localContext._expr_4__1.result;
            }
| expr_6__1=call ';' expr_6__3=expr { $result = <expr_t> MKExpr(<node_t> <node_t> MKELet(<string> "_", <expr_t> localContext._expr_6__1.result, <expr_t> localContext._expr_6__3.result), <position_t> <position_t> getPos(<expr_t> localContext._expr_6__1.result));
            }
;
call returns [expr_t result]
: call_0__1=call '(' call_0__3=eslist_o__i__s__i__s_expr_p_ ')' { $result = <expr_t> MKExpr(<node_t> <node_t> MKEApp(<expr_t> localContext._call_0__1.result, <Array<expr_t>> localContext._call_0__3.result), <position_t> <position_t> getPos(<expr_t> localContext._call_0__1.result));
            }
| call_2__1=atomexp { $result = localContext._call_2__1.result;
            }
;
empty_o_slist_o__i__s__i__s_expr_p__p_ returns [Array<expr_t> result]
:  { $result = <Array<expr_t>>[  ];
            }
| empty_o_slist_o__i__s__i__s_expr_p__p__2__1=slist_o__i__s__i__s_expr_p_ { $result = localContext._empty_o_slist_o__i__s__i__s_expr_p__p__2__1.result;
            }
;
eslist_o__i__s__i__s_expr_p_ returns [Array<expr_t> result]
: eslist_o__i__s__i__s_expr_p__0__1=empty_o_slist_o__i__s__i__s_expr_p__p_ { $result = localContext._eslist_o__i__s__i__s_expr_p__0__1.result;
            }
;
slist_o__i__s__i__s_expr_p_ returns [Array<expr_t> result]
: slist_o__i__s__i__s_expr_p__0__1=expr { $result = <Array<expr_t>>[ localContext._slist_o__i__s__i__s_expr_p__0__1.result ];
            }
| slist_o__i__s__i__s_expr_p__2__1=slist_o__i__s__i__s_expr_p_ ',' slist_o__i__s__i__s_expr_p__2__3=expr { $result = <Array<expr_t>> addList<expr_t>(<Array<expr_t>> localContext._slist_o__i__s__i__s_expr_p__2__1.result, <expr_t> localContext._slist_o__i__s__i__s_expr_p__2__3.result);
            }
;
atomexp returns [expr_t result]
: atomexp_0__1=INT { $result = <expr_t> MKExpr(<node_t> <node_t> MKEInt(<number> <number> toInt(<antlr.Token> localContext._atomexp_0__1)), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_0__1));
            }
| atomexp_2__1=FLOAT { $result = <expr_t> MKExpr(<node_t> <node_t> MKEFlt(<number> <number> toFloat(<antlr.Token> localContext._atomexp_2__1)), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_2__1));
            }
| atomexp_4__1=ESCAPED_STRING { $result = <expr_t> MKExpr(<node_t> <node_t> MKEStr(<string> <string> unescape(<string> <string> str(<antlr.Token> localContext._atomexp_4__1))), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_4__1));
            }
| atomexp_6__1='$' atomexp_6__2=INT { $result = <expr_t> MKExpr(<node_t> <node_t> MKESlot(<number> <number> toInt(<antlr.Token> localContext._atomexp_6__2)), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_6__1));
            }
| atomexp_8__1='[' atomexp_8__2=eslist_o__i__s__i__s_expr_p_ ']' { $result = <expr_t> MKExpr(<node_t> <node_t> MKEList(<Array<expr_t>> localContext._atomexp_8__2.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_8__1));
            }
| atomexp_10__1='(' ')' { $result = <expr_t> MKExpr(<node_t> <node_t> MKETuple(<Array<expr_t>> <Array<expr_t>>[  ]), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_10__1));
            }
| atomexp_12__1='(' atomexp_12__2=slist_o__i__s__i__s_expr_p_ ')' { $result = <expr_t> MKExpr(<node_t> <node_t> MKETuple(<Array<expr_t>> localContext._atomexp_12__2.result), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_12__1));
            }
| atomexp_14__1=CNAMEPLUS { $result = <expr_t> MKExpr(<node_t> <node_t> MKEVar(<string> <string> str(<antlr.Token> localContext._atomexp_14__1)), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_14__1));
            }
| atomexp_16__1=atomexp '.' atomexp_16__3=CNAMEPLUS { $result = <expr_t> MKExpr(<node_t> <node_t> MKEField(<expr_t> localContext._atomexp_16__1.result, <string> <string> str(<antlr.Token> localContext._atomexp_16__3)), <position_t> <position_t> getPos(<expr_t> localContext._atomexp_16__1.result));
            }
| atomexp_18__1='true' { $result = <expr_t> MKExpr(<node_t> <node_t> MKEBool(<boolean> true), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_18__1));
            }
| atomexp_20__1='false' { $result = <expr_t> MKExpr(<node_t> <node_t> MKEBool(<boolean> false), <position_t> <position_t> mkpos(<antlr.Token> localContext._atomexp_20__1));
            }
;
slist_o__i__u__i__s_lexer_and_p_ returns [Array<lexerule_t> result]
: slist_o__i__u__i__s_lexer_and_p__0__1=lexer_and { $result = <Array<lexerule_t>>[ localContext._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
            }
| slist_o__i__u__i__s_lexer_and_p__2__1=slist_o__i__u__i__s_lexer_and_p_ '|' slist_o__i__u__i__s_lexer_and_p__2__3=lexer_and { $result = <Array<lexerule_t>> addList<lexerule_t>(<Array<lexerule_t>> localContext._slist_o__i__u__i__s_lexer_and_p__2__1.result, <lexerule_t> localContext._slist_o__i__u__i__s_lexer_and_p__2__3.result);
            }
;
lexer__y_ returns [lexerule_t result]
: lexer__y__0__1=slist_o__i__u__i__s_lexer_and_p_ { $result = <lexerule_t> MKLOr(<Array<lexerule_t>> localContext._lexer__y__0__1.result);
            }
;
list_o_lexer_atomexpr_p_ returns [Array<lexerule_t> result]
: list_o_lexer_atomexpr_p__0__1=lexer_atomexpr { $result = <Array<lexerule_t>>[ localContext._list_o_lexer_atomexpr_p__0__1.result ];
            }
| list_o_lexer_atomexpr_p__2__1=list_o_lexer_atomexpr_p_ list_o_lexer_atomexpr_p__2__2=lexer_atomexpr { $result = <Array<lexerule_t>> addList<lexerule_t>(<Array<lexerule_t>> localContext._list_o_lexer_atomexpr_p__2__1.result, <lexerule_t> localContext._list_o_lexer_atomexpr_p__2__2.result);
            }
;
lexer_and returns [lexerule_t result]
: lexer_and_0__1=list_o_lexer_atomexpr_p_ { $result = <lexerule_t> MKLSeq(<Array<lexerule_t>> localContext._lexer_and_0__1.result);
            }
;
lexer_atomexpr returns [lexerule_t result]
: lexer_atomexpr_0__1=lexer_atomexpr '+' { $result = <lexerule_t> MKLPlus(<lexerule_t> localContext._lexer_atomexpr_0__1.result);
            }
| lexer_atomexpr_2__1=lexer_atomexpr '*' { $result = <lexerule_t> MKLStar(<lexerule_t> localContext._lexer_atomexpr_2__1.result);
            }
| lexer_atomexpr_4__1=lexer_atomexpr '?' { $result = <lexerule_t> MKLOptional(<lexerule_t> localContext._lexer_atomexpr_4__1.result);
            }
| lexer_atomexpr_6__1=lexer_atom { $result = localContext._lexer_atomexpr_6__1.result;
            }
;
lexer_atom returns [lexerule_t result]
: lexer_atom_0__1=ESCAPED_STRING { $result = <lexerule_t> MKLStr(<string> <string> unescape(<string> <string> str(<antlr.Token> localContext._lexer_atom_0__1)));
            }
| '!' lexer_atom_2__2=lexer_atom { $result = <lexerule_t> MKLNot(<lexerule_t> localContext._lexer_atom_2__2.result);
            }
| '(' lexer_atom_4__2=lexer__y_ ')' { $result = <lexerule_t> MKLGroup(<lexerule_t> localContext._lexer_atom_4__2.result);
            }
| '\\d' { $result = <lexerule_t> MKLNumber();
            }
| lexer_atom_8__1=RANGE { $result = <lexerule_t> getrange(<string> <string> str(<antlr.Token> localContext._lexer_atom_8__1));
            }
| lexer_atom_10__1=UNICODE_RANGE { $result = <lexerule_t> UnicodeRange(<string> <string> str(<antlr.Token> localContext._lexer_atom_10__1));
            }
| '_' { $result = <lexerule_t> MKLWildcard();
            }
| '.' { $result = <lexerule_t> MKLWildcard();
            }
| lexer_atom_16__1=CNAMEPLUS { $result = <lexerule_t> MKLRef(<string> <string> str(<antlr.Token> localContext._lexer_atom_16__1));
            }
;
lexerdef returns [definition_t result]
: lexerdef_0__1=CNAMEPLUS '=' lexerdef_0__3=lexer__y_ ';' { $result = <definition_t> MKDeflexer(<string> <string> str(<antlr.Token> localContext._lexerdef_0__1), <lexerule_t> localContext._lexerdef_0__3.result, <position_t> <position_t> mkpos(<antlr.Token> localContext._lexerdef_0__1));
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
