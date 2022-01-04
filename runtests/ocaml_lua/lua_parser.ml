
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
  | MenhirState186
  | MenhirState185
  | MenhirState179
  | MenhirState177
  | MenhirState174
  | MenhirState163
  | MenhirState159
  | MenhirState145
  | MenhirState142
  | MenhirState138
  | MenhirState136
  | MenhirState130
  | MenhirState128
  | MenhirState116
  | MenhirState112
  | MenhirState110
  | MenhirState106
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState98
  | MenhirState96
  | MenhirState95
  | MenhirState93
  | MenhirState92
  | MenhirState90
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState79
  | MenhirState75
  | MenhirState69
  | MenhirState45
  | MenhirState40
  | MenhirState36
  | MenhirState32
  | MenhirState29
  | MenhirState28
  | MenhirState23
  | MenhirState18
  | MenhirState12
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState7
  | MenhirState5
  | MenhirState0

# 1 "runtests/ocaml_lua/lua_parser.mly"
  
open Lua_require;;
open Lua_lexer;;
open Lua_construct;;

# 78 "runtests/ocaml_lua/lua_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o_fieldsep_s_field_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv773 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv771 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 351 "runtests/ocaml_lua/lua_parser.mly"
                                                                                             ( 
                                                                      _1
                                                                  )
# 103 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv772)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv774)

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 114 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_goto_field : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_field -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv765 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_field) : 'tv_field) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 345 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                     appendList(_1, _3)
                                                 )
# 174 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv764)) : 'freshtv766)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv769) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_field) : 'tv_field) = _v in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 342 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                                                     [_1]
                                                 )
# 191 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv768)) : 'freshtv770)
    | _ ->
        _menhir_fail ()

and _menhir_goto_range_tail : _menhir_env -> 'ttv_tail -> 'tv_range_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv761 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 203 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let (_v : 'tv_range_tail) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 210 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let ((_4 : 'tv_range_tail) : 'tv_range_tail) = _v in
    let (((_menhir_stack, _menhir_s, (_1 : 'tv_exp)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_range = 
# 186 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                      range(_1, _3, _4)
                  )
# 219 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv757) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_range) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv755 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 230 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 234 "runtests/ocaml_lua/lua_parser.ml"
    )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 238 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_DO_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv751 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 248 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 252 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 256 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 261 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv752)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv753 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 330 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 334 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 338 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv754)) : 'freshtv756)) : 'freshtv758) : 'freshtv760)) : 'freshtv762)

and _menhir_reduce65 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 285 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                    [_1]
                                                )
# 351 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState116 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 294 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                                     _1
                                                                 )
# 376 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv722)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv724)) : 'freshtv726)
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState92 | MenhirState145 | MenhirState98 | MenhirState138 | MenhirState105 | MenhirState112 | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv727 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 398 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv728)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv730)) : 'freshtv732)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv737 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 452 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv733 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 464 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_stat = 
# 141 "runtests/ocaml_lua/lua_parser.mly"
                                                                                        ( 
                     mk_Assignment(false, _1, some(_3))
                 )
# 472 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv734)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv735 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 482 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv736)) : 'freshtv738)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv743 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 491 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 495 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv739 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 505 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 509 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 514 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv740)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv741 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 585 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 589 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv742)) : 'freshtv744)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv749 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 598 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv745 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 610 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 180 "runtests/ocaml_lua/lua_parser.mly"
                                                              ( 
                               some(_2)
                           )
# 618 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv746)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv747 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 628 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv748)) : 'freshtv750)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> 'tv_binop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv719 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv720)

