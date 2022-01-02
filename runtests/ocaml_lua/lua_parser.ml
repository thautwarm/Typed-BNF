
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = Lua_lexer.token
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState184
  | MenhirState183
  | MenhirState177
  | MenhirState175
  | MenhirState172
  | MenhirState163
  | MenhirState135
  | MenhirState131
  | MenhirState117
  | MenhirState114
  | MenhirState110
  | MenhirState108
  | MenhirState102
  | MenhirState100
  | MenhirState88
  | MenhirState84
  | MenhirState82
  | MenhirState78
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState62
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState52
  | MenhirState48
  | MenhirState42
  | MenhirState38
  | MenhirState34
  | MenhirState31
  | MenhirState28
  | MenhirState23
  | MenhirState18
  | MenhirState13
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState4
  | MenhirState0

# 1 "runtests/ocaml_lua/lua_parser.mly"
  
open Lua_require;;
open Lua_lexer;;
open Lua_construct;;

# 78 "runtests/ocaml_lua/lua_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_goto_exponent : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exponent -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state * 'tv_unaryexp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 90 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv761 * _menhir_state * 'tv_unaryexp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 98 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_unaryexp)), _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 227 "runtests/ocaml_lua/lua_parser.mly"
                                      ( 
                         mk_Exponent(_1, _3)
                     )
# 108 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv762)) : 'freshtv764)
    | MenhirState0 | MenhirState4 | MenhirState6 | MenhirState184 | MenhirState175 | MenhirState172 | MenhirState8 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState163 | MenhirState13 | MenhirState23 | MenhirState57 | MenhirState135 | MenhirState58 | MenhirState131 | MenhirState64 | MenhirState117 | MenhirState70 | MenhirState108 | MenhirState110 | MenhirState102 | MenhirState100 | MenhirState75 | MenhirState77 | MenhirState78 | MenhirState88 | MenhirState84 | MenhirState82 | MenhirState68 | MenhirState65 | MenhirState28 | MenhirState48 | MenhirState38 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_exponent) : 'tv_exponent) = _v in
        let _v : 'tv_exp = 
# 224 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                    _1
                )
# 125 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv766)) : 'freshtv768)
    | _ ->
        _menhir_fail ()

and _menhir_goto_opt_n__i__h__i__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_n__i__h__i__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv759 * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 137 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_n__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv757 * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 144 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_n__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 150 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_n__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 110 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 157 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv755) = _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv753) = Obj.magic _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
    let ((_1 : 'tv_retstat) : 'tv_retstat) = _v in
    let _v : 'tv_opt_n_retstat_p_ = 
# 95 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 173 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_n_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv752)) : 'freshtv754)) : 'freshtv756) : 'freshtv758)) : 'freshtv760)

and _menhir_goto_nempty_list_n_elseif_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_n_elseif_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_nempty_list_n_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSEIF_I_ _v ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747 * _menhir_state * 'tv_nempty_list_n_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_n_elseif_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_n_nempty_list_n_elseif_p__p_ = 
# 122 "runtests/ocaml_lua/lua_parser.mly"
                                                                   ( 
                                                         _1
                                                     )
# 196 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_n_nempty_list_n_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv748)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv750)

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv741 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 212 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 216 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv739 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 224 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 228 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 235 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 266 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 242 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv740)) : 'freshtv742)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv745 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv743 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_args) : 'tv_args) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 263 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 260 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv744)) : 'freshtv746)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fieldsep -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_fieldsep)) = _menhir_stack in
        let _v : 'tv_opt_n_fieldsep_p_ = 
# 347 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 281 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv734)) : 'freshtv736)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv737 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__N__I_ _v ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.NAME _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv738)
    | _ ->
        _menhir_fail ()

and _menhir_run107 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 330 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 334 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv731 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 342 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 347 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 351 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_ = 
# 323 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 359 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_nempty_seplist_n__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv732)

and _menhir_goto_varargs : _menhir_env -> 'ttv_tail -> 'tv_varargs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_varargs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv727 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_varargs) : 'tv_varargs) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_parlist = 
# 329 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 377 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv728)) : 'freshtv730)

and _menhir_run106 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_ -> (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 384 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv725 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 400 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv726)

