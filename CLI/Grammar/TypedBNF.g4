grammar TypedBNF;
options { language = CSharp; }
@parser::members {
}
start returns [definition[] result]: v=start__y_ EOF { $result = _localctx.v.result; };
list_o_toplevel_p_ returns [definition[] result]
: list_o_toplevel_p__0__1=toplevel { $result = new definition[] { _localctx.list_o_toplevel_p__0__1.result };
            }
| list_o_toplevel_p__1__1=list_o_toplevel_p_ list_o_toplevel_p__1__2=toplevel { $result = (definition[]) addList<definition>((definition[]) _localctx.list_o_toplevel_p__1__1.result, (definition) _localctx.list_o_toplevel_p__1__2.result);
            }
;
start__y_ returns [definition[] result]
: start__y__0__1=list_o_toplevel_p_ { $result = _localctx.start__y__0__1.result;
            }
;
identstr returns [string result]
: identstr_0__1=CNAMEPLUS { $result = (string) str((IToken) _localctx.identstr_0__1);
            }
;
typ returns [monot result]
: typ_0__1=arrow_typ { $result = _localctx.typ_0__1.result;
            }
;
slist_o__i__s__i__s_param_type_p_ returns [(string, monot)[] result]
: slist_o__i__s__i__s_param_type_p__0__1=param_type { $result = new (string, monot)[] { _localctx.slist_o__i__s__i__s_param_type_p__0__1.result };
            }