and _menhir_goto_binseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_AND_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 692 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv533) = Obj.magic _menhir_stack in
        let ((_1 : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 700 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 704 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 384 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 711 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv534)) : 'freshtv536)
    | Lua_lexer.I_OR_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
        let (_v : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 720 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let ((_1 : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 728 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 732 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 381 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                      mkOperator(_1)
                  )
# 739 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv538)) : 'freshtv540)
    | Lua_lexer.I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 748 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
        let ((_1 : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 756 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 760 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 387 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 767 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv542)) : 'freshtv544)
    | Lua_lexer.I__I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
        let (_v : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 776 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
        let ((_1 : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 784 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 788 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 414 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 795 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv546)) : 'freshtv548)
    | Lua_lexer.I__I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
        let (_v : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 804 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
        let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 812 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 816 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 393 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 823 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv550)) : 'freshtv552)
    | Lua_lexer.I__J__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        let (_v : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 832 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
        let ((_1 : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 840 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 844 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 402 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 851 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv554)) : 'freshtv556)
    | Lua_lexer.I__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
        let (_v : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 860 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        let ((_1 : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 868 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 872 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 390 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 879 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv558)) : 'freshtv560)
    | Lua_lexer.I__K__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
        let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 888 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
        let ((_1 : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 896 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 900 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 396 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 907 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv562)) : 'freshtv564)
    | Lua_lexer.I__K__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let (_v : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 916 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        let ((_1 : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 924 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 928 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 417 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 935 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv566)) : 'freshtv568)
    | Lua_lexer.I__L__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 944 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
        let ((_1 : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 952 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 956 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 438 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 963 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv570)) : 'freshtv572)
    | Lua_lexer.I__M__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 972 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let ((_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 980 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 984 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 411 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 991 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv574)) : 'freshtv576)
    | Lua_lexer.I__Q__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1000 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let ((_1 : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1008 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1012 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 429 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1019 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv578)) : 'freshtv580)
    | Lua_lexer.I__R__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1028 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
        let ((_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1036 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1040 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 423 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1047 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv582)) : 'freshtv584)
    | Lua_lexer.I__T__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1056 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
        let ((_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1064 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1068 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 426 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1075 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv586)) : 'freshtv588)
    | Lua_lexer.I__U__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
        let (_v : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1084 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
        let ((_1 : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1092 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1096 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 405 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1103 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv590)) : 'freshtv592)
    | Lua_lexer.I__U__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1112 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv593) = Obj.magic _menhir_stack in
        let ((_1 : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1120 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1124 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 420 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1131 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv594)) : 'freshtv596)
    | Lua_lexer.I__V__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1140 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
        let ((_1 : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1148 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1152 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 432 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1159 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv598)) : 'freshtv600)
    | Lua_lexer.I__V__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1168 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let ((_1 : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1176 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1180 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 435 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1187 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv602)) : 'freshtv604)
    | Lua_lexer.I__W__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607) = Obj.magic _menhir_stack in
        let (_v : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1196 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605) = Obj.magic _menhir_stack in
        let ((_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1204 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1208 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 408 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1215 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv606)) : 'freshtv608)
    | Lua_lexer.I__W__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv611) = Obj.magic _menhir_stack in
        let (_v : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1224 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
        let ((_1 : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1232 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1236 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 399 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1243 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv610)) : 'freshtv612)
    | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_binseq)) = _menhir_stack in
        let _v : 'tv_binexp = 
# 204 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                       mkBinOpSeq(_1, mk_Bin, mk_UnsolvedBin)
                   )
# 1255 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv711) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv709) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binexp) : 'tv_binexp) = _v in
        let _v : 'tv_exp = 
# 201 "runtests/ocaml_lua/lua_parser.mly"
             ( 
                    _1
                )
# 1274 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((match _menhir_s with
        | MenhirState45 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv615 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1287 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv613 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1293 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 288 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 1301 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv614)) : 'freshtv616)
        | MenhirState159 | MenhirState136 | MenhirState116 | MenhirState110 | MenhirState40 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            (_menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) : 'freshtv618)
        | MenhirState75 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv625 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1313 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv621 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1323 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1328 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv619 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1335 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1340 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 249 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 1348 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv620)) : 'freshtv622)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv623 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1358 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv624)) : 'freshtv626)
        | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv631 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1367 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_DO_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv627 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1377 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1382 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv628)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv629 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1451 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv630)) : 'freshtv632)
        | MenhirState93 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv639 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1460 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv635 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1470 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1475 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_ELSEIF_I_ _v ->
                    _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
                | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState95 in
                    let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 123 "runtests/ocaml_lua/lua_parser.mly"
                                            ( 
                                                         []
                                                     )
# 1492 "runtests/ocaml_lua/lua_parser.ml"
                     in
                    (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv634)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv636)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv637 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1506 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv638)) : 'freshtv640)
        | MenhirState96 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv645 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1515 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv641 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1525 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1530 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv642)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv643 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1599 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv644)) : 'freshtv646)
        | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState92 | MenhirState145 | MenhirState98 | MenhirState138 | MenhirState105 | MenhirState106 | MenhirState112 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv651 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_stat = 