and _menhir_goto_nempty_seplist_n_fieldsep_s_field_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_n_fieldsep_s_field_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n_fieldsep_s_field_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ = 
# 341 "runtests/ocaml_lua/lua_parser.mly"
                                                                                             ( 
                                                                      _1
                                                                  )
# 426 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv722)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv724)

and _menhir_goto_unaryexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_unaryexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_unaryexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__Q__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_unaryexp) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 448 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv714)
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_unaryexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_unaryexp)) = _menhir_stack in
        let _v : 'tv_exponent = 
# 230 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 475 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv716)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_unaryexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv718)) : 'freshtv720)

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> 'tv_binop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv711 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv712)

and _menhir_goto_opt_n_else_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_n_else_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv709 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 534 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 538 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_n_elseif_p_) * 'tv_opt_n_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv705 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 548 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 552 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_n_elseif_p_) * 'tv_opt_n_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 557 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv703 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 564 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 568 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_n_elseif_p_) * 'tv_opt_n_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 573 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 578 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_list_n_elseif_p_)), (_5 : 'tv_opt_n_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 161 "runtests/ocaml_lua/lua_parser.mly"
                                                                     ( 
                     mk_IfStmt(_1, _2, _4, _5)
                 )
# 585 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv704)) : 'freshtv706)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv707 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 595 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 599 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_n_elseif_p_) * 'tv_opt_n_else_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv708)) : 'freshtv710)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 607 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv701) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 617 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 621 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 296 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 628 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv702)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 635 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | Lua_lexer.I__P__I_ _ ->
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv699 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 683 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv697 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 690 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 173 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 699 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv698)) : 'freshtv700)

and _menhir_goto_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv695) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv693) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_) : 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_) = _v in
    let _v : 'tv_seplist_n__i__s__i__s_exp_p_ = 
# 287 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 718 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv691) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_n__i__s__i__s_exp_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv679 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 731 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv675 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 741 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 746 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv673 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 753 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 758 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 763 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_n__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 290 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 770 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv674)) : 'freshtv676)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv677 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 780 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv678)) : 'freshtv680)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv689 * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 789 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__H__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv683) = Obj.magic _menhir_stack in
            let (_v : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 800 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv681) = Obj.magic _menhir_stack in
            let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 808 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 812 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_n__i__h__i__p_ = 
# 104 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 819 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_n__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv682)) : 'freshtv684)
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv685) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_n__i__h__i__p_ = 
# 107 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                                   none()
                               )
# 830 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_n__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv686)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv687 * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 840 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv688)) : 'freshtv690)
    | _ ->
        _menhir_fail ()) : 'freshtv692) : 'freshtv694)) : 'freshtv696)

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_ -> (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 850 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_goto_opt_n_retstat_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_n_retstat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_list_n_stat_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_n_retstat_p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_list_n_stat_p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_opt_n_retstat_p_) : 'tv_opt_n_retstat_p_) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_list_n_stat_p_)) = _menhir_stack in
    let _v : 'tv_block = 
# 101 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                      block(_1, _2)
                  )
# 904 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv667) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_block) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569 * _menhir_state * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 917 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv565 * _menhir_state * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 927 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 932 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv563 * _menhir_state * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 939 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 944 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 949 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 152 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 956 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv564)) : 'freshtv566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 966 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv568)) : 'freshtv570)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv577 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 975 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 979 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 983 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 987 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv573 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 997 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1001 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1005 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1009 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1014 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv571 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1021 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1025 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1029 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1033 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1038 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1043 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1047 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 164 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 1054 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv572)) : 'freshtv574)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv575 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1064 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1068 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1072 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1076 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv576)) : 'freshtv578)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv585 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1085 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1089 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1093 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv581 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1103 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1107 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1111 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1116 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv579 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1123 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1127 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1131 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1136 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1141 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 167 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 1148 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv580)) : 'freshtv582)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv583 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1158 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1162 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1166 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv584)) : 'freshtv586)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv599 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1175 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1179 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv597 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1185 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1189 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1194 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 191 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 1201 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_elseif) = _v in
        (((match _menhir_s with
        | MenhirState114 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv589 * _menhir_state * 'tv_nempty_list_n_elseif_p_) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv587 * _menhir_state * 'tv_nempty_list_n_elseif_p_) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_elseif) : 'tv_elseif) = _v in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_n_elseif_p_)) = _menhir_stack in
            let _v : 'tv_nempty_list_n_elseif_p_ = 
# 116 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                        appendList(_1, _2)
                                    )
