
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
  | MenhirState185
  | MenhirState184
  | MenhirState178
  | MenhirState176
  | MenhirState173
  | MenhirState162
  | MenhirState158
  | MenhirState144
  | MenhirState141
  | MenhirState137
  | MenhirState135
  | MenhirState129
  | MenhirState127
  | MenhirState115
  | MenhirState111
  | MenhirState109
  | MenhirState105
  | MenhirState104
  | MenhirState102
  | MenhirState100
  | MenhirState97
  | MenhirState95
  | MenhirState94
  | MenhirState92
  | MenhirState91
  | MenhirState89
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState78
  | MenhirState74
  | MenhirState68
  | MenhirState44
  | MenhirState39
  | MenhirState35
  | MenhirState31
  | MenhirState28
  | MenhirState27
  | MenhirState22
  | MenhirState17
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

let rec _menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o_fieldsep_s_field_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv771 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv769 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 344 "runtests/ocaml_lua/lua_parser.mly"
                                                                                             ( 
                                                                      _1
                                                                  )
# 103 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv770)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv772)

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> (
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
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_goto_field : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_field -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv761 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_field) : 'tv_field) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 338 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                     appendList(_1, _3)
                                                 )
# 172 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv762)) : 'freshtv764)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_field) : 'tv_field) = _v in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 335 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                                                     [_1]
                                                 )
# 189 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv766)) : 'freshtv768)
    | _ ->
        _menhir_fail ()

and _menhir_goto_range_tail : _menhir_env -> 'ttv_tail -> 'tv_range_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 201 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let (_v : 'tv_range_tail) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv757 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 208 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let ((_4 : 'tv_range_tail) : 'tv_range_tail) = _v in
    let (((_menhir_stack, _menhir_s, (_1 : 'tv_exp)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_range = 
# 182 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                      range(_1, _3, _4)
                  )
# 217 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv755) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_range) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv753 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 228 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 232 "runtests/ocaml_lua/lua_parser.ml"
    )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 236 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_DO_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv749 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 246 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 250 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 254 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 259 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv750)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv751 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 326 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 330 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 334 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv752)) : 'freshtv754)) : 'freshtv756) : 'freshtv758)) : 'freshtv760)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 278 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                    [_1]
                                                )
# 347 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 287 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                                     _1
                                                                 )
# 372 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv720)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv722)) : 'freshtv724)
    | MenhirState0 | MenhirState22 | MenhirState84 | MenhirState85 | MenhirState91 | MenhirState144 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState111 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv725 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 394 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv726)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv727 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv728)) : 'freshtv730)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv735 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 446 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv731 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 458 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_stat = 
# 137 "runtests/ocaml_lua/lua_parser.mly"
                                                                                        ( 
                     mk_Assignment(false, _1, some(_3))
                 )
# 466 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv732)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv733 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 476 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv734)) : 'freshtv736)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv741 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 485 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 489 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv737 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 499 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 503 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 508 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv738)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv739 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 577 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 581 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv740)) : 'freshtv742)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv747 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 590 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv743 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 602 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 176 "runtests/ocaml_lua/lua_parser.mly"
                                                              ( 
                               some(_2)
                           )
# 610 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv744)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv745 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 620 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv746)) : 'freshtv748)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> 'tv_binop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv717 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv718)