# 144 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                     mk_ExprStmt(_1)
                 )
# 1618 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv648)
            | Lua_lexer.I__J__I_ _ | Lua_lexer.I__S__I_ _ ->
                _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv649 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv650)) : 'freshtv652)
        | MenhirState103 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1642 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv654)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv656)) : 'freshtv658)
        | MenhirState128 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv665 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1694 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1705 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv660)
            | Lua_lexer.I_DO_I_ _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv661) = Obj.magic _menhir_stack in
                let _v : 'tv_range_tail = 
# 192 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                           none()
                       )
# 1753 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv662)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1763 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv664)) : 'freshtv666)
        | MenhirState130 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv669 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1772 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv667 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1778 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_range_tail = 
# 189 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 1786 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv668)) : 'freshtv670)
        | MenhirState163 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv673 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1794 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1798 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv671 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1804 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1808 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1813 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 162 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 1820 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv672)) : 'freshtv674)
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv681 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1828 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv677 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1838 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1843 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv675 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1850 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1855 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1860 "runtests/ocaml_lua/lua_parser.ml"
                ))), _, (_2 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 240 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 1867 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv676)) : 'freshtv678)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv679 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1877 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv680)) : 'freshtv682)
        | MenhirState9 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1886 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1890 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1896 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1900 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1905 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 369 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 1912 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv684)) : 'freshtv686)
        | MenhirState174 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv695 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1920 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv691 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1930 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1935 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__J__I_ _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv687 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1946 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1950 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1955 "runtests/ocaml_lua/lua_parser.ml"
                    )) = _v in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    ((match _tok with
                    | Lua_lexer.I_FALSE_I_ _v ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I_FUNCTION_I_ _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I_NIL_I_ _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I_NOT_I_ _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I_TRUE_I_ _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__J__I__I _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__O__I_ _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__T__I_ _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__T__I__I _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__U__U__U__I_ _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.I__W__I_ _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.NAME _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.NESTED_STR _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.NUMERAL _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | Lua_lexer.STR_LIT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv688)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv689 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2002 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2006 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv690)) : 'freshtv692)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv693 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2017 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv694)) : 'freshtv696)
        | MenhirState177 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv699 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2026 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2030 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2034 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv697 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2040 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2044 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2048 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2053 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 366 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 2060 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv698)) : 'freshtv700)
        | MenhirState7 | MenhirState186 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv703 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 372 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 2074 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv702)) : 'freshtv704)
        | _ ->
            _menhir_fail ()) : 'freshtv706) : 'freshtv708)) : 'freshtv710)) : 'freshtv712) : 'freshtv714)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv716)) : 'freshtv718)

and _menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv531) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv529) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    let _v : 'tv_list_o_elseif_p_ = 
# 129 "runtests/ocaml_lua/lua_parser.mly"
                                                            ( 
                                 _1
                             )
# 2102 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv527) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_elseif_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv525 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2113 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2117 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSE_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2128 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv520)
    | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_else_p_ = 
# 135 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                              none()
                          )
# 2198 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv522)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv523 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2208 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2212 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv524)) : 'freshtv526)) : 'freshtv528) : 'freshtv530)) : 'freshtv532)

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2220 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_opt_o__i__h__i__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i__h__i__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv517 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2268 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv515 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2275 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_o__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2281 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 114 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 2288 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513) = _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
    let ((_1 : 'tv_retstat) : 'tv_retstat) = _v in
    let _v : 'tv_opt_o_retstat_p_ = 
# 99 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 2304 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv510)) : 'freshtv512)) : 'freshtv514) : 'freshtv516)) : 'freshtv518)

and _menhir_goto_unaryexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_unaryexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unaryexp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_unaryexp) : 'tv_unaryexp) = _v in
    let _v : 'tv_binoperand = 
# 213 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                           mkOperand(_1)
                       )