# 1223 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_n_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv588)) : 'freshtv590)
        | MenhirState67 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_elseif) : 'tv_elseif) = _v in
            let _v : 'tv_nempty_list_n_elseif_p_ = 
# 113 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                                        [_1]
                                    )
# 1240 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_n_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv592)) : 'freshtv594)
        | _ ->
            _menhir_fail ()) : 'freshtv596) : 'freshtv598)) : 'freshtv600)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv609 * (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1250 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv607 * (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1256 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1261 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 194 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 1268 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605) = _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let ((_1 : 'tv_else__x_) : 'tv_else__x_) = _v in
        let _v : 'tv_opt_n_else_p_ = 
# 128 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                              some(_1)
                          )
# 1284 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n_else_p_ _menhir_env _menhir_stack _v : 'freshtv602)) : 'freshtv604)) : 'freshtv606) : 'freshtv608)) : 'freshtv610)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv617 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1292 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1296 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1300 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1304 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1308 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv613 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1318 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1322 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1326 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1330 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1334 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1339 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv611 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1346 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1350 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1354 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1358 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1362 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1367 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1372 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), (_3 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1376 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_5 : 'tv_opt_n_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 170 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 1383 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv612)) : 'freshtv614)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv615 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1393 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1397 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1401 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1405 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1409 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv616)) : 'freshtv618)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv623 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1418 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv619 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1428 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1433 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv620)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1478 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv622)) : 'freshtv624)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv631 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1487 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1491 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv627 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1501 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1505 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1510 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv625 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1517 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1521 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1526 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1531 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 155 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 1538 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv626)) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv629 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1548 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1552 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv630)) : 'freshtv632)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv645 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1561 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1565 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1569 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv641 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1579 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1583 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1587 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1592 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv639 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1599 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1603 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1607 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1612 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1617 "runtests/ocaml_lua/lua_parser.ml"
            ))), (_2 : 'tv_opt_n__i_name_k__p_)), _), _, (_4 : 'tv_opt_n_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 311 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                  ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 1624 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv637) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv635) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_functiondef) : 'tv_functiondef) = _v in
            let _v : 'tv_exp = 
# 215 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                    _1
                )
# 1643 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv634)) : 'freshtv636)) : 'freshtv638) : 'freshtv640)) : 'freshtv642)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv643 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1653 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1657 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1661 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv644)) : 'freshtv646)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_start__y_ = 
# 77 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                          _1
                      )
# 1676 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 1697 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 68 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 1701 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv651) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 1709 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv649) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 1717 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv647) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 1725 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 1729 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv648)) : 'freshtv650)) : 'freshtv652) : 'freshtv654)) : 'freshtv656)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv658)) : 'freshtv660)) : 'freshtv662) : 'freshtv664)) : 'freshtv666)
    | _ ->
        _menhir_fail ()) : 'freshtv668) : 'freshtv670)) : 'freshtv672)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ = 
# 281 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 1749 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_opt_n_fieldsep_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_n_fieldsep_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv561 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1760 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_n_fieldsep_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv557 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1770 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_n_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1775 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv555 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1782 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_n_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1787 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1792 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_seplist_n_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 353 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                 mk_TableConstructor(_1, _2)
                             )
# 1799 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        (((match _menhir_s with
        | MenhirState0 | MenhirState4 | MenhirState184 | MenhirState6 | MenhirState175 | MenhirState172 | MenhirState8 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState163 | MenhirState13 | MenhirState23 | MenhirState57 | MenhirState135 | MenhirState58 | MenhirState131 | MenhirState64 | MenhirState117 | MenhirState70 | MenhirState110 | MenhirState108 | MenhirState102 | MenhirState100 | MenhirState77 | MenhirState88 | MenhirState84 | MenhirState82 | MenhirState78 | MenhirState75 | MenhirState68 | MenhirState65 | MenhirState48 | MenhirState42 | MenhirState38 | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_exp = 
