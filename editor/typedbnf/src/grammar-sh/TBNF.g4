grammar TBNF;
@parser::header {
import { markDef, mark, FLOAT, INT, STR, BRANCH, PRODUCTION, KEYWORD, FIELD, MACRO_IDENT, TYPE_VAR, TYPE_IDENT, EXPR_IDENT, LEX_IDENT, RULE_IDENT, OPERATOR } from "./TBNFConstructor"
}
start returns [result: number]: v=start__y_ EOF { $result = localContext._v.result; };
list_o_toplevel_p_ returns [number result]
: toplevel { $result = 0;
            }
| list_o_toplevel_p_ toplevel { $result = 0;
            }
;
start__y_ returns [number result]
: start__y__0__1=list_o_toplevel_p_ { $result = localContext._start__y__0__1.result;
            }
;
typ returns [number result]
: typ_0__1=arrow_typ { $result = localContext._typ_0__1.result;
            }
;
slist_o__i__s__i__s_param_type_p_ returns [number result]
: param_type { $result = 0;
            }
| slist_o__i__s__i__s_param_type_p_ ',' param_type { $result = 0;
            }
;
empty_o_slist_o__i__s__i__s_param_type_p__p_ returns [number result]
:  { $result = 0;
            }
| slist_o__i__s__i__s_param_type_p_ { $result = 0;
            }
;
eslist_o__i__s__i__s_param_type_p_ returns [number result]
: eslist_o__i__s__i__s_param_type_p__0__1=empty_o_slist_o__i__s__i__s_param_type_p__p_ { $result = localContext._eslist_o__i__s__i__s_param_type_p__0__1.result;
            }
;
arrow_typ returns [number result]
: typ2 arrow_typ_0__2='->' arrow_typ { $result = <number> mark(<antlr.Token> localContext._arrow_typ_0__2, <number> OPERATOR);
            }
| '(' eslist_o__i__s__i__s_param_type_p_ ')' arrow_typ_2__4='->' arrow_typ { $result = <number> mark(<antlr.Token> localContext._arrow_typ_2__4, <number> OPERATOR);
            }
| type_product { $result = 0;
            }
;
slist_o__i__s__i__s_typ_p_ returns [number result]
: typ { $result = 0;
            }
| slist_o__i__s__i__s_typ_p_ ',' typ { $result = 0;
            }
;
typ2 returns [number result]
: typ2_0__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._typ2_0__1, <number> TYPE_IDENT);
            }
| typ2 '<' slist_o__i__s__i__s_typ_p_ '>' { $result = 0;
            }
;
type_product returns [number result]
: type_product type_product_0__2='*' typ2 { $result = <number> mark(<antlr.Token> localContext._type_product_0__2, <number> OPERATOR);
            }
| typ2 { $result = 0;
            }
;
top_typ returns [number result]
: '<' slist_o__i__s__i__s_tvar_str_p_ '>' typ { $result = 0;
            }
| typ { $result = 0;
            }
;
tvar_str returns [number result]
: tvar_str_0__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._tvar_str_0__1, <number> TYPE_VAR);
            }
;
param_type returns [number result]
: CNAMEPLUS ':' typ { $result = 0;
            }
| typ { $result = 0;
            }
;
slist_o__i__s__i__s_tvar_str_p_ returns [number result]
: tvar_str { $result = 0;
            }
| slist_o__i__s__i__s_tvar_str_p_ ',' tvar_str { $result = 0;
            }
;
type_params returns [number result]
: '<' slist_o__i__s__i__s_tvar_str_p_ '>' { $result = 0;
            }
|  { $result = 0;
            }
;
field_ann returns [number result]
: field_ann_0__1=CNAMEPLUS ':' typ { $result = <number> mark(<antlr.Token> localContext._field_ann_0__1, <number> FIELD);
            }
;
slist_o__i__s__i__s_field_ann_p_ returns [number result]
: field_ann { $result = 0;
            }
| slist_o__i__s__i__s_field_ann_p_ ',' field_ann { $result = 0;
            }
;
empty_o_slist_o__i__s__i__s_field_ann_p__p_ returns [number result]
:  { $result = 0;
            }