| slist_o__i__s__i__s_param_type_p__1__1=slist_o__i__s__i__s_param_type_p_ ',' slist_o__i__s__i__s_param_type_p__1__3=param_type { $result = ((string, monot)[]) addList<(string, monot)>(((string, monot)[]) _localctx.slist_o__i__s__i__s_param_type_p__1__1.result, ((string, monot)) _localctx.slist_o__i__s__i__s_param_type_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_param_type_p__p_ returns [(string, monot)[] result]
:  { $result = new (string, monot)[] {  };
            }
| empty_o_slist_o__i__s__i__s_param_type_p__p__1__1=slist_o__i__s__i__s_param_type_p_ { $result = _localctx.empty_o_slist_o__i__s__i__s_param_type_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_param_type_p_ returns [(string, monot)[] result]
: eslist_o__i__s__i__s_param_type_p__0__1=empty_o_slist_o__i__s__i__s_param_type_p__p_ { $result = _localctx.eslist_o__i__s__i__s_param_type_p__0__1.result;
            }
;
arrow_typ returns [monot result]
: arrow_typ_0__1=typ2 '->' arrow_typ_0__3=arrow_typ { $result = (monot) MK_TFun(((string, monot)[]) new (string, monot)[] { ("value", _localctx.arrow_typ_0__1.result) }, (monot) _localctx.arrow_typ_0__3.result);
            }
| '(' arrow_typ_1__2=eslist_o__i__s__i__s_param_type_p_ ')' '->' arrow_typ_1__5=arrow_typ { $result = (monot) MK_TFun(((string, monot)[]) ((string, monot)[]) process_tparam(((string, monot)[]) _localctx.arrow_typ_1__2.result), (monot) _localctx.arrow_typ_1__5.result);
            }
| arrow_typ_2__1=type_product { $result = (monot) MK_TTuple((monot[]) _localctx.arrow_typ_2__1.result);
            }
;
slist_o__i__s__i__s_typ_p_ returns [monot[] result]
: slist_o__i__s__i__s_typ_p__0__1=typ { $result = new monot[] { _localctx.slist_o__i__s__i__s_typ_p__0__1.result };
            }
| slist_o__i__s__i__s_typ_p__1__1=slist_o__i__s__i__s_typ_p_ ',' slist_o__i__s__i__s_typ_p__1__3=typ { $result = (monot[]) addList<monot>((monot[]) _localctx.slist_o__i__s__i__s_typ_p__1__1.result, (monot) _localctx.slist_o__i__s__i__s_typ_p__1__3.result);
            }
;
typ2 returns [monot result]
: typ2_0__1=CNAMEPLUS { $result = (monot) MK_TConst((string) (string) str((IToken) _localctx.typ2_0__1));
            }
| typ2_1__1=typ2 '<' typ2_1__3=slist_o__i__s__i__s_typ_p_ '>' { $result = (monot) MK_TApp((monot) _localctx.typ2_1__1.result, (monot[]) _localctx.typ2_1__3.result);
            }
;
type_product returns [monot[] result]
: type_product_0__1=type_product '*' type_product_0__3=typ2 { $result = (monot[]) addList<monot>((monot[]) _localctx.type_product_0__1.result, (monot) _localctx.type_product_0__3.result);
            }
| type_product_1__1=typ2 { $result = new monot[] { _localctx.type_product_1__1.result };
            }
;
top_typ returns [polyt result]
: '<' top_typ_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' top_typ_0__4=typ { $result = (polyt) MK_Poly((string[]) _localctx.top_typ_0__2.result, (monot) _localctx.top_typ_0__4.result);
            }
| top_typ_1__1=typ { $result = (polyt) MK_Mono((monot) _localctx.top_typ_1__1.result);
            }
;
tvar_str returns [string result]
: tvar_str_0__1=CNAMEPLUS { $result = (string) str((IToken) _localctx.tvar_str_0__1);
            }
;
param_type returns [(string, monot) result]
: param_type_0__1=CNAMEPLUS ':' param_type_0__3=typ { $result = ((string) str((IToken) _localctx.param_type_0__1), _localctx.param_type_0__3.result);
            }
| param_type_1__1=typ { $result = ("_", _localctx.param_type_1__1.result);
            }
;
slist_o__i__s__i__s_tvar_str_p_ returns [string[] result]
: slist_o__i__s__i__s_tvar_str_p__0__1=tvar_str { $result = new string[] { _localctx.slist_o__i__s__i__s_tvar_str_p__0__1.result };
            }
| slist_o__i__s__i__s_tvar_str_p__1__1=slist_o__i__s__i__s_tvar_str_p_ ',' slist_o__i__s__i__s_tvar_str_p__1__3=tvar_str { $result = (string[]) addList<string>((string[]) _localctx.slist_o__i__s__i__s_tvar_str_p__1__1.result, (string) _localctx.slist_o__i__s__i__s_tvar_str_p__1__3.result);
            }
;
type_params returns [string[] result]
: '<' type_params_0__2=slist_o__i__s__i__s_tvar_str_p_ '>' { $result = _localctx.type_params_0__2.result;
            }
|  { $result = new string[] {  };
            }
;
field_ann returns [(string, monot, position) result]
: field_ann_0__1=CNAMEPLUS ':' field_ann_0__3=typ { $result = ((string) str((IToken) _localctx.field_ann_0__1), _localctx.field_ann_0__3.result, (position) mkpos((IToken) _localctx.field_ann_0__1));
            }
;
slist_o__i__s__i__s_field_ann_p_ returns [(string, monot, position)[] result]
: slist_o__i__s__i__s_field_ann_p__0__1=field_ann { $result = new (string, monot, position)[] { _localctx.slist_o__i__s__i__s_field_ann_p__0__1.result };
            }
| slist_o__i__s__i__s_field_ann_p__1__1=slist_o__i__s__i__s_field_ann_p_ ',' slist_o__i__s__i__s_field_ann_p__1__3=field_ann { $result = ((string, monot, position)[]) addList<(string, monot, position)>(((string, monot, position)[]) _localctx.slist_o__i__s__i__s_field_ann_p__1__1.result, ((string, monot, position)) _localctx.slist_o__i__s__i__s_field_ann_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_field_ann_p__p_ returns [(string, monot, position)[] result]
:  { $result = new (string, monot, position)[] {  };
            }
| empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1=slist_o__i__s__i__s_field_ann_p_ { $result = _localctx.empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_field_ann_p_ returns [(string, monot, position)[] result]
: eslist_o__i__s__i__s_field_ann_p__0__1=empty_o_slist_o__i__s__i__s_field_ann_p__p_ { $result = _localctx.eslist_o__i__s__i__s_field_ann_p__0__1.result;
            }
;
field_anns returns [(bool, (string, monot, position)[]) result]
: '(' field_anns_0__2=eslist_o__i__s__i__s_field_ann_p_ ')' { $result = (true, _localctx.field_anns_0__2.result);
            }
|  { $result = (false, new (string, monot, position)[] {  });
            }
;
decl returns [definition result]
: 'extern' decl_0__2='var' decl_0__3=identstr ':' decl_0__5=top_typ { $result = (definition) MK_Declvar((string) _localctx.decl_0__3.result, (polyt) _localctx.decl_0__5.result, (position) (position) mkpos((IToken) _localctx.decl_0__2));
            }
| decl_1__1='case' decl_1__2=identstr ':' decl_1__4=typ { $result = (definition) MK_Declctor((string) _localctx.decl_1__2.result, (monot) _localctx.decl_1__4.result, (position) (position) mkpos((IToken) _localctx.decl_1__1));
            }
| decl_2__1='extern' 'type' decl_2__3=identstr decl_2__4=type_params decl_2__5=field_anns { $result = (definition) MK_Decltype((bool) true, (bool) (bool) fst<bool, (string, monot, position)[]>(((bool, (string, monot, position)[])) _localctx.decl_2__5.result), (string) _localctx.decl_2__3.result, (string[]) _localctx.decl_2__4.result, ((string, monot, position)[]) ((string, monot, position)[]) snd<bool, (string, monot, position)[]>(((bool, (string, monot, position)[])) _localctx.decl_2__5.result), (position) (position) mkpos((IToken) _localctx.decl_2__1));
            }
| decl_3__1='type' decl_3__2=identstr decl_3__3=type_params decl_3__4=field_anns { $result = (definition) MK_Decltype((bool) false, (bool) (bool) fst<bool, (string, monot, position)[]>(((bool, (string, monot, position)[])) _localctx.decl_3__4.result), (string) _localctx.decl_3__2.result, (string[]) _localctx.decl_3__3.result, ((string, monot, position)[]) ((string, monot, position)[]) snd<bool, (string, monot, position)[]>(((bool, (string, monot, position)[])) _localctx.decl_3__4.result), (position) (position) mkpos((IToken) _localctx.decl_3__1));
            }
;
toplevel returns [definition result]
: toplevel_0__1=def { $result = _localctx.toplevel_0__1.result;
            }
| toplevel_1__1=decl { $result = _localctx.toplevel_1__1.result;
            }
| toplevel_2__1=lexerdef { $result = _localctx.toplevel_2__1.result;
            }
| toplevel_3__1='ignore' toplevel_3__2=slist_o__i__s__i__s_identstr_p_ { $result = (definition) MK_Defignore((string[]) _localctx.toplevel_3__2.result, (position) (position) mkpos((IToken) _localctx.toplevel_3__1));
            }
;
slist_o__i__s__i__s_identstr_p_ returns [string[] result]
: slist_o__i__s__i__s_identstr_p__0__1=identstr { $result = new string[] { _localctx.slist_o__i__s__i__s_identstr_p__0__1.result };
            }
| slist_o__i__s__i__s_identstr_p__1__1=slist_o__i__s__i__s_identstr_p_ ',' slist_o__i__s__i__s_identstr_p__1__3=identstr { $result = (string[]) addList<string>((string[]) _localctx.slist_o__i__s__i__s_identstr_p__1__1.result, (string) _localctx.slist_o__i__s__i__s_identstr_p__1__3.result);
            }
;
def returns [definition result]
: def_0__1=CNAMEPLUS '(' def_0__3=slist_o__i__s__i__s_identstr_p_ ')' def_0__5=productions { $result = (definition) MK_Defmacro((string) (string) str((IToken) _localctx.def_0__1), (string[]) _localctx.def_0__3.result, ((position, production)[]) _localctx.def_0__5.result, (position) (position) mkpos((IToken) _localctx.def_0__1));
            }
| def_1__1=CNAMEPLUS def_1__2=productions { $result = (definition) MK_Defrule((string) (string) str((IToken) _localctx.def_1__1), ((position, production)[]) _localctx.def_1__2.result, (position) (position) mkpos((IToken) _localctx.def_1__1));
            }
;
productions returns [(position, production)[] result]
: productions_0__1=':' productions_0__2=production { $result = new (position, production)[] { ((position) mkpos((IToken) _localctx.productions_0__1), _localctx.productions_0__2.result) };
            }
| productions_1__1=productions productions_1__2='|' productions_1__3=production { $result = ((position, production)[]) addList<(position, production)>(((position, production)[]) _localctx.productions_1__1.result, ((position, production)) ((position) mkpos((IToken) _localctx.productions_1__2), _localctx.productions_1__3.result));
            }
;
list_o_psym_p_ returns [symbol[] result]
: list_o_psym_p__0__1=psym { $result = new symbol[] { _localctx.list_o_psym_p__0__1.result };
            }
| list_o_psym_p__1__1=list_o_psym_p_ list_o_psym_p__1__2=psym { $result = (symbol[]) addList<symbol>((symbol[]) _localctx.list_o_psym_p__1__1.result, (symbol) _localctx.list_o_psym_p__1__2.result);
            }
;
empty_o_list_o_psym_p__p_ returns [symbol[] result]
:  { $result = new symbol[] {  };
            }
| empty_o_list_o_psym_p__p__1__1=list_o_psym_p_ { $result = _localctx.empty_o_list_o_psym_p__p__1__1.result;
            }
;
elist_o_psym_p_ returns [symbol[] result]
: elist_o_psym_p__0__1=empty_o_list_o_psym_p__p_ { $result = _localctx.elist_o_psym_p__0__1.result;
            }
;
production returns [production result]
: production_0__1=elist_o_psym_p_ '{' production_0__3=expr '}' { $result = (production) MK_production((symbol[]) _localctx.production_0__1.result, (expr) _localctx.production_0__3.result);
            }
;
slist_o__i__s__i__s_psym_p_ returns [symbol[] result]
: slist_o__i__s__i__s_psym_p__0__1=psym { $result = new symbol[] { _localctx.slist_o__i__s__i__s_psym_p__0__1.result };
            }
| slist_o__i__s__i__s_psym_p__1__1=slist_o__i__s__i__s_psym_p_ ',' slist_o__i__s__i__s_psym_p__1__3=psym { $result = (symbol[]) addList<symbol>((symbol[]) _localctx.slist_o__i__s__i__s_psym_p__1__1.result, (symbol) _localctx.slist_o__i__s__i__s_psym_p__1__3.result);
            }
;
psym returns [symbol result]
: '<' psym_0__2=identstr '>' { $result = (symbol) MK_Term((string) _localctx.psym_0__2.result, (bool) false);
            }
| psym_1__1=ESCAPED_STRING { $result = (symbol) MK_Term((string) (string) unescape((string) (string) str((IToken) _localctx.psym_1__1)), (bool) true);
            }
| psym_2__1=identstr { $result = (symbol) MK_Nonterm((string) _localctx.psym_2__1.result);
            }
| psym_3__1=CNAMEPLUS '(' psym_3__3=slist_o__i__s__i__s_psym_p_ ')' { $result = (symbol) MK_Macrocall((string) (string) str((IToken) _localctx.psym_3__1), (symbol[]) _localctx.psym_3__3.result, (position) (position) mkpos((IToken) _localctx.psym_3__1));
            }
;
ann returns [(string, monot) result]
: ann_0__1=identstr ':' ann_0__3=typ { $result = (_localctx.ann_0__1.result, _localctx.ann_0__3.result);
            }
;
slist_o__i__s__i__s_ann_p_ returns [(string, monot)[] result]
: slist_o__i__s__i__s_ann_p__0__1=ann { $result = new (string, monot)[] { _localctx.slist_o__i__s__i__s_ann_p__0__1.result };
            }
| slist_o__i__s__i__s_ann_p__1__1=slist_o__i__s__i__s_ann_p_ ',' slist_o__i__s__i__s_ann_p__1__3=ann { $result = ((string, monot)[]) addList<(string, monot)>(((string, monot)[]) _localctx.slist_o__i__s__i__s_ann_p__1__1.result, ((string, monot)) _localctx.slist_o__i__s__i__s_ann_p__1__3.result);
            }
;
empty_o_slist_o__i__s__i__s_ann_p__p_ returns [(string, monot)[] result]
:  { $result = new (string, monot)[] {  };
            }
| empty_o_slist_o__i__s__i__s_ann_p__p__1__1=slist_o__i__s__i__s_ann_p_ { $result = _localctx.empty_o_slist_o__i__s__i__s_ann_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_ann_p_ returns [(string, monot)[] result]
: eslist_o__i__s__i__s_ann_p__0__1=empty_o_slist_o__i__s__i__s_ann_p__p_ { $result = _localctx.eslist_o__i__s__i__s_ann_p__0__1.result;
            }
;
func_parameters returns [(string, monot)[] result]
: '(' func_parameters_0__2=eslist_o__i__s__i__s_ann_p_ ')' { $result = _localctx.func_parameters_0__2.result;
            }
;
expr returns [expr result]
: expr_0__1='let' expr_0__2=identstr '=' expr_0__4=expr 'in' expr_0__6=expr { $result = (expr) MK_Expr((node) (node) MK_ELet((string) _localctx.expr_0__2.result, (expr) _localctx.expr_0__4.result, (expr) _localctx.expr_0__6.result), (position) (position) mkpos((IToken) _localctx.expr_0__1));
            }
| expr_1__1='fun' expr_1__2=func_parameters '->' expr_1__4=expr { $result = (expr) MK_Expr((node) (node) MK_EFun(((string, monot)[]) _localctx.expr_1__2.result, (expr) _localctx.expr_1__4.result), (position) (position) mkpos((IToken) _localctx.expr_1__1));
            }
| expr_2__1=call { $result = _localctx.expr_2__1.result;
            }
| expr_3__1=call ';' expr_3__3=expr { $result = (expr) MK_Expr((node) (node) MK_ELet((string) "_", (expr) _localctx.expr_3__1.result, (expr) _localctx.expr_3__3.result), (position) (position) getpos((expr) _localctx.expr_3__1.result));
            }
;
call returns [expr result]
: call_0__1=call '(' call_0__3=eslist_o__i__s__i__s_expr_p_ ')' { $result = (expr) MK_Expr((node) (node) MK_EApp((expr) _localctx.call_0__1.result, (expr[]) _localctx.call_0__3.result), (position) (position) getpos((expr) _localctx.call_0__1.result));
            }
| call_1__1=atomexp { $result = _localctx.call_1__1.result;
            }
;
empty_o_slist_o__i__s__i__s_expr_p__p_ returns [expr[] result]
:  { $result = new expr[] {  };
            }
| empty_o_slist_o__i__s__i__s_expr_p__p__1__1=slist_o__i__s__i__s_expr_p_ { $result = _localctx.empty_o_slist_o__i__s__i__s_expr_p__p__1__1.result;
            }
;
eslist_o__i__s__i__s_expr_p_ returns [expr[] result]
: eslist_o__i__s__i__s_expr_p__0__1=empty_o_slist_o__i__s__i__s_expr_p__p_ { $result = _localctx.eslist_o__i__s__i__s_expr_p__0__1.result;
            }
;
slist_o__i__s__i__s_expr_p_ returns [expr[] result]
: slist_o__i__s__i__s_expr_p__0__1=expr { $result = new expr[] { _localctx.slist_o__i__s__i__s_expr_p__0__1.result };
            }
| slist_o__i__s__i__s_expr_p__1__1=slist_o__i__s__i__s_expr_p_ ',' slist_o__i__s__i__s_expr_p__1__3=expr { $result = (expr[]) addList<expr>((expr[]) _localctx.slist_o__i__s__i__s_expr_p__1__1.result, (expr) _localctx.slist_o__i__s__i__s_expr_p__1__3.result);
            }
;
atomexp returns [expr result]
: atomexp_0__1=INT { $result = (expr) MK_Expr((node) (node) MK_EInt((int) (int) toint((IToken) _localctx.atomexp_0__1)), (position) (position) mkpos((IToken) _localctx.atomexp_0__1));
            }
| atomexp_1__1=FLOAT { $result = (expr) MK_Expr((node) (node) MK_EFlt((double) (double) tofloat((IToken) _localctx.atomexp_1__1)), (position) (position) mkpos((IToken) _localctx.atomexp_1__1));
            }
| atomexp_2__1=ESCAPED_STRING { $result = (expr) MK_Expr((node) (node) MK_EStr((string) (string) unescape((string) (string) str((IToken) _localctx.atomexp_2__1))), (position) (position) mkpos((IToken) _localctx.atomexp_2__1));
            }
| atomexp_3__1='$' atomexp_3__2=INT { $result = (expr) MK_Expr((node) (node) MK_ESlot((int) (int) toint((IToken) _localctx.atomexp_3__2)), (position) (position) mkpos((IToken) _localctx.atomexp_3__1));
            }
| atomexp_4__1='[' atomexp_4__2=eslist_o__i__s__i__s_expr_p_ ']' { $result = (expr) MK_Expr((node) (node) MK_EList((expr[]) _localctx.atomexp_4__2.result), (position) (position) mkpos((IToken) _localctx.atomexp_4__1));
            }
| atomexp_5__1='(' ')' { $result = (expr) MK_Expr((node) (node) MK_ETuple((expr[]) new expr[] {  }), (position) (position) mkpos((IToken) _localctx.atomexp_5__1));
            }
| atomexp_6__1='(' atomexp_6__2=slist_o__i__s__i__s_expr_p_ ')' { $result = (expr) MK_Expr((node) (node) MK_ETuple((expr[]) _localctx.atomexp_6__2.result), (position) (position) mkpos((IToken) _localctx.atomexp_6__1));
            }
| atomexp_7__1=CNAMEPLUS { $result = (expr) MK_Expr((node) (node) MK_EVar((string) (string) str((IToken) _localctx.atomexp_7__1)), (position) (position) mkpos((IToken) _localctx.atomexp_7__1));
            }
| atomexp_8__1=atomexp '.' atomexp_8__3=CNAMEPLUS { $result = (expr) MK_Expr((node) (node) MK_EField((expr) _localctx.atomexp_8__1.result, (string) (string) str((IToken) _localctx.atomexp_8__3)), (position) (position) getpos((expr) _localctx.atomexp_8__1.result));
            }
| atomexp_9__1='true' { $result = (expr) MK_Expr((node) (node) MK_EBool((bool) true), (position) (position) mkpos((IToken) _localctx.atomexp_9__1));
            }
| atomexp_10__1='false' { $result = (expr) MK_Expr((node) (node) MK_EBool((bool) false), (position) (position) mkpos((IToken) _localctx.atomexp_10__1));
            }
;
slist_o__i__u__i__s_lexer_and_p_ returns [lexerule[] result]
: slist_o__i__u__i__s_lexer_and_p__0__1=lexer_and { $result = new lexerule[] { _localctx.slist_o__i__u__i__s_lexer_and_p__0__1.result };
            }
| slist_o__i__u__i__s_lexer_and_p__1__1=slist_o__i__u__i__s_lexer_and_p_ '|' slist_o__i__u__i__s_lexer_and_p__1__3=lexer_and { $result = (lexerule[]) addList<lexerule>((lexerule[]) _localctx.slist_o__i__u__i__s_lexer_and_p__1__1.result, (lexerule) _localctx.slist_o__i__u__i__s_lexer_and_p__1__3.result);
            }
;
lexer__y_ returns [lexerule result]
: lexer__y__0__1=slist_o__i__u__i__s_lexer_and_p_ { $result = (lexerule) MK_LOr((lexerule[]) _localctx.lexer__y__0__1.result);
            }
;
list_o_lexer_atomexpr_p_ returns [lexerule[] result]
: list_o_lexer_atomexpr_p__0__1=lexer_atomexpr { $result = new lexerule[] { _localctx.list_o_lexer_atomexpr_p__0__1.result };
            }
| list_o_lexer_atomexpr_p__1__1=list_o_lexer_atomexpr_p_ list_o_lexer_atomexpr_p__1__2=lexer_atomexpr { $result = (lexerule[]) addList<lexerule>((lexerule[]) _localctx.list_o_lexer_atomexpr_p__1__1.result, (lexerule) _localctx.list_o_lexer_atomexpr_p__1__2.result);
            }
;
lexer_and returns [lexerule result]
: lexer_and_0__1=list_o_lexer_atomexpr_p_ { $result = (lexerule) MK_LSeq((lexerule[]) _localctx.lexer_and_0__1.result);
            }
;
lexer_atomexpr returns [lexerule result]
: lexer_atomexpr_0__1=lexer_atomexpr '+' { $result = (lexerule) MK_LPlus((lexerule) _localctx.lexer_atomexpr_0__1.result);
            }
| lexer_atomexpr_1__1=lexer_atomexpr '*' { $result = (lexerule) MK_LStar((lexerule) _localctx.lexer_atomexpr_1__1.result);
            }
| lexer_atomexpr_2__1=lexer_atomexpr '?' { $result = (lexerule) MK_LOptional((lexerule) _localctx.lexer_atomexpr_2__1.result);
            }
| lexer_atomexpr_3__1=lexer_atom { $result = _localctx.lexer_atomexpr_3__1.result;
            }
;
lexer_atom returns [lexerule result]
: lexer_atom_0__1=ESCAPED_STRING { $result = (lexerule) MK_LStr((string) (string) unescape((string) (string) str((IToken) _localctx.lexer_atom_0__1)));
            }
| '!' lexer_atom_1__2=lexer_atom { $result = (lexerule) MK_LNot((lexerule) _localctx.lexer_atom_1__2.result);
            }
| '(' lexer_atom_2__2=lexer__y_ ')' { $result = (lexerule) MK_LGroup((lexerule) _localctx.lexer_atom_2__2.result);
            }
| '\\d' { $result = MK_LNumber;
            }
| lexer_atom_4__1=RANGE { $result = (lexerule) getrange((string) (string) str((IToken) _localctx.lexer_atom_4__1));
            }
| lexer_atom_5__1=UNICODE_RANGE { $result = (lexerule) getunicoderange((string) (string) str((IToken) _localctx.lexer_atom_5__1));
            }
| '_' { $result = MK_LWildcard;
            }
| '.' { $result = MK_LWildcard;
            }
| lexer_atom_8__1=CNAMEPLUS { $result = (lexerule) MK_LRef((string) (string) str((IToken) _localctx.lexer_atom_8__1));
            }
;
lexerdef returns [definition result]
: lexerdef_0__1=CNAMEPLUS '=' lexerdef_0__3=lexer__y_ ';' { $result = (definition) MK_Deflexer((string) (string) str((IToken) _localctx.lexerdef_0__1), (lexerule) _localctx.lexerdef_0__3.result, (position) (position) mkpos((IToken) _localctx.lexerdef_0__1));
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