and _menhir_goto_binseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_AND_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv533) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 682 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531) = Obj.magic _menhir_stack in
        let ((_1 : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 690 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 694 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 377 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 701 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv532)) : 'freshtv534)
    | Lua_lexer.I_OR_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let (_v : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 710 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
        let ((_1 : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 718 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 722 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 374 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                      mkOperator(_1)
                  )
# 729 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv536)) : 'freshtv538)
    | Lua_lexer.I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 738 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
        let ((_1 : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 746 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 750 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 380 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 757 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv540)) : 'freshtv542)
    | Lua_lexer.I__I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
        let (_v : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 766 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
        let ((_1 : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 774 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 778 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 407 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 785 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv544)) : 'freshtv546)
    | Lua_lexer.I__I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
        let (_v : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 794 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
        let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 802 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 806 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 386 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 813 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv548)) : 'freshtv550)
    | Lua_lexer.I__J__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
        let (_v : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 822 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
        let ((_1 : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 830 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 834 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 395 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 841 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv552)) : 'freshtv554)
    | Lua_lexer.I__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        let (_v : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 850 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        let ((_1 : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 858 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 862 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 383 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 869 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv556)) : 'freshtv558)
    | Lua_lexer.I__K__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
        let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 878 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
        let ((_1 : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 886 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 890 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 389 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 897 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv560)) : 'freshtv562)
    | Lua_lexer.I__K__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        let (_v : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 906 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
        let ((_1 : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 914 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 918 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 410 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 925 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv564)) : 'freshtv566)
    | Lua_lexer.I__L__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 934 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let ((_1 : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 942 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 946 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 431 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 953 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv568)) : 'freshtv570)
    | Lua_lexer.I__M__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 962 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
        let ((_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 970 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 974 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 404 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 981 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv572)) : 'freshtv574)
    | Lua_lexer.I__Q__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 990 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let ((_1 : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 998 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1002 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 422 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1009 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv576)) : 'freshtv578)
    | Lua_lexer.I__R__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1018 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let ((_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1026 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1030 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 416 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1037 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv580)) : 'freshtv582)
    | Lua_lexer.I__T__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1046 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
        let ((_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1054 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1058 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 419 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1065 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv584)) : 'freshtv586)
    | Lua_lexer.I__U__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
        let (_v : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1074 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
        let ((_1 : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1082 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1086 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 398 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1093 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv588)) : 'freshtv590)
    | Lua_lexer.I__U__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv593) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1102 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
        let ((_1 : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1110 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1114 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 413 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1121 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv592)) : 'freshtv594)
    | Lua_lexer.I__V__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1130 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595) = Obj.magic _menhir_stack in
        let ((_1 : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1138 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1142 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 425 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1149 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv596)) : 'freshtv598)
    | Lua_lexer.I__V__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1158 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let ((_1 : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1166 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1170 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 428 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1177 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv600)) : 'freshtv602)
    | Lua_lexer.I__W__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605) = Obj.magic _menhir_stack in
        let (_v : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1186 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let ((_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1194 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1198 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 401 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1205 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv604)) : 'freshtv606)
    | Lua_lexer.I__W__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
        let (_v : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1214 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607) = Obj.magic _menhir_stack in
        let ((_1 : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1222 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1226 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 392 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1233 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv608)) : 'freshtv610)
    | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv711 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_binseq)) = _menhir_stack in
        let _v : 'tv_binexp = 
# 200 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                       mkBinOpSeq(_1, mk_Bin, mk_UnsolvedBin)
                   )
# 1245 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv709) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binexp) : 'tv_binexp) = _v in
        let _v : 'tv_exp = 
# 197 "runtests/ocaml_lua/lua_parser.mly"
             ( 
                    _1
                )
# 1264 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv703) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((match _menhir_s with
        | MenhirState44 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv613 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1277 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv611 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1283 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 281 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 1291 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv612)) : 'freshtv614)
        | MenhirState158 | MenhirState135 | MenhirState115 | MenhirState109 | MenhirState39 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            (_menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) : 'freshtv616)
        | MenhirState74 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv623 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1303 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv619 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1313 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1318 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv617 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1325 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1330 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 245 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 1338 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv618)) : 'freshtv620)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv621 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1348 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv622)) : 'freshtv624)
        | MenhirState27 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv629 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1357 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_DO_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv625 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1367 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1372 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
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
                | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv626)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv627 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1439 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv628)) : 'freshtv630)
        | MenhirState92 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv637 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1448 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv633 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1458 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1463 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_ELSEIF_I_ _v ->
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
                | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv631) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState94 in
                    let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 119 "runtests/ocaml_lua/lua_parser.mly"
                                            ( 
                                                         []
                                                     )
# 1480 "runtests/ocaml_lua/lua_parser.ml"
                     in
                    (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv632)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv634)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv635 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1494 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv636)) : 'freshtv638)
        | MenhirState95 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv643 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1503 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv639 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1513 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1518 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv640)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv641 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1585 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv642)) : 'freshtv644)
        | MenhirState0 | MenhirState22 | MenhirState84 | MenhirState85 | MenhirState91 | MenhirState144 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 | MenhirState111 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv649 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_stat = 
# 140 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                     mk_ExprStmt(_1)
                 )