| slist_o__i__s__i__s_field_ann_p_ { $result = 0;
            }
;
eslist_o__i__s__i__s_field_ann_p_ returns [number result]
: eslist_o__i__s__i__s_field_ann_p__0__1=empty_o_slist_o__i__s__i__s_field_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_field_ann_p__0__1.result;
            }
;
field_anns returns [number result]
: '(' eslist_o__i__s__i__s_field_ann_p_ ')' { $result = 0;
            }
|  { $result = 0;
            }
;
decl returns [number result]
: decl_0__1='extern' decl_0__2='var' CNAMEPLUS ':' top_typ { let _ : number = <number> mark(<antlr.Token> localContext._decl_0__1, <number> KEYWORD);
                let ___98_ : number = <number> mark(<antlr.Token> localContext._decl_0__2, <number> EXPR_IDENT);
                $result = <number> mark(<antlr.Token> localContext._decl_0__2, <number> KEYWORD);
            }
| decl_2__1='case' decl_2__2=CNAMEPLUS ':' typ { let ___98___103_ : number = <number> mark(<antlr.Token> localContext._decl_2__1, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._decl_2__2, <number> EXPR_IDENT);
            }
| decl_4__1='extern' decl_4__2='type' decl_4__3=CNAMEPLUS type_params field_anns { let ___98___103___109_ : number = <number> mark(<antlr.Token> localContext._decl_4__1, <number> KEYWORD);
                let ___98___103___109___115_ : number = <number> mark(<antlr.Token> localContext._decl_4__2, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._decl_4__3, <number> TYPE_IDENT);
            }
| decl_6__1='type' decl_6__2=CNAMEPLUS type_params field_anns { let ___98___103___109___115___121_ : number = <number> mark(<antlr.Token> localContext._decl_6__1, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._decl_6__2, <number> TYPE_IDENT);
            }
;
slist_o__i__s__i__s_ignore_item_p_ returns [number result]
: ignore_item { $result = 0;
            }
| slist_o__i__s__i__s_ignore_item_p_ ',' ignore_item { $result = 0;
            }
;
toplevel returns [number result]
: def { $result = 0;
            }
| decl { $result = 0;
            }
| lexerdef { $result = 0;
            }
| toplevel_6__1='ignore' slist_o__i__s__i__s_ignore_item_p_ { $result = <number> mark(<antlr.Token> localContext._toplevel_6__1, <number> KEYWORD);
            }
;
ignore_item returns [number result]
: ignore_item_0__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._ignore_item_0__1, <number> RULE_IDENT);
            }
;
macro_var returns [number result]
: macro_var_0__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._macro_var_0__1, <number> RULE_IDENT);
            }
;
slist_o__i__s__i__s_macro_var_p_ returns [number result]
: macro_var { $result = 0;
            }
| slist_o__i__s__i__s_macro_var_p_ ',' macro_var { $result = 0;
            }
;
def returns [number result]
: def_0__1=CNAMEPLUS '(' slist_o__i__s__i__s_macro_var_p_ ')' productions { let ___98___103___109___115___121___101_ : number = <number> mark(<antlr.Token> localContext._def_0__1, <number> RULE_IDENT);
                $result = <number> markDef(<antlr.Token> localContext._def_0__1, <number> MACRO_IDENT);
            }
| def_2__1=CNAMEPLUS productions { let ___98___103___109___115___121___101___107_ : number = <number> mark(<antlr.Token> localContext._def_2__1, <number> RULE_IDENT);
                $result = <number> markDef(<antlr.Token> localContext._def_2__1, <number> RULE_IDENT);
            }
;
productions returns [number result]
: productions_0__1=':' production { $result = <number> mark(<antlr.Token> localContext._productions_0__1, <number> PRODUCTION);
            }
| productions productions_2__2='|' production { $result = <number> mark(<antlr.Token> localContext._productions_2__2, <number> BRANCH);
            }
;
list_o_psym_p_ returns [number result]
: psym { $result = 0;
            }
| list_o_psym_p_ psym { $result = 0;
            }
;
empty_o_list_o_psym_p__p_ returns [number result]
:  { $result = 0;
            }
| list_o_psym_p_ { $result = 0;
            }
