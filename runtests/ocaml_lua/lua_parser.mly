%{
open Lua_require;;
open Lua_lexer;;
open Lua_construct;;
%}
%token<tbnf_token> I__J__I__I
%token<tbnf_token> I__L__I_
%token<tbnf_token> I__M__I_
%token<tbnf_token> I__O__I_
%token<tbnf_token> I__P__I_
%token<tbnf_token> I__Q__I__I
%token<tbnf_token> I__R__I_
%token<tbnf_token> I__S__I_
%token<tbnf_token> I__T__I_
%token<tbnf_token> I__U__I_
%token<tbnf_token> I__U__U__I_
%token<tbnf_token> I__U__U__U__I_
%token<tbnf_token> I__V__I__I
%token<tbnf_token> I__V__V__I_
%token<tbnf_token> I__G__I_
%token<tbnf_token> I__G__G__I_
%token<tbnf_token> I__H__I_
%token<tbnf_token> I__I__I_
%token<tbnf_token> I__I__I__I_
%token<tbnf_token> I__I__J__I_
%token<tbnf_token> I__J__I_
%token<tbnf_token> I__J__J__I_
%token<tbnf_token> I__K__I_
%token<tbnf_token> I__K__J__I_
%token<tbnf_token> I__K__K__I_
%token<tbnf_token> I__N__I_
%token<tbnf_token> I__P__I__I
%token<tbnf_token> I__Q__I_
%token<tbnf_token> I_AND_I_
%token<tbnf_token> I_BREAK_I_
%token<tbnf_token> I_DO_I_
%token<tbnf_token> I_ELSE_I_
%token<tbnf_token> I_ELSEIF_I_
%token<tbnf_token> I_END_I_
%token<tbnf_token> I_FALSE_I_
%token<tbnf_token> I_FOR_I_
%token<tbnf_token> I_FUNCTION_I_
%token<tbnf_token> I_GOTO_I_
%token<tbnf_token> I_IF_I_
%token<tbnf_token> I_IN_I_
%token<tbnf_token> I_LOCAL_I_
%token<tbnf_token> I_NIL_I_
%token<tbnf_token> I_NOT_I_
%token<tbnf_token> I_OR_I_
%token<tbnf_token> I_REPEAT_I_
%token<tbnf_token> I_RETURN_I_
%token<tbnf_token> I_THEN_I_
%token<tbnf_token> I_TRUE_I_
%token<tbnf_token> I_UNTIL_I_
%token<tbnf_token> I_WHILE_I_
%token<tbnf_token> I__T__I__I
%token<tbnf_token> I__U__I__I
%token<tbnf_token> I__V__I_
%token<tbnf_token> I__W__I_
%token<tbnf_token> I__W__J__I_
%token<tbnf_token> NESTED_STR
%token<tbnf_token> STR_LIT
%token<tbnf_token> NUMERAL
%token<tbnf_token> NAME
%token EOF
%start <Lua_construct.block> start
%%

start : start__y_ EOF { $1 }















start__y_ : block { 
                          $1
                      }
nempty_list_o_stat_p_ : stat { 
                                      [$1]
                                  }
                      | nempty_list_o_stat_p_ stat { 
                                      appendList($1, $2)
                                  }
allow_empty_o_nempty_list_o_stat_p__p_ :  { 
                                                       []
                                                   }
                                       | nempty_list_o_stat_p_ { 
                                                       $1
                                                   }
list_o_stat_p_ : allow_empty_o_nempty_list_o_stat_p__p_ { 
                               $1
                           }
opt_o_retstat_p_ : retstat { 
                                 some($1)
                             }
                 |  { 
                                 none()
                             }
block : list_o_stat_p_ opt_o_retstat_p_ { 
                      block($1, $2)
                  }
opt_o__i__h__i__p_ : I__H__I_ { 
                                   some($1)
                               }
                   |  { 
                                   none()
                               }
retstat : I_RETURN_I_ seplist_o__i__s__i__s_exp_p_ opt_o__i__h__i__p_ { 
                        mk_ReturnStmt($1, $2)
                    }
nempty_list_o_elseif_p_ : elseif { 
                                        [$1]
                                    }
                        | nempty_list_o_elseif_p_ elseif { 
                                        appendList($1, $2)
                                    }
allow_empty_o_nempty_list_o_elseif_p__p_ :  { 
                                                         []
                                                     }
                                         | nempty_list_o_elseif_p_ { 
                                                         $1
                                                     }
list_o_elseif_p_ : allow_empty_o_nempty_list_o_elseif_p__p_ { 
                                 $1
                             }
opt_o_else_p_ : else__x_ { 
                              some($1)
                          }
              |  { 
                              none()
                          }