# 1604 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv646)
            | Lua_lexer.I__J__I_ _ | Lua_lexer.I__S__I_ _ ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv648)) : 'freshtv650)
        | MenhirState102 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv651 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1628 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv652)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv654)) : 'freshtv656)
        | MenhirState127 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1678 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1689 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv658)
            | Lua_lexer.I_DO_I_ _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
                let _v : 'tv_range_tail = 
# 188 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                           none()
                       )
# 1735 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv660)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv661 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1745 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv662)) : 'freshtv664)
        | MenhirState129 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv667 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1754 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv665 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1760 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_range_tail = 
# 185 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 1768 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv666)) : 'freshtv668)
        | MenhirState162 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv671 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1776 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1780 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv669 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1786 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1790 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1795 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 158 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 1802 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv670)) : 'freshtv672)
        | MenhirState10 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv679 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1810 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv675 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1820 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1825 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv673 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1832 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1837 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1842 "runtests/ocaml_lua/lua_parser.ml"
                ))), _, (_2 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 236 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 1849 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv674)) : 'freshtv676)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv677 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1859 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv678)) : 'freshtv680)
        | MenhirState8 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1868 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1872 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv681 * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1878 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1882 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1887 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 362 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 1894 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv682)) : 'freshtv684)
        | MenhirState173 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv693 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1902 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv689 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1912 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1917 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__J__I_ _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv685 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1928 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1932 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1937 "runtests/ocaml_lua/lua_parser.ml"
                    )) = _v in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    ((match _tok with
                    | Lua_lexer.I_FALSE_I_ _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I_FUNCTION_I_ _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I_NIL_I_ _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I_NOT_I_ _v ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I_TRUE_I_ _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__J__I__I _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__O__I_ _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__T__I_ _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__T__I__I _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__U__U__U__I_ _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.I__W__I_ _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.NAME _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.NUMERAL _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | Lua_lexer.STR_LIT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv686)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv687 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1982 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1986 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv688)) : 'freshtv690)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv691 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1997 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv692)) : 'freshtv694)
        | MenhirState176 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv697 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2006 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2010 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2014 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv695 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2020 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2024 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2028 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2033 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 359 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 2040 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv696)) : 'freshtv698)
        | MenhirState6 | MenhirState185 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv699 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 365 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 2054 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv700)) : 'freshtv702)
        | _ ->
            _menhir_fail ()) : 'freshtv704) : 'freshtv706)) : 'freshtv708)) : 'freshtv710) : 'freshtv712)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv714)) : 'freshtv716)

and _menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv529) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv527) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    let _v : 'tv_list_o_elseif_p_ = 
# 125 "runtests/ocaml_lua/lua_parser.mly"
                                                            ( 
                                 _1
                             )
# 2082 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv525) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_elseif_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv523 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2093 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2097 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSE_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2108 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv518)
    | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_else_p_ = 
# 131 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                              none()
                          )
# 2176 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv520)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv521 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2186 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2190 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv522)) : 'freshtv524)) : 'freshtv526) : 'freshtv528)) : 'freshtv530)

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2198 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95

and _menhir_goto_opt_o__i__h__i__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i__h__i__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv515 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2244 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv513 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2251 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_o__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2257 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 110 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 2264 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511) = _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
    let ((_1 : 'tv_retstat) : 'tv_retstat) = _v in
    let _v : 'tv_opt_o_retstat_p_ = 
# 95 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 2280 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv508)) : 'freshtv510)) : 'freshtv512) : 'freshtv514)) : 'freshtv516)

and _menhir_goto_unaryexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_unaryexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unaryexp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_unaryexp) : 'tv_unaryexp) = _v in
    let _v : 'tv_binoperand = 
# 209 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                           mkOperand(_1)
                       )