# 221 "runtests/ocaml_lua/lua_parser.mly"
                       ( 
                    mk_TableExpr(_1)
                )
# 1820 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv546)) : 'freshtv548)
        | MenhirState34 | MenhirState52 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_args = 
# 293 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 1837 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv550)) : 'freshtv552)
        | _ ->
            _menhir_fail ()) : 'freshtv554) : 'freshtv556)) : 'freshtv558)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv559 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1849 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_n_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv560)) : 'freshtv562)

and _menhir_run178 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1857 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1867 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 365 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 1874 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv544)

and _menhir_run179 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1881 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1891 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 368 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 1898 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv542)

and _menhir_goto_opt_n_parlist_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_n_parlist_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv533 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1911 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1915 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv529 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1925 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1929 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1934 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv530)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv531 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2001 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2005 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv532)) : 'freshtv534)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv539 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2014 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2018 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2022 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2026 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv535 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2036 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2040 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2044 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2048 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2053 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv537 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2120 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2124 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2128 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2132 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_n_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv538)) : 'freshtv540)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_parlist -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv527) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parlist) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv525) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_parlist) : 'tv_parlist) = _v in
    let _v : 'tv_opt_n_parlist_p_ = 
# 305 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 2154 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_n_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv526)) : 'freshtv528)

and _menhir_goto_nempty_seplist_n__i__s__i__s__i_name_k__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2167 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv497 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2177 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2182 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv498)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv499 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2229 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv500)) : 'freshtv502)
    | MenhirState18 | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2245 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv505 * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2256 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2261 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv503 * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2268 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2273 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2277 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 314 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 2285 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv504)) : 'freshtv506)
            | Lua_lexer.NAME _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv507 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2297 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv508)) : 'freshtv510)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 317 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 2309 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv514)) : 'freshtv516)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2324 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv517) = Obj.magic _menhir_stack in
            let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2335 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv518)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv519) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 179 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                               none()
                           )
# 2383 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv521 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2393 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv522)) : 'freshtv524)
    | _ ->
        _menhir_fail ()

and _menhir_goto_field : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_field -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv491 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_field) : 'tv_field) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_nempty_seplist_n_fieldsep_s_field_p_ = 
# 335 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                     appendList(_1, _3)
                                                 )
# 2418 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_n_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv490)) : 'freshtv492)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_field) : 'tv_field) = _v in
        let _v : 'tv_nempty_seplist_n_fieldsep_s_field_p_ = 
# 332 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                                                     [_1]
                                                 )
# 2435 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_n_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv494)) : 'freshtv496)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_AND_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2455 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
        let ((_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2463 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2467 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 374 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2474 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv386)) : 'freshtv388)
    | Lua_lexer.I_OR_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
        let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2483 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
        let ((_1 : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2491 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2495 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 371 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                      mkOperator(_1)
                  )
# 2502 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv390)) : 'freshtv392)
    | Lua_lexer.I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2511 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
        let ((_1 : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2519 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2523 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 377 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2530 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv394)) : 'freshtv396)
    | Lua_lexer.I__I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_v : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2539 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let ((_1 : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2547 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2551 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 404 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2558 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv398)) : 'freshtv400)
    | Lua_lexer.I__I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_v : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2567 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let ((_1 : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2575 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2579 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 383 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2586 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv402)) : 'freshtv404)
    | Lua_lexer.I__J__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
        let (_v : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2595 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        let ((_1 : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2603 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2607 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 392 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2614 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv406)) : 'freshtv408)
    | Lua_lexer.I__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        let (_v : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2623 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
        let ((_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2631 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2635 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 380 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2642 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv410)) : 'freshtv412)
    | Lua_lexer.I__K__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2651 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let ((_1 : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2659 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2663 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 386 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2670 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv414)) : 'freshtv416)
    | Lua_lexer.I__K__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
        let (_v : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2679 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let ((_1 : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2687 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2691 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 407 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2698 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv418)) : 'freshtv420)
    | Lua_lexer.I__L__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2707 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
        let ((_1 : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2715 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2719 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 428 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2726 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv422)) : 'freshtv424)
    | Lua_lexer.I__M__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2735 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
        let ((_1 : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2743 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2747 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 401 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2754 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv426)) : 'freshtv428)
    | Lua_lexer.I__Q__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2763 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
        let ((_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2771 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2775 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 419 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 2782 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv430)) : 'freshtv432)
    | Lua_lexer.I__R__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2791 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
        let ((_1 : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2799 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2803 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 413 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2810 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv434)) : 'freshtv436)
    | Lua_lexer.I__T__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2819 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
        let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2827 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2831 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 416 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2838 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv438)) : 'freshtv440)
    | Lua_lexer.I__U__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
        let (_v : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2847 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
        let ((_1 : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2855 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2859 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 395 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 2866 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv442)) : 'freshtv444)
    | Lua_lexer.I__U__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2875 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445) = Obj.magic _menhir_stack in
        let ((_1 : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2883 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2887 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 410 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2894 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv446)) : 'freshtv448)
    | Lua_lexer.I__V__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
        let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2903 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
        let ((_1 : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2911 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2915 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 422 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 2922 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv450)) : 'freshtv452)
    | Lua_lexer.I__V__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
        let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2931 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453) = Obj.magic _menhir_stack in
        let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2939 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2943 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 425 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 2950 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv454)) : 'freshtv456)
    | Lua_lexer.I__W__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_v : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2959 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
        let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2967 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2971 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 398 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 2978 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv458)) : 'freshtv460)
    | Lua_lexer.I__W__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2987 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2995 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2999 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 389 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 3006 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv462)) : 'freshtv464)
    | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_binseq)) = _menhir_stack in
        let _v : 'tv_binexp = 