# 2323 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_binoperand) = _v in
    (((match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_binseq)), (_2 : 'tv_binop)) = _menhir_stack in
        let _v : 'tv_binseq = 
# 207 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 2345 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv496)) : 'freshtv498)
    | MenhirState0 | MenhirState7 | MenhirState186 | MenhirState174 | MenhirState177 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState28 | MenhirState85 | MenhirState86 | MenhirState163 | MenhirState159 | MenhirState92 | MenhirState93 | MenhirState145 | MenhirState96 | MenhirState98 | MenhirState136 | MenhirState138 | MenhirState103 | MenhirState128 | MenhirState130 | MenhirState105 | MenhirState106 | MenhirState116 | MenhirState112 | MenhirState110 | MenhirState75 | MenhirState40 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let _v : 'tv_binseq = 
# 210 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 2362 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv500)) : 'freshtv502)
    | _ ->
        _menhir_fail ()) : 'freshtv504) : 'freshtv506)) : 'freshtv508)

and _menhir_goto_opt_o_else_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_else_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv493 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2375 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2379 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv489 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2389 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2393 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2398 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv487 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2405 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2409 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2414 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2419 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_list_o_elseif_p_)), (_5 : 'tv_opt_o_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 165 "runtests/ocaml_lua/lua_parser.mly"
                                                                     ( 
                     mk_IfStmt(_1, _2, _4, _5)
                 )
# 2426 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv488)) : 'freshtv490)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv491 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2436 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2440 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv492)) : 'freshtv494)

and _menhir_goto_nempty_list_o_elseif_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_elseif_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSEIF_I_ _v ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 126 "runtests/ocaml_lua/lua_parser.mly"
                                                                   ( 
                                                         _1
                                                     )
# 2464 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv484)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv486)

and _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    let _v : 'tv_seplist_o__i__s__i__s_exp_p_ = 
# 297 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 2487 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o__i__s__i__s_exp_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2500 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2510 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2515 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2522 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2527 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2532 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 300 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 2539 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv463 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2549 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv464)) : 'freshtv466)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2558 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__H__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
            let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2569 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
            let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2577 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2581 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 108 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 2588 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv468)) : 'freshtv470)
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 111 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                                   none()
                               )
# 2599 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv473 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2609 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()) : 'freshtv478) : 'freshtv480)) : 'freshtv482)

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv453 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2624 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2628 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2636 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2640 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2647 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 246 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 2654 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv452)) : 'freshtv454)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_args) : 'tv_args) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 243 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 2672 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv456)) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fieldsep -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_fieldsep)) = _menhir_stack in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 357 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 2693 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv446)) : 'freshtv448)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__N__I_ _v ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.NAME _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186) : 'freshtv450)
    | _ ->
        _menhir_fail ()

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv443 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2747 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv441 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2754 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 177 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 2763 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv442)) : 'freshtv444)

and _menhir_run135 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2770 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2774 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv439 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2782 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2787 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2791 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 333 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 2799 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv440)

and _menhir_goto_varargs : _menhir_env -> 'ttv_tail -> 'tv_varargs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_varargs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_varargs) : 'tv_varargs) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_parlist = 
# 339 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 2817 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv436)) : 'freshtv438)

and _menhir_run134 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2824 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv433 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2840 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv434)

and _menhir_goto_exponent : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exponent -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2853 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2861 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 231 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                         mk_Exponent(_1, _3)
                     )
# 2871 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv410)) : 'freshtv412)
    | MenhirState0 | MenhirState7 | MenhirState186 | MenhirState177 | MenhirState174 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState85 | MenhirState163 | MenhirState86 | MenhirState159 | MenhirState92 | MenhirState145 | MenhirState98 | MenhirState136 | MenhirState138 | MenhirState130 | MenhirState128 | MenhirState103 | MenhirState105 | MenhirState106 | MenhirState116 | MenhirState112 | MenhirState110 | MenhirState96 | MenhirState93 | MenhirState28 | MenhirState75 | MenhirState40 | MenhirState69 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_exponent) : 'tv_exponent) = _v in
        let _v : 'tv_unaryexp = 
# 228 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 2888 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv414)) : 'freshtv416)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2896 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2904 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2911 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 225 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Not(_1, _2)
                     )
# 2918 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv418)) : 'freshtv420)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2926 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2934 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2941 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 216 "runtests/ocaml_lua/lua_parser.mly"
                               ( 
                         mk_Len(_1, _2)
                     )
# 2948 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv422)) : 'freshtv424)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2956 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2964 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2971 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 219 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Neg(_1, _2)
                     )