;
elist_o_psym_p_ returns [number result]
: elist_o_psym_p__0__1=empty_o_list_o_psym_p__p_ { $result = localContext._elist_o_psym_p__0__1.result;
            }
;
production returns [number result]
: elist_o_psym_p_ '{' expr '}' { $result = 0;
            }
;
slist_o__i__s__i__s_psym_p_ returns [number result]
: psym { $result = 0;
            }
| slist_o__i__s__i__s_psym_p_ ',' psym { $result = 0;
            }
;
psym returns [number result]
: '<' psym_0__2=CNAMEPLUS '>' { $result = <number> mark(<antlr.Token> localContext._psym_0__2, <number> LEX_IDENT);
            }
| psym_2__1=ESCAPED_STRING { $result = <number> mark(<antlr.Token> localContext._psym_2__1, <number> STR);
            }
| psym_4__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._psym_4__1, <number> RULE_IDENT);
            }
| psym_6__1=CNAMEPLUS '(' slist_o__i__s__i__s_psym_p_ ')' { $result = <number> mark(<antlr.Token> localContext._psym_6__1, <number> MACRO_IDENT);
            }
;
ann returns [number result]
: ann_0__1=CNAMEPLUS ':' typ { $result = <number> mark(<antlr.Token> localContext._ann_0__1, <number> EXPR_IDENT);
            }
;
slist_o__i__s__i__s_ann_p_ returns [number result]
: ann { $result = 0;
            }
| slist_o__i__s__i__s_ann_p_ ',' ann { $result = 0;
            }
;
empty_o_slist_o__i__s__i__s_ann_p__p_ returns [number result]
:  { $result = 0;
            }
| slist_o__i__s__i__s_ann_p_ { $result = 0;
            }
;
eslist_o__i__s__i__s_ann_p_ returns [number result]
: eslist_o__i__s__i__s_ann_p__0__1=empty_o_slist_o__i__s__i__s_ann_p__p_ { $result = localContext._eslist_o__i__s__i__s_ann_p__0__1.result;
            }
;
func_parameters returns [number result]
: '(' eslist_o__i__s__i__s_ann_p_ ')' { $result = 0;
            }
;
expr returns [number result]
: expr_0__1='let' expr_0__2=CNAMEPLUS expr_0__3='=' expr expr_0__5='in' expr { let ___98___103___109___115___121___101___107___113_ : number = <number> mark(<antlr.Token> localContext._expr_0__1, <number> KEYWORD);
                let ___98___103___109___115___121___101___107___113___119_ : number = <number> mark(<antlr.Token> localContext._expr_0__2, <number> EXPR_IDENT);
                let ___98___103___109___115___121___101___107___113___119___99_ : number = <number> mark(<antlr.Token> localContext._expr_0__3, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._expr_0__5, <number> KEYWORD);
            }
| expr_2__1='fun' func_parameters expr_2__3='->' expr { let ___98___103___109___115___121___101___107___113___119___99___104_ : number = <number> mark(<antlr.Token> localContext._expr_2__1, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._expr_2__3, <number> KEYWORD);
            }
| call { $result = 0;
            }
| call ';' expr { $result = 0;
            }
;
call returns [number result]
: call '(' eslist_o__i__s__i__s_expr_p_ ')' { $result = 0;
            }
| atomexp { $result = 0;
            }
;
empty_o_slist_o__i__s__i__s_expr_p__p_ returns [number result]
:  { $result = 0;
            }
| slist_o__i__s__i__s_expr_p_ { $result = 0;
            }
;
eslist_o__i__s__i__s_expr_p_ returns [number result]
: eslist_o__i__s__i__s_expr_p__0__1=empty_o_slist_o__i__s__i__s_expr_p__p_ { $result = localContext._eslist_o__i__s__i__s_expr_p__0__1.result;
            }
;
slist_o__i__s__i__s_expr_p_ returns [number result]
: expr { $result = 0;
            }
| slist_o__i__s__i__s_expr_p_ ',' expr { $result = 0;
            }
;
atomexp returns [number result]
: atomexp_0__1=INT { $result = <number> mark(<antlr.Token> localContext._atomexp_0__1, <number> INT);
            }