# 245 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                       mkBinOpSeq(_1, mk_Bin, mk_UnsolvedBin)
                   )
# 3018 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        (((match _menhir_s with
        | MenhirState13 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3030 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binexp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465 * _menhir_state * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3038 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_binexp) : 'tv_binexp) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3045 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_unaryexp = 
# 242 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         mk_Not(_1, _2)
                     )
# 3052 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv466)) : 'freshtv468)
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3060 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binexp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3068 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_binexp) : 'tv_binexp) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3075 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_unaryexp = 
# 233 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Len(_1, _2)
                     )
# 3082 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv470)) : 'freshtv472)
        | MenhirState9 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3090 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binexp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3098 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_binexp) : 'tv_binexp) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3105 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_unaryexp = 
# 236 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         mk_Neg(_1, _2)
                     )
# 3112 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv474)) : 'freshtv476)
        | MenhirState4 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv479 * _menhir_state * (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3120 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binexp) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3128 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_binexp) : 'tv_binexp) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3135 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_unaryexp = 
# 239 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         mk_Inv(_1, _2)
                     )
# 3142 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv478)) : 'freshtv480)
        | _ ->
            _menhir_fail ()) : 'freshtv482) : 'freshtv484)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv486)) : 'freshtv488)

and _menhir_goto_range_tail : _menhir_env -> 'ttv_tail -> 'tv_range_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_exp) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3161 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let (_v : 'tv_range_tail) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_exp) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3168 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let ((_4 : 'tv_range_tail) : 'tv_range_tail) = _v in
    let (((_menhir_stack, _menhir_s, (_1 : 'tv_exp)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_range = 
# 182 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                      range(_1, _3, _4)
                  )
# 3177 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv379) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_range) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv377 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3188 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3192 "runtests/ocaml_lua/lua_parser.ml"
    )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3196 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_DO_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv373 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3206 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3210 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3214 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3219 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv374)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv375 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3286 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3290 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3294 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv376)) : 'freshtv378)) : 'freshtv380) : 'freshtv382)) : 'freshtv384)

and _menhir_goto_allow_empty_n_nempty_list_n_elseif_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_n_nempty_list_n_elseif_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_n_nempty_list_n_elseif_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_n_nempty_list_n_elseif_p__p_) : 'tv_allow_empty_n_nempty_list_n_elseif_p__p_) = _v in
    let _v : 'tv_list_n_elseif_p_ = 
# 125 "runtests/ocaml_lua/lua_parser.mly"
                                                            ( 
                                 _1
                             )
# 3314 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv367) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_n_elseif_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv365 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3325 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3329 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_n_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSE_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        let (_v : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3340 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv360)
    | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_n_else_p_ = 
# 131 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                              none()
                          )