# 2978 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv426)) : 'freshtv428)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2986 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2994 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3001 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 222 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Inv(_1, _2)
                     )
# 3008 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv430)) : 'freshtv432)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3017 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3027 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3031 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 306 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 3038 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv408)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3045 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | Lua_lexer.I__P__I_ _ ->
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_goto_opt_o_retstat_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_retstat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o_retstat_p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_opt_o_retstat_p_) : 'tv_opt_o_retstat_p_) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_list_o_stat_p_)) = _menhir_stack in
    let _v : 'tv_block = 
# 105 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                      block(_1, _2)
                  )
# 3103 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_block) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3116 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3126 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3131 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv297 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3138 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3143 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3148 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 156 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 3155 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv298)) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3165 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv302)) : 'freshtv304)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv311 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3174 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3178 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3182 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3186 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3196 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3200 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3204 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3208 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3213 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv305 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3220 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3224 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3228 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3232 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3237 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3242 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3246 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 168 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 3253 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv306)) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv309 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3263 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3267 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3271 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3275 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv310)) : 'freshtv312)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv319 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3284 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3288 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3292 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv315 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3302 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3306 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3310 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3315 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv313 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3322 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3326 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3330 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3335 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3340 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 171 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 3347 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv314)) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv317 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3357 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3361 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3365 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv318)) : 'freshtv320)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv333 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3374 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3378 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv331 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3384 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3388 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3393 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 195 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 3400 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_elseif) = _v in
        (((match _menhir_s with
        | MenhirState142 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_elseif) : 'tv_elseif) = _v in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 120 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                        appendList(_1, _2)
                                    )
# 3422 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv322)) : 'freshtv324)
        | MenhirState95 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_elseif) : 'tv_elseif) = _v in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 117 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                                        [_1]
                                    )
# 3439 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv326)) : 'freshtv328)
        | _ ->
            _menhir_fail ()) : 'freshtv330) : 'freshtv332)) : 'freshtv334)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3449 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3455 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3460 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 198 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 3467 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339) = _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
        let ((_1 : 'tv_else__x_) : 'tv_else__x_) = _v in
        let _v : 'tv_opt_o_else_p_ = 
# 132 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                              some(_1)
                          )
# 3483 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv336)) : 'freshtv338)) : 'freshtv340) : 'freshtv342)) : 'freshtv344)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv351 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3491 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3495 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3499 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3503 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3507 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv347 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3517 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3521 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3525 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3529 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3533 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3538 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv345 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3545 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3549 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3553 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3557 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3561 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3566 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3571 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), (_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3575 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_5 : 'tv_opt_o_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 174 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 3582 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv346)) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv349 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3592 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3596 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3600 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3604 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3608 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv350)) : 'freshtv352)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3617 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3627 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3632 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3679 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv356)) : 'freshtv358)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv365 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3688 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3692 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3702 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3706 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3711 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3718 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3722 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3727 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3732 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 159 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 3739 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv360)) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv363 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3749 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3753 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv364)) : 'freshtv366)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv379 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3762 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3766 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3770 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv375 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3780 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3784 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3788 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3793 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv373 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3800 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3804 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3808 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3813 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3818 "runtests/ocaml_lua/lua_parser.ml"
            ))), (_2 : 'tv_opt_o__i_name_k__p_)), _), _, (_4 : 'tv_opt_o_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 321 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                  ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 3825 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_functiondef) : 'tv_functiondef) = _v in
            let _v : 'tv_atom = 
# 279 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                     _1
                 )
# 3844 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv368)) : 'freshtv370)) : 'freshtv372) : 'freshtv374)) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv377 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3854 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3858 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3862 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv378)) : 'freshtv380)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_start__y_ = 
# 81 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                          _1
                      )
# 3877 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3898 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 69 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 3902 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3910 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3918 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3926 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3930 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv382)) : 'freshtv384)) : 'freshtv386) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv392)) : 'freshtv394)) : 'freshtv396) : 'freshtv398)) : 'freshtv400)
    | _ ->
        _menhir_fail ()) : 'freshtv402) : 'freshtv404)) : 'freshtv406)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 291 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 3950 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_opt_o_fieldsep_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_fieldsep_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv295 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3961 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3971 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3976 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3983 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3988 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3993 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 363 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                 mk_TableConstructor(_1, _2)
                             )