| atomexp_2__1=FLOAT { $result = <number> mark(<antlr.Token> localContext._atomexp_2__1, <number> FLOAT);
            }
| atomexp_4__1=ESCAPED_STRING { $result = <number> mark(<antlr.Token> localContext._atomexp_4__1, <number> STR);
            }
| atomexp_6__1='$' atomexp_6__2=INT { let ___98___103___109___115___121___101___107___113___119___99___104___110_ : number = <number> mark(<antlr.Token> localContext._atomexp_6__1, <number> KEYWORD);
                $result = <number> mark(<antlr.Token> localContext._atomexp_6__2, <number> INT);
            }
| '[' eslist_o__i__s__i__s_expr_p_ ']' { $result = 0;
            }
| '(' ')' { $result = 0;
            }
| '(' slist_o__i__s__i__s_expr_p_ ')' { $result = 0;
            }
| atomexp_14__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._atomexp_14__1, <number> EXPR_IDENT);
            }
| atomexp '.' atomexp_16__3=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._atomexp_16__3, <number> FIELD);
            }
| atomexp_18__1='true' { $result = <number> mark(<antlr.Token> localContext._atomexp_18__1, <number> KEYWORD);
            }
| atomexp_20__1='false' { $result = <number> mark(<antlr.Token> localContext._atomexp_20__1, <number> KEYWORD);
            }
;
slist_o__i__u__i__s_lexer_and_p_ returns [number result]
: lexer_and { $result = 0;
            }
| slist_o__i__u__i__s_lexer_and_p_ '|' lexer_and { $result = 0;
            }
;
lexer__y_ returns [number result]
: slist_o__i__u__i__s_lexer_and_p_ { $result = 0;
            }
;
list_o_lexer_atomexpr_p_ returns [number result]
: lexer_atomexpr { $result = 0;
            }
| list_o_lexer_atomexpr_p_ lexer_atomexpr { $result = 0;
            }
;
lexer_and returns [number result]
: list_o_lexer_atomexpr_p_ { $result = 0;
            }
;
lexer_atomexpr returns [number result]
: lexer_atomexpr '+' { $result = 0;
            }
| lexer_atomexpr '*' { $result = 0;
            }
| lexer_atomexpr '?' { $result = 0;
            }
| lexer_atom { $result = 0;
            }
;
lexer_atom returns [number result]
: lexer_atom_0__1=ESCAPED_STRING { $result = <number> mark(<antlr.Token> localContext._lexer_atom_0__1, <number> STR);
            }
| '!' lexer_atom { $result = 0;
            }
| '(' lexer__y_ ')' { $result = 0;
            }
| lexer_atom_6__1='\\d' { $result = <number> mark(<antlr.Token> localContext._lexer_atom_6__1, <number> INT);
            }
| lexer_atom_8__1=RANGE { $result = <number> mark(<antlr.Token> localContext._lexer_atom_8__1, <number> INT);
            }
| lexer_atom_10__1=UNICODE_RANGE { $result = <number> mark(<antlr.Token> localContext._lexer_atom_10__1, <number> INT);
            }
| lexer_atom_12__1='_' { $result = <number> mark(<antlr.Token> localContext._lexer_atom_12__1, <number> KEYWORD);
            }
| lexer_atom_14__1='.' { $result = <number> mark(<antlr.Token> localContext._lexer_atom_14__1, <number> KEYWORD);
            }
| lexer_atom_16__1=CNAMEPLUS { $result = <number> mark(<antlr.Token> localContext._lexer_atom_16__1, <number> LEX_IDENT);
            }
;
lexerdef returns [number result]
: lexerdef_0__1=CNAMEPLUS lexerdef_0__2='=' lexer__y_ ';' { let ___98___103___109___115___121___101___107___113___119___99___104___110___116_ : number = <number> mark(<antlr.Token> localContext._lexerdef_0__1, <number> LEX_IDENT);
                let ___98___103___109___115___121___101___107___113___119___99___104___110___116___122_ : number = <number> mark(<antlr.Token> localContext._lexerdef_0__2, <number> KEYWORD);
                $result = <number> markDef(<antlr.Token> localContext._lexerdef_0__1, <number> LEX_IDENT);
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