# 3408 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n_else_p_ _menhir_env _menhir_stack _v : 'freshtv362)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv363 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3418 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3422 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_n_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv364)) : 'freshtv366)) : 'freshtv368) : 'freshtv370)) : 'freshtv372)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3430 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prefixexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        let (_v : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3485 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3496 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3501 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3524 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv342)) : 'freshtv344)
    | Lua_lexer.I__N__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        let (_v : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3535 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv346)
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | Lua_lexer.I__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        let (_v : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3584 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3595 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3600 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3607 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3612 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3616 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 272 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 3624 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv348)) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3634 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv352)) : 'freshtv354)
    | Lua_lexer.STR_LIT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_exp = 
# 218 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                    _1
                )
# 3649 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv356)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv358)

and _menhir_reduce65 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_nempty_seplist_n__i__s__i__s_exp_p_ = 
# 275 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                    [_1]
                                                )
# 3665 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_n__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nempty_seplist_n__i__s__i__s_exp_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_n__i__s__i__s_exp_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ = 
# 284 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                                     _1
                                                                 )
# 3690 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv312)) : 'freshtv314)
    | MenhirState0 | MenhirState23 | MenhirState57 | MenhirState58 | MenhirState64 | MenhirState117 | MenhirState70 | MenhirState110 | MenhirState77 | MenhirState84 | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3712 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv316)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv318)) : 'freshtv320)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3764 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3776 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_stat = 
# 137 "runtests/ocaml_lua/lua_parser.mly"
                                                                                        ( 
                     mk_Assignment(false, _1, some(_3))
                 )
# 3784 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3794 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv324)) : 'freshtv326)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv331 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3803 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3807 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv327 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3817 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3821 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3826 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv328)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv329 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3895 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3899 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv330)) : 'freshtv332)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3908 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3920 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 176 "runtests/ocaml_lua/lua_parser.mly"
                                                              ( 
                               some(_2)
                           )
# 3928 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3938 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv336)) : 'freshtv338)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nempty_list_n_stat_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_n_stat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_nempty_list_n_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * 'tv_nempty_list_n_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_n_stat_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_n_nempty_list_n_stat_p__p_ = 
# 89 "runtests/ocaml_lua/lua_parser.mly"
                                                               ( 
                                                       _1
                                                   )
# 4015 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_n_nempty_list_n_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv306)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv308)

and _menhir_goto_allow_empty_n_nempty_list_n_stat_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_n_nempty_list_n_stat_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_n_nempty_list_n_stat_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_n_nempty_list_n_stat_p__p_) : 'tv_allow_empty_n_nempty_list_n_stat_p__p_) = _v in
    let _v : 'tv_list_n_stat_p_ = 
# 92 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                               _1
                           )
# 4038 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv299) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_n_stat_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_list_n_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_RETURN_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291) = Obj.magic _menhir_stack in
        let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4056 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv292)
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_n_retstat_p_ = 
# 98 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4104 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_list_n_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv296)) : 'freshtv298)) : 'freshtv300) : 'freshtv302)) : 'freshtv304)

and _menhir_reduce85 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4118 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4124 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 257 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 4131 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_) : 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_) = _v in
    let _v : 'tv_seplist_n_fieldsep_s_field_p_ = 
# 344 "runtests/ocaml_lua/lua_parser.mly"
                                                                                      ( 
                                              _1
                                          )
# 4150 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv285) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_n_fieldsep_s_field_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv283 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4161 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState177 in
        let _v : 'tv_opt_n_fieldsep_p_ = 
# 350 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 4179 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv282)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv284)) : 'freshtv286) : 'freshtv288)) : 'freshtv290)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4190 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4202 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4207 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv278)
    | Lua_lexer.I__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__N__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.STR_LIT _ ->
        _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4254 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv280)

and _menhir_run172 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4262 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172

and _menhir_reduce80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_n_parlist_p_ = 
# 308 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4309 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_n_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4316 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4326 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4336 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4340 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 326 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 4347 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv276)

and _menhir_goto_opt_n__i_name_k__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_n__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv273 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4358 "runtests/ocaml_lua/lua_parser.ml"
    )) * 'tv_opt_n__i_name_k__p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4368 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4373 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | Lua_lexer.NAME _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | Lua_lexer.I__P__I_ _ ->
            _menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv270)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4396 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv272)) : 'freshtv274)