# 4000 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        (((match _menhir_s with
        | MenhirState0 | MenhirState5 | MenhirState186 | MenhirState7 | MenhirState177 | MenhirState174 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState12 | MenhirState23 | MenhirState85 | MenhirState163 | MenhirState86 | MenhirState159 | MenhirState92 | MenhirState145 | MenhirState98 | MenhirState138 | MenhirState136 | MenhirState130 | MenhirState128 | MenhirState105 | MenhirState116 | MenhirState112 | MenhirState110 | MenhirState106 | MenhirState103 | MenhirState96 | MenhirState93 | MenhirState28 | MenhirState75 | MenhirState69 | MenhirState45 | MenhirState40 | MenhirState36 | MenhirState29 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_atom = 
# 282 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableExpr(_1)
                 )
# 4021 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv280)) : 'freshtv282)
        | MenhirState32 | MenhirState79 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_args = 
# 303 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 4038 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv284)) : 'freshtv286)
        | _ ->
            _menhir_fail ()) : 'freshtv288) : 'freshtv290)) : 'freshtv292)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4050 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv294)) : 'freshtv296)

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4058 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4068 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 375 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4075 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv278)

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4082 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4092 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 378 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4099 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv276)

and _menhir_goto_opt_o_parlist_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_parlist_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv267 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4112 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4116 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4126 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4130 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4135 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.NESTED_STR _v ->
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv265 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4204 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4208 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv266)) : 'freshtv268)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv273 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4217 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4221 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4225 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4229 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv269 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4239 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4243 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4247 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4251 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4256 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv271 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4325 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4329 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4333 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4337 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv272)) : 'freshtv274)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_parlist -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parlist) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_parlist) : 'tv_parlist) = _v in
    let _v : 'tv_opt_o_parlist_p_ = 
# 315 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 4359 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv260)) : 'freshtv262)

and _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4372 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4382 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4387 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv232)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv233 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4436 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv234)) : 'freshtv236)
    | MenhirState18 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4452 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv239 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4463 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4468 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv237 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4475 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4480 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4484 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 324 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 4492 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv238)) : 'freshtv240)
            | Lua_lexer.NAME _v ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4504 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv242)) : 'freshtv244)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv245) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 327 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 4516 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv248)) : 'freshtv250)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4531 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4542 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv252)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 183 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                               none()
                           )
# 4592 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4602 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv256)) : 'freshtv258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prefixexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4624 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4635 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4640 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4663 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv212)) : 'freshtv214)
    | Lua_lexer.I__N__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4674 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv216)
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__Q__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4723 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv218)
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4764 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4775 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4780 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4787 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4792 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4796 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 252 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 4804 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv220)) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4814 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv224)) : 'freshtv226)
    | Lua_lexer.STR_LIT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_exponent = 
# 234 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                         _1
                     )
# 4829 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv228)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv230)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nempty_list_o_stat_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_stat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 93 "runtests/ocaml_lua/lua_parser.mly"
                                                               ( 
                                                       _1
                                                   )
# 4909 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv206)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv208)

and _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_stat_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    let _v : 'tv_list_o_stat_p_ = 
# 96 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                               _1
                           )
# 4932 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_stat_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_RETURN_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
        let (_v : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4950 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv192)
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_retstat_p_ = 
# 102 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 5000 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv194)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv196)) : 'freshtv198)) : 'freshtv200) : 'freshtv202)) : 'freshtv204)

and _menhir_reduce85 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5014 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5020 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 237 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 5027 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    let _v : 'tv_seplist_o_fieldsep_s_field_p_ = 
# 354 "runtests/ocaml_lua/lua_parser.mly"
                                                                                      ( 
                                              _1
                                          )
# 5046 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o_fieldsep_s_field_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv183 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5057 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState179 in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 360 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 5075 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv184)) : 'freshtv186) : 'freshtv188)) : 'freshtv190)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5086 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5098 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5103 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv178)
    | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__N__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.STR_LIT _ ->
        _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5152 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv180)

and _menhir_run174 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5160 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174

and _menhir_reduce80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_o_parlist_p_ = 
# 318 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 5209 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5216 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5226 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5236 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5240 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 336 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 5247 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv176)