stat : I__H__I_ { 
                     mk_EmptyStmt($1)
                 }
     | nempty_seplist_o__i__s__i__s_exp_p_ I__J__I_ nempty_seplist_o__i__s__i__s_exp_p_ { 
                     mk_Assignment(false, $1, some($3))
                 }
     | exp { 
                     mk_ExprStmt($1)
                 }
     | I__G__G__I_ NAME I__G__G__I_ { 
                     mk_LabelStmt($2)
                 }
     | I_BREAK_I_ { 
                     mk_BreakStmt($1)
                 }
     | I_GOTO_I_ NAME { 
                     mk_GotoStmt($1, $2)
                 }
     | I_DO_I_ block I_END_I_ { 
                     mk_DoStmt($1, $2)
                 }
     | I_WHILE_I_ exp I_DO_I_ block I_END_I_ { 
                     mk_WhileStmt($1, $2, $4)
                 }
     | I_REPEAT_I_ block I_UNTIL_I_ exp { 
                     mk_RepeatStmt($1, $2, $4)
                 }
     | I_IF_I_ exp I_THEN_I_ block list_o_elseif_p_ opt_o_else_p_ I_END_I_ { 
                     mk_IfStmt($1, $2, $4, $5, $6)
                 }
     | I_FOR_I_ NAME I__J__I_ range I_DO_I_ block I_END_I_ { 
                     mk_ForRangeStmt($1, $2, $4, $6)
                 }
     | I_FOR_I_ nempty_seplist_o__i__s__i__s__i_name_k__p_ I_IN_I_ nempty_seplist_o__i__s__i__s_exp_p_ I_DO_I_ block I_END_I_ { 
                     mk_ForInStmt($1, $2, $4, $6)
                 }
     | I_LOCAL_I_ I_FUNCTION_I_ funcname I__O__I_ opt_o_parlist_p_ I__P__I_ block I_END_I_ { 
                     mk_ExprStmt(mk_FuncDef($1, true, some($3), $5, $7))
                 }
     | I_LOCAL_I_ nempty_seplist_o__i__s__i__s__i_name_k__p_ opt_assign_rhs { 
                     mk_Assignment(true, listMap($2, mk_Var), $3)
                 }
opt_assign_rhs : I__J__I_ nempty_seplist_o__i__s__i__s_exp_p_ { 
                               some($2)
                           }
               |  { 
                               none()
                           }
range : exp I__S__I_ exp range_tail { 
                      range($1, $3, $4)
                  }
range_tail : I__S__I_ exp { 
                           some($2)
                       }
           |  { 
                           none()
                       }
elseif : I_ELSEIF_I_ exp I_THEN_I_ block { 
                       if_elseif($1, $2, $4)
                   }
else__x_ : I_ELSE_I_ block { 
                         if_else($1, $2)
                     }
exp : binexp { 
                    let _:int = 0 in
                    $1
                }
binexp : binseq { 
                       mkBinOpSeq($1, mk_Bin, mk_UnsolvedBin)
                   }
binseq : binseq binop binoperand { 
                       appendList(appendList($1, $2), $3)
                   }
       | binoperand { 
                       [$1]
                   }
binoperand : unaryexp { 
                           mkOperand($1)
                       }
unaryexp : I__J__I__I exponent { 
                         mk_Len($1, $2)
                     }
         | I__T__I_ exponent { 
                         mk_Neg($1, $2)
                     }
         | I__W__I_ exponent { 
                         mk_Inv($1, $2)
                     }
         | I_NOT_I_ exponent { 
                         mk_Not($1, $2)
                     }
         | exponent { 
                         $1
                     }
exponent : prefixexp I__Q__I_ exponent { 
                         mk_Exponent($1, $3)
                     }
         | prefixexp { 
                         $1
                     }
prefixexp : NAME { 
                          mk_Var($1)
                      }
          | I__O__I_ exp I__P__I_ { 
                          mk_NestedExp($1, $2)
                      }
          | prefixexp args { 
                          mk_CallFunc($1, $2)
                      }
          | prefixexp I__G__I_ NAME args { 
                          mk_CallMethod($1, $3, $4)
                      }
          | prefixexp I__N__I_ exp I__P__I__I { 
                          mk_Index($1, $3)
                      }
          | prefixexp I__U__I_ NAME { 
                          mk_Attr($1, $3)
                      }
          | atom { 
                          $1
                      }
atom : I_NIL_I_ { 
                     mk_Nil($1)
                 }
     | I_FALSE_I_ { 
                     mk_Bool($1, false)
                 }
     | I_TRUE_I_ { 
                     mk_Bool($1, true)
                 }
     | NUMERAL { 
                     mk_Num($1)
                 }
     | STR_LIT { 
                     mk_String($1)
                 }
     | NESTED_STR { 
                     mk_String($1)
                 }
     | I__U__U__U__I_ { 
                     mk_Ellipse($1)
                 }
     | functiondef { 
                     $1
                 }
     | tableconstructor { 
                     mk_TableExpr($1)
                 }