# 2299 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv501) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_binoperand) = _v in
    (((match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_binseq)), (_2 : 'tv_binop)) = _menhir_stack in
        let _v : 'tv_binseq = 
# 203 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 2321 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv494)) : 'freshtv496)
    | MenhirState0 | MenhirState6 | MenhirState185 | MenhirState173 | MenhirState176 | MenhirState8 | MenhirState10 | MenhirState22 | MenhirState27 | MenhirState84 | MenhirState85 | MenhirState162 | MenhirState158 | MenhirState91 | MenhirState92 | MenhirState144 | MenhirState95 | MenhirState97 | MenhirState135 | MenhirState137 | MenhirState102 | MenhirState127 | MenhirState129 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState74 | MenhirState39 | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let _v : 'tv_binseq = 
# 206 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 2338 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()) : 'freshtv502) : 'freshtv504)) : 'freshtv506)

and _menhir_goto_opt_o_else_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_else_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv491 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2351 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2355 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv487 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2365 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2369 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2374 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv485 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2381 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2385 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2390 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2395 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_list_o_elseif_p_)), (_5 : 'tv_opt_o_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 161 "runtests/ocaml_lua/lua_parser.mly"
                                                                     ( 
                     mk_IfStmt(_1, _2, _4, _5)
                 )
# 2402 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv486)) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv489 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2412 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2416 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv490)) : 'freshtv492)

and _menhir_goto_nempty_list_o_elseif_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_elseif_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSEIF_I_ _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 122 "runtests/ocaml_lua/lua_parser.mly"
                                                                   ( 
                                                         _1
                                                     )
# 2440 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv482)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv484)

and _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    let _v : 'tv_seplist_o__i__s__i__s_exp_p_ = 
# 290 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 2463 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv475) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o__i__s__i__s_exp_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2476 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2486 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2491 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv457 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2498 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2503 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2508 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 293 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 2515 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv458)) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2525 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv462)) : 'freshtv464)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2534 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__H__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
            let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2545 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
            let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2553 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2557 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 104 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 2564 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv466)) : 'freshtv468)
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 107 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                                   none()
                               )
# 2575 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2585 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv472)) : 'freshtv474)
    | _ ->
        _menhir_fail ()) : 'freshtv476) : 'freshtv478)) : 'freshtv480)

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2600 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2604 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2612 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2616 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2623 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 242 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 2630 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv450)) : 'freshtv452)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_args) : 'tv_args) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 239 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 2648 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv454)) : 'freshtv456)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fieldsep -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_fieldsep)) = _menhir_stack in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 350 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 2669 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv444)) : 'freshtv446)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__N__I_ _v ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.NAME _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv448)
    | _ ->
        _menhir_fail ()

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv441 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2721 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv439 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2728 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 173 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 2737 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv440)) : 'freshtv442)

and _menhir_run134 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2744 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2748 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv437 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2756 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2761 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2765 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 326 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 2773 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv438)

and _menhir_goto_varargs : _menhir_env -> 'ttv_tail -> 'tv_varargs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_varargs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_varargs) : 'tv_varargs) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_parlist = 
# 332 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 2791 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv434)) : 'freshtv436)

and _menhir_run133 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2798 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2814 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv432)

and _menhir_goto_exponent : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exponent -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2827 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2835 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 227 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                         mk_Exponent(_1, _3)
                     )
# 2845 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv408)) : 'freshtv410)
    | MenhirState0 | MenhirState6 | MenhirState185 | MenhirState176 | MenhirState173 | MenhirState8 | MenhirState10 | MenhirState22 | MenhirState84 | MenhirState162 | MenhirState85 | MenhirState158 | MenhirState91 | MenhirState144 | MenhirState97 | MenhirState135 | MenhirState137 | MenhirState129 | MenhirState127 | MenhirState102 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState95 | MenhirState92 | MenhirState27 | MenhirState74 | MenhirState39 | MenhirState68 | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_exponent) : 'tv_exponent) = _v in
        let _v : 'tv_unaryexp = 
# 224 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 2862 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv412)) : 'freshtv414)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2870 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2878 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2885 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 221 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Not(_1, _2)
                     )
# 2892 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv416)) : 'freshtv418)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2900 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2908 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2915 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 212 "runtests/ocaml_lua/lua_parser.mly"
                               ( 
                         mk_Len(_1, _2)
                     )
# 2922 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv420)) : 'freshtv422)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2930 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2938 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2945 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 215 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Neg(_1, _2)
                     )
# 2952 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv424)) : 'freshtv426)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2960 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2968 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2975 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 218 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Inv(_1, _2)
                     )
# 2982 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv428)) : 'freshtv430)
    | _ ->
        _menhir_fail ()

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2991 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3001 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3005 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 299 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 3012 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv406)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3019 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | Lua_lexer.I__P__I_ _ ->
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_goto_opt_o_retstat_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_retstat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o_retstat_p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_opt_o_retstat_p_) : 'tv_opt_o_retstat_p_) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_list_o_stat_p_)) = _menhir_stack in
    let _v : 'tv_block = 
# 101 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                      block(_1, _2)
                  )