and _menhir_goto_opt_o__i_name_k__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5258 "runtests/ocaml_lua/lua_parser.ml"
    )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5268 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5273 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv170)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5296 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv172)) : 'freshtv174)

and _menhir_reduce63 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5304 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5310 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 330 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 5317 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atom) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_atom) : 'tv_atom) = _v in
    let _v : 'tv_prefixexp = 
# 255 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          _1
                      )
# 5336 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv166)) : 'freshtv168)

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState92 | MenhirState145 | MenhirState98 | MenhirState138 | MenhirState105 | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_stat) : 'tv_stat) = _v in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 84 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                      [_1]
                                  )
# 5357 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv158)) : 'freshtv160)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_stat) : 'tv_stat) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 87 "runtests/ocaml_lua/lua_parser.mly"
                                                   ( 
                                      appendList(_1, _2)
                                  )
# 5375 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv162)) : 'freshtv164)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv64)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5399 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5408 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5412 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5416 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5425 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5434 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5438 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv74)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5447 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5455 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv80)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5468 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5472 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5476 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv82)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5485 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5489 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5498 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv86)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5506 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5515 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5528 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5537 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv97 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5546 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5550 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5554 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5558 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5567 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5571 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5575 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5584 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5593 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5597 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5606 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5615 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5619 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5628 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv111 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5637 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5641 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5645 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5649 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5653 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv112)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5662 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5666 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5670 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5674 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv114)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5683 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5692 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5701 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5705 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv120)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5714 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5718 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv122)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5727 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5741 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5750 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5759 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5773 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5782 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv139 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5791 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5795 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5799 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5808 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5812 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5821 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv144)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5830 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv146)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5839 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv148)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5848 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5852 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv150)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5861 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv152)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5870 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv154)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv156)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 90 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                       []
                                                   )
# 5886 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5893 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5903 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5907 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 270 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_String(_1)
                 )
# 5914 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv62)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5921 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5931 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5935 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 267 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_Num(_1)
                 )
# 5942 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv60)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5949 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5959 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5963 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 273 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_String(_1)
                 )
# 5970 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv58)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5977 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5987 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6024 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6034 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6038 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 276 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_Ellipse(_1)
                 )
# 6045 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv56)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6052 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__N__I_ _v ->
        _menhir_run174 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.NAME _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__H__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 348 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                                                      []
                                                                  )
# 6100 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6111 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.NESTED_STR _v ->
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
# 6148 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6193 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6230 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6240 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6244 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 138 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6251 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv52)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6258 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6270 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6275 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__G__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6286 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6290 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6295 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6302 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6306 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6311 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6316 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 147 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6323 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv42)) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6333 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6337 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv46)) : 'freshtv48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6348 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv50)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6356 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6401 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6411 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6415 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 264 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                     mk_Bool(_1, true)
                 )
# 6422 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6429 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6496 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6533 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6543 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6547 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 258 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_Nil(_1)
                 )
# 6554 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6561 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FUNCTION_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6573 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6579 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6590 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6594 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6599 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__O__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv27 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6610 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6614 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6618 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6623 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | Lua_lexer.I__P__I_ _ ->
                    _menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv28)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv29 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6646 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6650 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6654 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv30)) : 'freshtv32)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6665 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6669 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv34)) : 'freshtv36)
    | Lua_lexer.NAME _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6683 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6728 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6740 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6745 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6752 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6757 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6761 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6766 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 153 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 6773 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6783 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv26)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6791 "runtests/ocaml_lua/lua_parser.ml"
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
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6804 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let ((_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6812 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6816 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_opt_o__i_name_k__p_ = 
# 309 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                    some(_1)
                                )
# 6823 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv14)) : 'freshtv16)
    | Lua_lexer.I__O__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o__i_name_k__p_ = 
# 312 "runtests/ocaml_lua/lua_parser.mly"
                       ( 
                                    none()
                                )
# 6834 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6844 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6852 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6864 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState101 in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6870 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6881 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6885 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6890 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv8)
        | Lua_lexer.I_IN_I_ _ | Lua_lexer.I__S__I_ _ ->
            _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6939 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6943 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6955 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6965 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6969 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 261 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_Bool(_1, false)
                 )
# 6976 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6983 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7050 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7060 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7064 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 150 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 7071 "runtests/ocaml_lua/lua_parser.ml"
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
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 7090 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.NESTED_STR _v ->
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
