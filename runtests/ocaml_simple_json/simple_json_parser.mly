%{
open Simple_json_require;;
open Simple_json_lexer;;
open Simple_json_construct;;
%}
%token<tbnf_token> I__S__I_
%token<tbnf_token> I__G__I_
%token<tbnf_token> I__N__I_
%token<tbnf_token> I__P__I_
%token<tbnf_token> I_FALSE_I_
%token<tbnf_token> I_NULL_I_
%token<tbnf_token> I_TRUE_I_
%token<tbnf_token> I__T__I_
%token<tbnf_token> I__V__I_
%token<tbnf_token> STR
%token<tbnf_token> FLOAT
%token<tbnf_token> INT
%token EOF
%start <Json> start
%%

start : start__y_ EOF { $1 }






start__y_ : json { 
                          $1
                      }
jsonpair : STR I__G__I_ json { 
                         JsonPair(unesc(getStr($1)), $3)
                     }
seplist_o__i__s__i__s_json_p_ : json { 
                                              [$1]
                                          }
                              | seplist_o__i__s__i__s_json_p_ I__S__I_ json { 
                                              appendList($1, $3)
                                          }
seplist_o__i__s__i__s_jsonpair_p_ : jsonpair { 
                                                  [$1]
                                              }
                                  | seplist_o__i__s__i__s_jsonpair_p_ I__S__I_ jsonpair { 
                                                  appendList($1, $3)
                                              }
json : INT { 
                     JInt(parseInt(getStr($1)))
                 }
     | FLOAT { 
                     JFlt(parseFlt(getStr($1)))
                 }
     | I_NULL_I_ { 
                     JNull()
                 }
     | STR { 
                     JStr(unesc(getStr($1)))
                 }
     | I__N__I_ I__P__I_ { 
                     JList([])
                 }
     | I__T__I_ I__V__I_ { 
                     JDict([])
                 }
     | I_TRUE_I_ { 
                     JBool(true)
                 }
     | I_FALSE_I_ { 
                     JBool(false)
                 }
     | I__N__I_ seplist_o__i__s__i__s_json_p_ I__P__I_ { 
                     JList($2)
                 }
     | I__T__I_ seplist_o__i__s__i__s_jsonpair_p_ I__V__I_ { 
                     JDict($2)
                 }