# 3075 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_block) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3088 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv297 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3098 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3103 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3110 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3115 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3120 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 152 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 3127 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3137 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv300)) : 'freshtv302)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv309 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3146 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3150 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3154 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3158 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv305 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3168 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3172 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3176 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3180 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3185 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv303 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3192 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3196 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3200 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3204 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3209 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3214 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3218 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 164 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 3225 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv304)) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3235 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3239 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3243 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3247 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv308)) : 'freshtv310)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv317 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3256 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3260 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3264 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv313 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3274 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3278 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3282 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3287 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv311 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3294 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3298 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3302 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3307 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3312 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 167 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 3319 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv312)) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv315 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3329 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3333 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3337 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv316)) : 'freshtv318)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv331 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3346 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3350 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv329 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3356 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3360 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3365 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 191 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 3372 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_elseif) = _v in
        (((match _menhir_s with
        | MenhirState141 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_elseif) : 'tv_elseif) = _v in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 116 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                        appendList(_1, _2)
                                    )
# 3394 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv320)) : 'freshtv322)
        | MenhirState94 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_elseif) : 'tv_elseif) = _v in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 113 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                                        [_1]
                                    )
# 3411 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv324)) : 'freshtv326)
        | _ ->
            _menhir_fail ()) : 'freshtv328) : 'freshtv330)) : 'freshtv332)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3421 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3427 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3432 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 194 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 3439 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337) = _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
        let ((_1 : 'tv_else__x_) : 'tv_else__x_) = _v in
        let _v : 'tv_opt_o_else_p_ = 
# 128 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                              some(_1)
                          )
# 3455 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv334)) : 'freshtv336)) : 'freshtv338) : 'freshtv340)) : 'freshtv342)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv349 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3463 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3467 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3471 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3475 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3479 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv345 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3489 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3493 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3497 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3501 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3505 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3510 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv343 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3517 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3521 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
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
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3538 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3543 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), (_3 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3547 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_5 : 'tv_opt_o_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 170 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 3554 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv344)) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv347 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3564 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3568 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3572 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3576 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3580 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv348)) : 'freshtv350)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3589 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3599 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3604 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3649 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv354)) : 'freshtv356)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv363 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3658 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3662 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3672 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3676 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3681 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv357 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3688 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3692 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3697 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3702 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 155 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 3709 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3719 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3723 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv362)) : 'freshtv364)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv377 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3732 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3736 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3740 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv373 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3750 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3754 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3758 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3763 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv371 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3770 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3774 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3778 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3783 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3788 "runtests/ocaml_lua/lua_parser.ml"
            ))), (_2 : 'tv_opt_o__i_name_k__p_)), _), _, (_4 : 'tv_opt_o_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 314 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                  ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 3795 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_functiondef) : 'tv_functiondef) = _v in
            let _v : 'tv_atom = 
# 272 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                     _1
                 )
# 3814 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv366)) : 'freshtv368)) : 'freshtv370) : 'freshtv372)) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv375 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3824 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3828 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3832 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv376)) : 'freshtv378)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_start__y_ = 
# 77 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                          _1
                      )
# 3847 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3868 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 68 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 3872 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3880 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3888 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3896 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 65 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 3900 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv380)) : 'freshtv382)) : 'freshtv384) : 'freshtv386)) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv390)) : 'freshtv392)) : 'freshtv394) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()) : 'freshtv400) : 'freshtv402)) : 'freshtv404)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 284 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 3920 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_opt_o_fieldsep_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_fieldsep_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv293 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3931 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3941 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3946 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3953 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3958 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3963 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 356 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                 mk_TableConstructor(_1, _2)
                             )
# 3970 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        (((match _menhir_s with
        | MenhirState0 | MenhirState4 | MenhirState185 | MenhirState6 | MenhirState176 | MenhirState173 | MenhirState8 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState22 | MenhirState84 | MenhirState162 | MenhirState85 | MenhirState158 | MenhirState91 | MenhirState144 | MenhirState97 | MenhirState137 | MenhirState135 | MenhirState129 | MenhirState127 | MenhirState104 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState105 | MenhirState102 | MenhirState95 | MenhirState92 | MenhirState27 | MenhirState74 | MenhirState68 | MenhirState44 | MenhirState39 | MenhirState35 | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_atom = 
# 275 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableExpr(_1)
                 )
# 3991 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv278)) : 'freshtv280)
        | MenhirState31 | MenhirState78 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_args = 