nempty_seplist_o__i__s__i__s_exp_p_ : exp { 
                                                    [$1]
                                                }
                                    | nempty_seplist_o__i__s__i__s_exp_p_ I__S__I_ exp { 
                                                    appendList($1, $3)
                                                }
allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ :  { 
                                                                     []
                                                                 }
                                                     | nempty_seplist_o__i__s__i__s_exp_p_ { 
                                                                     $1
                                                                 }
seplist_o__i__s__i__s_exp_p_ : allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ { 
                                             $1
                                         }
args : I__O__I_ seplist_o__i__s__i__s_exp_p_ I__P__I_ { 
                     mk_PositionalArgs($1, $2)
                 }
     | tableconstructor { 
                     mk_TableArgs($1)
                 }
     | STR_LIT { 
                     mk_StringArg($1)
                 }
opt_o_funcname_p_ : funcname { 
                                  some($1)
                              }
                  |  { 
                                  none()
                              }
opt_o_parlist_p_ : parlist { 
                                 some($1)
                             }
                 |  { 
                                 none()
                             }
functiondef : I_FUNCTION_I_ opt_o_funcname_p_ I__O__I_ opt_o_parlist_p_ I__P__I_ block I_END_I_ { 
                            mk_FuncDef($1, false, $2, $4, $6)
                        }
varargs : I__S__I_ I__U__U__U__I_ { 
                        some($2)
                    }
        |  { 
                        none()
                    }
nempty_seplist_o__i__s__i__s__i_name_k__p_ : NAME { 
                                                           [$1]
                                                       }
                                           | nempty_seplist_o__i__s__i__s__i_name_k__p_ I__S__I_ NAME { 
                                                           appendList($1, $3)
                                                       }
parlist : I__U__U__U__I_ { 
                        params([], some($1))
                    }
        | nempty_seplist_o__i__s__i__s__i_name_k__p_ varargs { 
                        params($1, $2)
                    }
nempty_seplist_o_fieldsep_s_field_p_ : field { 
                                                     [$1]
                                                 }
                                     | nempty_seplist_o_fieldsep_s_field_p_ fieldsep field { 
                                                     appendList($1, $3)
                                                 }
opt_o_fieldsep_p_ : fieldsep { 
                                  some($1)
                              }
                  |  { 
                                  none()
                              }
tableconstructor : I__T__I__I nempty_seplist_o_fieldsep_s_field_p_ opt_o_fieldsep_p_ I__V__I_ { 
                                 mk_TableConstructor($1, $2)
                             }
                 | I__T__I__I I__V__I_ { 
                                 mk_TableConstructor($1, [])
                             }
funcname : funcname I__U__I_ NAME { 
                         mk_DotName($1, $3)
                     }
         | funcname I__G__I_ NAME { 
                         mk_MethodName($1, $3)
                     }
         | NAME { 
                         mk_VarName($1)
                     }
field : I__N__I_ exp I__P__I__I I__J__I_ exp { 
                      mk_IndexField($1, $2, $5)
                  }
      | NAME I__J__I_ exp { 
                      mk_NameField($1, $3)
                  }
      | exp { 
                      mk_ElementField($1)
                  }
fieldsep : I__S__I_ { 
                         0
                     }
         | I__H__I_ { 
                         0
                     }
binop : I_OR_I_ { 
                      mkOperator($1)
                  }
      | I_AND_I_ { 
                      mkOperator($1)
                  }
      | I__I__I_ { 
                      mkOperator($1)
                  }
      | I__K__I_ { 
                      mkOperator($1)
                  }
      | I__I__J__I_ { 
                      mkOperator($1)
                  }
      | I__K__J__I_ { 
                      mkOperator($1)
                  }
      | I__W__J__I_ { 
                      mkOperator($1)
                  }
      | I__J__J__I_ { 
                      mkOperator($1)
                  }
      | I__U__I__I { 
                      mkOperator($1)
                  }
      | I__W__I_ { 
                      mkOperator($1)
                  }
      | I__M__I_ { 
                      mkOperator($1)
                  }
      | I__I__I__I_ { 
                      mkOperator($1)
                  }
      | I__K__K__I_ { 
                      mkOperator($1)
                  }
      | I__U__U__I_ { 
                      mkOperator($1)
                  }
      | I__R__I_ { 
                      mkOperator($1)
                  }
      | I__T__I_ { 
                      mkOperator($1)
                  }
      | I__Q__I__I { 
                      mkOperator($1)
                  }
      | I__V__I__I { 
                      mkOperator($1)
                  }
      | I__V__V__I_ { 
                      mkOperator($1)
                  }
      | I__L__I_ { 
                      mkOperator($1)
                  }