and _menhir_reduce63 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4404 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4410 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_ = 
# 320 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 4417 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_n__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4430 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4436 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_n__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_nempty_seplist_n__i__s__i__s_exp_p_ = 
# 278 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 4444 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_n__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv164)) : 'freshtv166)
    | MenhirState131 | MenhirState108 | MenhirState88 | MenhirState82 | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        (_menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) : 'freshtv168)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4456 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I__I _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4466 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4471 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4478 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_ : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4483 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 269 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 4491 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv170)) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4501 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv174)) : 'freshtv176)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4510 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4520 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4525 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4592 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv180)) : 'freshtv182)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4601 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_THEN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4611 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4616 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_ELSEIF_I_ _v ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState67 in
                let _v : 'tv_allow_empty_n_nempty_list_n_elseif_p__p_ = 
# 119 "runtests/ocaml_lua/lua_parser.mly"
                                            ( 
                                                         []
                                                     )
# 4633 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_allow_empty_n_nempty_list_n_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv184)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4647 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv188)) : 'freshtv190)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4656 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_THEN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4666 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4671 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4738 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv194)) : 'freshtv196)
    | MenhirState0 | MenhirState23 | MenhirState57 | MenhirState58 | MenhirState64 | MenhirState117 | MenhirState70 | MenhirState110 | MenhirState77 | MenhirState78 | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 140 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                     mk_ExprStmt(_1)
                 )
# 4757 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv198)
        | Lua_lexer.I__J__I_ _ | Lua_lexer.I__S__I_ _ ->
            _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv200)) : 'freshtv202)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4781 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv206)) : 'freshtv208)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_exp) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4831 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
            let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4842 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv210)
        | Lua_lexer.I_DO_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
            let _v : 'tv_range_tail = 
# 188 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                           none()
                       )
# 4888 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_exp) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4898 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv214)) : 'freshtv216)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4907 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4913 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_range_tail = 
# 185 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 4921 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv218)) : 'freshtv220)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv223 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4929 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4933 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv221 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4939 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4943 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4948 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_stat = 
# 158 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 4955 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv222)) : 'freshtv224)
    | MenhirState4 | MenhirState9 | MenhirState11 | MenhirState163 | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_binoperand = 
# 248 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                           mkOperand(_1)
                       )
# 4969 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        (((match _menhir_s with
        | MenhirState163 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binoperand) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_3 : 'tv_binoperand) : 'tv_binoperand) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_binseq)), (_2 : 'tv_binop)) = _menhir_stack in
            let _v : 'tv_binseq = 
# 251 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 4991 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv226)) : 'freshtv228)
        | MenhirState4 | MenhirState9 | MenhirState11 | MenhirState13 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binoperand) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_binoperand) : 'tv_binoperand) = _v in
            let _v : 'tv_binseq = 
# 254 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 5008 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv230)) : 'freshtv232)
        | _ ->
            _menhir_fail ()) : 'freshtv234) : 'freshtv236)) : 'freshtv238)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5018 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv241 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5028 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5033 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5040 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5045 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5050 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 260 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 5057 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv240)) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5067 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv244)) : 'freshtv246)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5076 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5080 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5086 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5090 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5095 "runtests/ocaml_lua/lua_parser.ml"
        ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_field = 
# 359 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 5102 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv248)) : 'freshtv250)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5110 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I__I _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5120 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_v : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5125 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__J__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5136 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) * (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5140 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5145 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv252)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5190 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) * (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5194 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv254)) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5205 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv258)) : 'freshtv260)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv263 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5214 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5218 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5222 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv261 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5228 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5232 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5236 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5241 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_field = 
# 356 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 5248 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv262)) : 'freshtv264)
    | MenhirState6 | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
        let _v : 'tv_field = 
# 362 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 5262 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState23 | MenhirState57 | MenhirState58 | MenhirState64 | MenhirState117 | MenhirState70 | MenhirState110 | MenhirState77 | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_stat) : 'tv_stat) = _v in
        let _v : 'tv_nempty_list_n_stat_p_ = 
# 80 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                      [_1]
                                  )