# 296 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 4008 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv282)) : 'freshtv284)
        | _ ->
            _menhir_fail ()) : 'freshtv286) : 'freshtv288)) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4020 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv292)) : 'freshtv294)

and _menhir_run179 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4028 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4038 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 368 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4045 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv276)

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4052 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4062 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 371 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4069 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv274)

and _menhir_goto_opt_o_parlist_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_parlist_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv265 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4082 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4086 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4096 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4100 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4105 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4172 "runtests/ocaml_lua/lua_parser.ml"
            )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4176 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv264)) : 'freshtv266)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv271 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4185 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4189 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4193 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4197 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv267 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4207 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4211 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4215 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4219 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4224 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv269 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4291 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4295 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4299 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4303 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv270)) : 'freshtv272)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_parlist -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parlist) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_parlist) : 'tv_parlist) = _v in
    let _v : 'tv_opt_o_parlist_p_ = 
# 308 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 4325 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv258)) : 'freshtv260)

and _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4338 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4348 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4353 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv230)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4400 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv232)) : 'freshtv234)
    | MenhirState17 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4416 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv237 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4427 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4432 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv235 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4439 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4444 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4448 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 317 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 4456 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv236)) : 'freshtv238)
            | Lua_lexer.NAME _v ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4468 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv240)) : 'freshtv242)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 320 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 4480 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv246)) : 'freshtv248)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4495 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4506 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158) : 'freshtv250)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 179 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                               none()
                           )
# 4554 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4564 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv254)) : 'freshtv256)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prefixexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState31 in
        let (_v : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4586 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4597 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4602 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4625 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv210)) : 'freshtv212)
    | Lua_lexer.I__N__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState31 in
        let (_v : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4636 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv214)
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | Lua_lexer.I__Q__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState31 in
        let (_v : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4683 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv216)
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | Lua_lexer.I__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState31 in
        let (_v : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4722 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4733 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4738 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4745 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4750 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4754 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 248 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 4762 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv218)) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4772 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv222)) : 'freshtv224)
    | Lua_lexer.STR_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NUMERAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_exponent = 
# 230 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                         _1
                     )
# 4787 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv226)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv228)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nempty_list_o_stat_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_stat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 89 "runtests/ocaml_lua/lua_parser.mly"
                                                               ( 
                                                       _1
                                                   )
# 4865 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv206)

and _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_stat_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    let _v : 'tv_list_o_stat_p_ = 
# 92 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                               _1
                           )
# 4888 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_stat_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_RETURN_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
        let (_v : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4906 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv190)
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_retstat_p_ = 
# 98 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4954 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv194)) : 'freshtv196)) : 'freshtv198) : 'freshtv200)) : 'freshtv202)

and _menhir_reduce84 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4968 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4974 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 233 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 4981 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    let _v : 'tv_seplist_o_fieldsep_s_field_p_ = 
# 347 "runtests/ocaml_lua/lua_parser.mly"
                                                                                      ( 
                                              _1
                                          )
# 5000 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o_fieldsep_s_field_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv181 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5011 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState178 in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 353 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 5029 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv180)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv182)) : 'freshtv184) : 'freshtv186)) : 'freshtv188)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5040 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5052 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5057 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv176)
    | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__N__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.STR_LIT _ ->
        _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5104 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv178)

and _menhir_run173 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5112 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173

and _menhir_reduce79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_o_parlist_p_ = 
# 311 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 5159 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5166 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5176 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5186 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5190 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 329 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 5197 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv174)

and _menhir_goto_opt_o__i_name_k__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv171 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5208 "runtests/ocaml_lua/lua_parser.ml"
    )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5218 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5223 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | Lua_lexer.NAME _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | Lua_lexer.I__P__I_ _ ->
            _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5246 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv170)) : 'freshtv172)

and _menhir_reduce62 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5254 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5260 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 323 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 5267 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atom) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_atom) : 'tv_atom) = _v in
    let _v : 'tv_prefixexp = 
# 251 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          _1
                      )
# 5286 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv164)) : 'freshtv166)

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState22 | MenhirState84 | MenhirState85 | MenhirState91 | MenhirState144 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_stat) : 'tv_stat) = _v in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 80 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                      [_1]
                                  )
# 5307 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv156)) : 'freshtv158)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_stat) : 'tv_stat) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 83 "runtests/ocaml_lua/lua_parser.mly"
                                                   ( 
                                      appendList(_1, _2)
                                  )
# 5325 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv160)) : 'freshtv162)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv62)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv64)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5349 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5358 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5362 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5366 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5375 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5384 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5388 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5397 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5405 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv78)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv79 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5418 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5422 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5426 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv80)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5435 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5439 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv82)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5448 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv84)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5456 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv86)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5465 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv90)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5478 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5487 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv95 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5496 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5500 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5504 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5508 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5517 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5521 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5525 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5534 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5543 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5547 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5556 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5565 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5569 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5578 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv109 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5587 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5591 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5595 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5599 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5603 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv111 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5612 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5616 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5620 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5624 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv112)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5633 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv114)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5642 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5651 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5655 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5664 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5668 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv120)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5677 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv122)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5691 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5700 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5709 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5723 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5732 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv137 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5741 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5745 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5749 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5758 "runtests/ocaml_lua/lua_parser.ml"
        )) * 'tv_opt_o__i_name_k__p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5762 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5771 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5780 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv144)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5789 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv146)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5798 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5802 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv148)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5811 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv150)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5820 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv152)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv154)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 86 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                       []
                                                   )
# 5836 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5843 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5853 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5857 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 266 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_String(_1)
                 )
# 5864 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv60)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5871 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5881 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5885 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 263 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_Num(_1)
                 )
# 5892 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv58)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5899 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5909 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
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
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5944 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5954 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5958 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 269 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_Ellipse(_1)
                 )
# 5965 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv56)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5972 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Lua_lexer.I__N__I_ _v ->
        _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
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
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 341 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                                                      []
                                                                  )
# 6018 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6029 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
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
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6064 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
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
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6107 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
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

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6142 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6152 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6156 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 134 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6163 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv52)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6170 "runtests/ocaml_lua/lua_parser.ml"
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
# 6182 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6187 "runtests/ocaml_lua/lua_parser.ml"
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
# 6198 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6202 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6207 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6214 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6218 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6223 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6228 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 143 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6235 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv42)) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6245 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6249 "runtests/ocaml_lua/lua_parser.ml"
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
# 6260 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv50)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6268 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6311 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6321 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6325 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 260 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                     mk_Bool(_1, true)
                 )
# 6332 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6339 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6404 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
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

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6439 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6449 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6453 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 254 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_Nil(_1)
                 )
# 6460 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6467 "runtests/ocaml_lua/lua_parser.ml"
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
# 6479 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState86 in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6485 "runtests/ocaml_lua/lua_parser.ml"
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
# 6496 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6500 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6505 "runtests/ocaml_lua/lua_parser.ml"
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
# 6516 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6520 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6524 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6529 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | Lua_lexer.I__P__I_ _ ->
                    _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv28)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv29 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6552 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6556 "runtests/ocaml_lua/lua_parser.ml"
                )) * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6560 "runtests/ocaml_lua/lua_parser.ml"
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
# 6571 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6575 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv34)) : 'freshtv36)
    | Lua_lexer.NAME _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6589 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6632 "runtests/ocaml_lua/lua_parser.ml"
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
# 6644 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6649 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6656 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6661 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6665 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6670 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 149 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 6677 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6687 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv26)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6695 "runtests/ocaml_lua/lua_parser.ml"
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
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6708 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6716 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6720 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_opt_o__i_name_k__p_ = 
# 302 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                    some(_1)
                                )
# 6727 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv14)) : 'freshtv16)
    | Lua_lexer.I__O__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o__i_name_k__p_ = 
# 305 "runtests/ocaml_lua/lua_parser.mly"
                       ( 
                                    none()
                                )
# 6738 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o__i_name_k__p_ _menhir_env _menhir_stack _v : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6748 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6756 "runtests/ocaml_lua/lua_parser.ml"
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
# 6768 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState100 in
        let (_v : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6774 "runtests/ocaml_lua/lua_parser.ml"
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
# 6785 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6789 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6794 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv8)
        | Lua_lexer.I_IN_I_ _ | Lua_lexer.I__S__I_ _ ->
            _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6841 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6845 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6857 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6867 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6871 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 257 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_Bool(_1, false)
                 )
# 6878 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6885 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.NAME _v ->
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6950 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6960 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6964 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 146 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 6971 "runtests/ocaml_lua/lua_parser.ml"
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
# 6990 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
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