# 5285 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_n_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv156)) : 'freshtv158)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_nempty_list_n_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_nempty_list_n_stat_p_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_stat) : 'tv_stat) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_n_stat_p_)) = _menhir_stack in
        let _v : 'tv_nempty_list_n_stat_p_ = 
# 83 "runtests/ocaml_lua/lua_parser.mly"
                                                   ( 
                                      appendList(_1, _2)
                                  )
# 5303 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_n_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv160)) : 'freshtv162)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv62)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_nempty_seplist_n_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv64)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5327 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_n_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5336 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5340 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5344 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5353 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5367 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5371 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv74)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5380 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5388 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_nempty_list_n_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv80)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5401 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5405 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5409 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv82)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5418 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s__i_name_k__p_) * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5422 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5431 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv86)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5439 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5448 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_nempty_list_n_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5461 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5470 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv97 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5479 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5483 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5487 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5491 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5500 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5504 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5508 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5517 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5526 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5530 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5539 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5548 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5552 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5561 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv111 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5570 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5574 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5578 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5582 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5586 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv112)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5595 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5599 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5603 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5607 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv114)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5616 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5625 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5634 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5638 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv120)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5647 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5651 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv122)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5660 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_nempty_seplist_n__i__s__i__s_exp_p_) * (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5669 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5678 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_unaryexp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5692 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5701 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5710 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5714 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_n_parlist_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5718 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5727 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_n__i_name_k__p_) * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5731 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5740 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5749 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5758 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv144)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5767 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv146)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5776 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5780 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv148)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5789 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv150)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5798 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv152)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv154)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_n_nempty_list_n_stat_p__p_ = 
# 86 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                       []
                                                   )
# 5814 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_n_nempty_list_n_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5821 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5831 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5835 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 209 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                    mk_String(_1)
                )
# 5842 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv60)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5849 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5859 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5863 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 206 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                    mk_Num(_1)
                )
# 5870 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv58)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5877 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5887 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5930 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5940 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5944 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 212 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                    mk_Ellipse(_1)
                )
# 5951 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv56)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5958 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__N__I_ _v ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.NAME _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__H__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState6 in
        let _v : 'tv_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ = 
# 338 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                                                      []
                                                                  )
# 6004 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_n_nempty_seplist_n_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6015 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6058 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6101 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6144 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6154 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6158 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 134 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6165 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv52)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6172 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6184 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6189 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__G__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6200 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6204 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6209 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6216 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6220 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6225 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6230 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 143 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6237 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv42)) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6247 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6251 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv46)) : 'freshtv48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6262 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv50)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6270 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6313 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6323 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6327 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 203 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                    mk_Bool(_1, true)
                )
# 6334 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6341 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6406 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6449 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6459 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6463 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 197 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                    mk_Nil(_1)
                )
# 6470 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6477 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FUNCTION_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6489 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState59 in
        let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6495 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6506 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6510 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6515 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__O__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv27 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6526 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6530 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6534 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6539 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | Lua_lexer.I__P__I_ _ ->
                    _menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv28)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv29 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6562 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6566 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6570 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv30)) : 'freshtv32)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6581 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6585 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv34)) : 'freshtv36)
    | Lua_lexer.NAME _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6599 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6642 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6654 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6659 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6666 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6671 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6675 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6680 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 149 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 6687 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6697 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv26)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6705 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6718 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let ((_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6726 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6730 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_opt_n__i_name_k__p_ = 
# 299 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                    some(_1)
                                )
# 6737 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv14)) : 'freshtv16)
    | Lua_lexer.I__O__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_n__i_name_k__p_ = 
# 302 "runtests/ocaml_lua/lua_parser.mly"
                       ( 
                                    none()
                                )
# 6748 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_n__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6758 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6766 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6778 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState73 in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6784 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6795 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6799 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6804 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv8)
        | Lua_lexer.I_IN_I_ _ | Lua_lexer.I__S__I_ _ ->
            _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6851 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6855 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6867 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6877 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6881 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_exp = 
# 200 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                    mk_Bool(_1, false)
                )
# 6888 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6895 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6960 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6970 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6974 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 146 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 6981 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 7000 "runtests/ocaml_lua/lua_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.EOF | Lua_lexer.I_RETURN_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))
