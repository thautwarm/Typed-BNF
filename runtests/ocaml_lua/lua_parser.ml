
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
  | MenhirState192
  | MenhirState191
  | MenhirState185
  | MenhirState183
  | MenhirState180
  | MenhirState168
  | MenhirState164
  | MenhirState148
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState140
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
  | MenhirState88
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
  | MenhirState15
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

# 81 "runtests/ocaml_lua/lua_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o_fieldsep_s_field_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv793 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv791 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 355 "runtests/ocaml_lua/lua_parser.mly"
                                                                                             ( 
                                                                      _1
                                                                  )
# 106 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv792)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv794)

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 117 "runtests/ocaml_lua/lua_parser.ml"
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
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv785 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv783 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_field) : 'tv_field) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 349 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                     appendList(_1, _3)
                                                 )
# 177 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv784)) : 'freshtv786)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv789) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv787) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_field) : 'tv_field) = _v in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 346 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                                                     [_1]
                                                 )
# 194 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv788)) : 'freshtv790)
    | _ ->
        _menhir_fail ()

and _menhir_goto_range_tail : _menhir_env -> 'ttv_tail -> 'tv_range_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 206 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let (_v : 'tv_range_tail) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv779 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 213 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let ((_4 : 'tv_range_tail) : 'tv_range_tail) = _v in
    let (((_menhir_stack, _menhir_s, (_1 : 'tv_exp)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_range = 
# 190 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                      range(_1, _3, _4)
                  )
# 222 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv777) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_range) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv775 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 233 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 237 "runtests/ocaml_lua/lua_parser.ml"
    )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 241 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_DO_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv771 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 251 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 255 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 259 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 264 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | Lua_lexer.NESTED_STR _v ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv772)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv773 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 333 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 337 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 341 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv774)) : 'freshtv776)) : 'freshtv778) : 'freshtv780)) : 'freshtv782)

and _menhir_reduce68 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 289 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                    [_1]
                                                )
# 354 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv745 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv741 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 298 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                                     _1
                                                                 )
# 379 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv742)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv743 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv744)) : 'freshtv746)
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState111 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv747 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 401 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv748)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv750)) : 'freshtv752)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv757 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 455 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv753 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 467 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_stat = 
# 145 "runtests/ocaml_lua/lua_parser.mly"
                                                                                        ( 
                     mk_Assignment(false, _1, some(_3))
                 )
# 475 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv754)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv755 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 485 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv756)) : 'freshtv758)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv763 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 494 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 498 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv759 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 508 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 512 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 517 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | Lua_lexer.NESTED_STR _v ->
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv760)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv761 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 588 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 592 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv762)) : 'freshtv764)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv769 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 601 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv765 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 613 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 184 "runtests/ocaml_lua/lua_parser.mly"
                                                              ( 
                               some(_2)
                           )
# 621 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv766)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv767 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 631 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv768)) : 'freshtv770)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> 'tv_binop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv739 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv740)

and _menhir_goto_binseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_AND_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 695 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        let ((_1 : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 703 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 707 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 397 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 714 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv556)) : 'freshtv558)
    | Lua_lexer.I_OR_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
        let (_v : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 723 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
        let ((_1 : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 731 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 735 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 394 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                      mkOperator(_1)
                  )
# 742 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv560)) : 'freshtv562)
    | Lua_lexer.I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 751 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
        let ((_1 : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 759 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 763 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 400 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 770 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv564)) : 'freshtv566)
    | Lua_lexer.I__I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
        let (_v : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 779 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let ((_1 : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 787 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 791 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 427 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 798 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv568)) : 'freshtv570)
    | Lua_lexer.I__I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let (_v : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 807 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
        let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 815 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 819 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 406 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 826 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv572)) : 'freshtv574)
    | Lua_lexer.I__J__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let (_v : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 835 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let ((_1 : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 843 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 847 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 415 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 854 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv576)) : 'freshtv578)
    | Lua_lexer.I__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
        let (_v : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 863 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let ((_1 : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 871 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 875 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 403 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 882 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv580)) : 'freshtv582)
    | Lua_lexer.I__K__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
        let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 891 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
        let ((_1 : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 899 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 903 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 409 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 910 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv584)) : 'freshtv586)
    | Lua_lexer.I__K__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
        let (_v : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 919 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
        let ((_1 : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 927 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 931 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 430 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 938 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv588)) : 'freshtv590)
    | Lua_lexer.I__L__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv593) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 947 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
        let ((_1 : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 955 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 959 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 451 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 966 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv592)) : 'freshtv594)
    | Lua_lexer.I__M__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 975 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595) = Obj.magic _menhir_stack in
        let ((_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 983 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 987 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 424 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 994 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv596)) : 'freshtv598)
    | Lua_lexer.I__Q__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1003 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let ((_1 : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1011 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1015 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 442 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1022 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv600)) : 'freshtv602)
    | Lua_lexer.I__R__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1031 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let ((_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1039 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1043 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 436 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1050 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv604)) : 'freshtv606)
    | Lua_lexer.I__T__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1059 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607) = Obj.magic _menhir_stack in
        let ((_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1067 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1071 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 439 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1078 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv608)) : 'freshtv610)
    | Lua_lexer.I__U__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613) = Obj.magic _menhir_stack in
        let (_v : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1087 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv611) = Obj.magic _menhir_stack in
        let ((_1 : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1095 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1099 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 418 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1106 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv612)) : 'freshtv614)
    | Lua_lexer.I__U__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1115 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
        let ((_1 : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1123 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1127 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 433 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1134 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv616)) : 'freshtv618)
    | Lua_lexer.I__V__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv621) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1143 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619) = Obj.magic _menhir_stack in
        let ((_1 : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1151 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1155 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 445 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1162 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv620)) : 'freshtv622)
    | Lua_lexer.I__V__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv625) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1171 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv623) = Obj.magic _menhir_stack in
        let ((_1 : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1179 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1183 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 448 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1190 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv624)) : 'freshtv626)
    | Lua_lexer.I__W__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv629) = Obj.magic _menhir_stack in
        let (_v : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1199 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv627) = Obj.magic _menhir_stack in
        let ((_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1207 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1211 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 421 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1218 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv628)) : 'freshtv630)
    | Lua_lexer.I__W__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
        let (_v : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1227 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631) = Obj.magic _menhir_stack in
        let ((_1 : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1235 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1239 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 412 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1246 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv632)) : 'freshtv634)
    | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_binseq)) = _menhir_stack in
        let _v : 'tv_binexp = 
# 208 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                       mkBinOpSeq(_1, mk_Bin, mk_UnsolvedBin)
                   )
# 1258 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binexp) : 'tv_binexp) = _v in
        let _v : 'tv_exp = 
# 205 "runtests/ocaml_lua/lua_parser.mly"
             ( 
                    _1
                )
# 1277 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((match _menhir_s with
        | MenhirState45 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1290 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1296 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 292 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 1304 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv636)) : 'freshtv638)
        | MenhirState164 | MenhirState135 | MenhirState115 | MenhirState109 | MenhirState40 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            (_menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) : 'freshtv640)
        | MenhirState75 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv647 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1316 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1326 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1331 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv641 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1338 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1343 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 253 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 1351 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv642)) : 'freshtv644)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1361 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv646)) : 'freshtv648)
        | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv653 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1370 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_DO_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv649 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1380 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1385 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv650)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv651 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1454 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv652)) : 'freshtv654)
        | MenhirState95 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv659 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1463 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv655 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1473 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1478 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | Lua_lexer.NESTED_STR _v ->
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv656)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv657 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1547 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv658)) : 'freshtv660)
        | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 | MenhirState111 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_stat = 
# 148 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                     mk_ExprStmt(_1)
                 )
# 1566 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv662)
            | Lua_lexer.I__J__I_ _ | Lua_lexer.I__S__I_ _ ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv664)) : 'freshtv666)
        | MenhirState102 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1590 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv668)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv670)) : 'freshtv672)
        | MenhirState127 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1642 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv673) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1653 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv674)
            | Lua_lexer.I_DO_I_ _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv675) = Obj.magic _menhir_stack in
                let _v : 'tv_range_tail = 
# 196 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                           none()
                       )
# 1701 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv676)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv677 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1711 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv678)) : 'freshtv680)
        | MenhirState129 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv683 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1720 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv681 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1726 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_range_tail = 
# 193 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 1734 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv682)) : 'freshtv684)
        | MenhirState141 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv689 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1742 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv685 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1752 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1757 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I_BREAK_I_ _v ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_DO_I_ _v ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_FALSE_I_ _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_FOR_I_ _v ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_FUNCTION_I_ _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_GOTO_I_ _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_IF_I_ _v ->
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_LOCAL_I_ _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_NIL_I_ _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_NOT_I_ _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_REPEAT_I_ _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_TRUE_I_ _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_WHILE_I_ _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__G__G__I_ _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__H__I_ _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__J__I__I _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__O__I_ _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__T__I_ _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__T__I__I _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__U__U__U__I_ _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I__W__I_ _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.NAME _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.NESTED_STR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.NUMERAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.STR_LIT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
                | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState143
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv686)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv687 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1826 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv688)) : 'freshtv690)
        | MenhirState168 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv693 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1835 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1839 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv691 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1845 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1849 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1854 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 166 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 1861 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv692)) : 'freshtv694)
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv701 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1869 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv697 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1879 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1884 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv695 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1891 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1896 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1901 "runtests/ocaml_lua/lua_parser.ml"
                ))), _, (_2 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 244 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 1908 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv696)) : 'freshtv698)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv699 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1918 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv700)) : 'freshtv702)
        | MenhirState9 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv705 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1927 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1931 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv703 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1937 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1941 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1946 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 382 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 1953 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv704)) : 'freshtv706)
        | MenhirState180 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv715 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1961 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv711 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1971 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1976 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__J__I_ _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv707 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1987 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1991 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1996 "runtests/ocaml_lua/lua_parser.ml"
                    )) = _v in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    ((match _tok with
                    | Lua_lexer.I_FALSE_I_ _v ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I_FUNCTION_I_ _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I_NIL_I_ _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I_NOT_I_ _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I_TRUE_I_ _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__J__I__I _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__O__I_ _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__T__I_ _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__T__I__I _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__U__U__U__I_ _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.I__W__I_ _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.NAME _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.NESTED_STR _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.NUMERAL _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | Lua_lexer.STR_LIT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv708)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv709 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2043 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2047 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv710)) : 'freshtv712)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv713 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2058 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv714)) : 'freshtv716)
        | MenhirState183 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv719 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2067 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2071 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2075 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv717 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2081 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2085 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2089 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2094 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 379 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 2101 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv718)) : 'freshtv720)
        | MenhirState7 | MenhirState192 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 385 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 2115 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv722)) : 'freshtv724)
        | _ ->
            _menhir_fail ()) : 'freshtv726) : 'freshtv728)) : 'freshtv730)) : 'freshtv732) : 'freshtv734)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv736)) : 'freshtv738)

and _menhir_goto_opt_o__i__h__i__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i__h__i__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv553 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2134 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv551 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2141 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_o__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2147 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 118 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 2154 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv549) = _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
    let ((_1 : 'tv_retstat) : 'tv_retstat) = _v in
    let _v : 'tv_opt_o_retstat_p_ = 
# 103 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 2170 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv546)) : 'freshtv548)) : 'freshtv550) : 'freshtv552)) : 'freshtv554)

and _menhir_goto_unaryexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_unaryexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unaryexp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_unaryexp) : 'tv_unaryexp) = _v in
    let _v : 'tv_binoperand = 
# 217 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                           mkOperand(_1)
                       )
# 2189 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv539) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_binoperand) = _v in
    (((match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_binseq)), (_2 : 'tv_binop)) = _menhir_stack in
        let _v : 'tv_binseq = 
# 211 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 2211 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv532)) : 'freshtv534)
    | MenhirState0 | MenhirState7 | MenhirState192 | MenhirState180 | MenhirState183 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState28 | MenhirState85 | MenhirState86 | MenhirState168 | MenhirState164 | MenhirState94 | MenhirState95 | MenhirState97 | MenhirState148 | MenhirState141 | MenhirState143 | MenhirState135 | MenhirState137 | MenhirState102 | MenhirState127 | MenhirState129 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState75 | MenhirState40 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let _v : 'tv_binseq = 
# 214 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 2228 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv536)) : 'freshtv538)
    | _ ->
        _menhir_fail ()) : 'freshtv540) : 'freshtv542)) : 'freshtv544)

and _menhir_goto_opt_o_else_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_else_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv529 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2241 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2245 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv525 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2255 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2259 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2264 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv523 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2271 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2275 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2280 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2285 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)), _, (_5 : 'tv_list_o_elseif_p_)), (_6 : 'tv_opt_o_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 169 "runtests/ocaml_lua/lua_parser.mly"
                                                                           ( 
                     mk_IfStmt(_1, _2, _4, _5, _6)
                 )
# 2292 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv524)) : 'freshtv526)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv527 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2302 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2306 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv528)) : 'freshtv530)

and _menhir_goto_nempty_list_o_elseif_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_elseif_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSEIF_I_ _v ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 130 "runtests/ocaml_lua/lua_parser.mly"
                                                                   ( 
                                                         _1
                                                     )
# 2330 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv520)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv522)

and _menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv517) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv515) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    let _v : 'tv_list_o_elseif_p_ = 
# 133 "runtests/ocaml_lua/lua_parser.mly"
                                                            ( 
                                 _1
                             )
# 2353 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_elseif_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv511 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2364 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2368 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSE_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2379 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_BREAK_I_ _v ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_DO_I_ _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_FOR_I_ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_GOTO_I_ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_IF_I_ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_LOCAL_I_ _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_REPEAT_I_ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_WHILE_I_ _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__G__G__I_ _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__H__I_ _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv506)
    | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_else_p_ = 
# 139 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                              none()
                          )
# 2449 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv508)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv509 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2459 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2463 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv510)) : 'freshtv512)) : 'freshtv514) : 'freshtv516)) : 'freshtv518)

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2471 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141

and _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    let _v : 'tv_seplist_o__i__s__i__s_exp_p_ = 
# 301 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 2528 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv499) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o__i__s__i__s_exp_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2541 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv483 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2551 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2556 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2563 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2568 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2573 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 304 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 2580 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv482)) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv485 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2590 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv486)) : 'freshtv488)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2599 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__H__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491) = Obj.magic _menhir_stack in
            let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2610 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv489) = Obj.magic _menhir_stack in
            let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2618 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2622 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 112 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 2629 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv490)) : 'freshtv492)
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 115 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                                   none()
                               )
# 2640 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2650 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv496)) : 'freshtv498)
    | _ ->
        _menhir_fail ()) : 'freshtv500) : 'freshtv502)) : 'freshtv504)

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2665 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2669 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2677 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2681 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2688 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 250 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 2695 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv474)) : 'freshtv476)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_args) : 'tv_args) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 247 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 2713 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv478)) : 'freshtv480)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fieldsep -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_fieldsep)) = _menhir_stack in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 361 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 2734 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv468)) : 'freshtv470)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__N__I_ _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.NAME _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.NESTED_STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.NUMERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | Lua_lexer.STR_LIT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192) : 'freshtv472)
    | _ ->
        _menhir_fail ()

and _menhir_goto_opt_o_parlist_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_parlist_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv459 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2791 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2795 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv455 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2805 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2809 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2814 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv457 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2883 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2887 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv458)) : 'freshtv460)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv465 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2896 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2900 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2904 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv461 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2914 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2918 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2922 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2927 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_BREAK_I_ _v ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_DO_I_ _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_FOR_I_ _v ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_GOTO_I_ _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_IF_I_ _v ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_LOCAL_I_ _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_REPEAT_I_ _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_WHILE_I_ _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__G__G__I_ _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__H__I_ _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv463 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2996 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3000 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3004 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_parlist -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parlist) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_parlist) : 'tv_parlist) = _v in
    let _v : 'tv_opt_o_parlist_p_ = 
# 319 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 3026 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv452)) : 'freshtv454)

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3033 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3045 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3050 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3057 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3062 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3066 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 370 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_DotName(_1, _3)
                     )
# 3074 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv446)) : 'freshtv448)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3084 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv450)

and _menhir_run161 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3092 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv441 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3104 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3109 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3116 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3121 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3125 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 373 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_MethodName(_1, _3)
                     )
# 3133 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv440)) : 'freshtv442)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3143 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv444)

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv437 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3154 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv435 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3161 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 181 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 3170 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv436)) : 'freshtv438)

and _menhir_run134 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3177 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3181 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv433 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3189 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3194 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3198 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 337 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 3206 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv434)

and _menhir_goto_varargs : _menhir_env -> 'ttv_tail -> 'tv_varargs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_varargs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_varargs) : 'tv_varargs) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_parlist = 
# 343 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 3224 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv430)) : 'freshtv432)

and _menhir_run133 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3231 "runtests/ocaml_lua/lua_parser.ml"
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
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3247 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv428)

and _menhir_goto_exponent : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exponent -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3260 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3268 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 235 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                         mk_Exponent(_1, _3)
                     )
# 3278 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv404)) : 'freshtv406)
    | MenhirState0 | MenhirState7 | MenhirState192 | MenhirState183 | MenhirState180 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState85 | MenhirState168 | MenhirState86 | MenhirState164 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState141 | MenhirState97 | MenhirState135 | MenhirState137 | MenhirState129 | MenhirState127 | MenhirState102 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState95 | MenhirState28 | MenhirState75 | MenhirState40 | MenhirState69 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_exponent) : 'tv_exponent) = _v in
        let _v : 'tv_unaryexp = 
# 232 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 3295 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv408)) : 'freshtv410)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3303 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3311 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3318 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 229 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Not(_1, _2)
                     )
# 3325 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv412)) : 'freshtv414)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3333 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3341 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3348 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 220 "runtests/ocaml_lua/lua_parser.mly"
                               ( 
                         mk_Len(_1, _2)
                     )
# 3355 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv416)) : 'freshtv418)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3363 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3371 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3378 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 223 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Neg(_1, _2)
                     )
# 3385 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv420)) : 'freshtv422)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3393 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3401 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3408 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 226 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Inv(_1, _2)
                     )
# 3415 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv424)) : 'freshtv426)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3424 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3434 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3438 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 310 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 3445 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv402)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3452 "runtests/ocaml_lua/lua_parser.ml"
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
    let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o_retstat_p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_opt_o_retstat_p_) : 'tv_opt_o_retstat_p_) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_list_o_stat_p_)) = _menhir_stack in
    let _v : 'tv_block = 
# 109 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                      block(_1, _2)
                  )
# 3510 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv395) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_block) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3523 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
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
            let (_menhir_stack : ('freshtv287 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3545 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3550 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3555 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 160 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 3562 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3572 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv292)) : 'freshtv294)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv301 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3581 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3585 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3589 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3593 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv297 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3603 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3607 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3611 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3615 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3620 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv295 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3627 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3631 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3635 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3639 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3644 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3649 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3653 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 172 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 3660 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv299 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3670 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3674 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3678 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3682 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv300)) : 'freshtv302)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv309 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3691 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3695 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3699 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv305 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3709 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3713 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3717 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3722 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv303 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3729 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3733 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3737 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3742 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3747 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 175 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 3754 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv304)) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3764 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3768 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3772 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv308)) : 'freshtv310)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv313 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3781 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3785 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_ELSEIF_I_ _v ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState140 in
            let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 127 "runtests/ocaml_lua/lua_parser.mly"
                                            ( 
                                                         []
                                                     )
# 3801 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv314)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv327 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3813 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3817 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv325 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3823 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3827 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3832 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 199 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 3839 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_elseif) = _v in
        (((match _menhir_s with
        | MenhirState145 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_elseif) : 'tv_elseif) = _v in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 124 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                        appendList(_1, _2)
                                    )
# 3861 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv316)) : 'freshtv318)
        | MenhirState140 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_elseif) : 'tv_elseif) = _v in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 121 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                                        [_1]
                                    )
# 3878 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv320)) : 'freshtv322)
        | _ ->
            _menhir_fail ()) : 'freshtv324) : 'freshtv326)) : 'freshtv328)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3888 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3894 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3899 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 202 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 3906 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333) = _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
        let ((_1 : 'tv_else__x_) : 'tv_else__x_) = _v in
        let _v : 'tv_opt_o_else_p_ = 
# 136 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                              some(_1)
                          )
# 3922 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv330)) : 'freshtv332)) : 'freshtv334) : 'freshtv336)) : 'freshtv338)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv345 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3930 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3934 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3938 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3942 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv341 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3952 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3956 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3960 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3964 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3969 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv339 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3976 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3980 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3984 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3988 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3993 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3998 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), _, (_3 : 'tv_funcname)), _), _, (_5 : 'tv_opt_o_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 178 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 4005 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv340)) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv343 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4015 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4019 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4023 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4027 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv344)) : 'freshtv346)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4036 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4046 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4051 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4098 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv350)) : 'freshtv352)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv359 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4107 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4111 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv355 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4121 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4125 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4130 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv353 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4137 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4141 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4146 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4151 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 163 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 4158 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv354)) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv357 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4168 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4172 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv358)) : 'freshtv360)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv373 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4181 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4185 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4189 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv369 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4199 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4203 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4207 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4212 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv367 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4219 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4223 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4227 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4232 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4237 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_opt_o_funcname_p_)), _), _, (_4 : 'tv_opt_o_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 325 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 4244 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_functiondef) : 'tv_functiondef) = _v in
            let _v : 'tv_atom = 
# 283 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                     _1
                 )
# 4263 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv362)) : 'freshtv364)) : 'freshtv366) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv371 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4273 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4277 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4281 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv372)) : 'freshtv374)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_start__y_ = 
# 85 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                          _1
                      )
# 4296 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4317 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 69 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 4321 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4329 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4337 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4345 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4349 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv376)) : 'freshtv378)) : 'freshtv380) : 'freshtv382)) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv386)) : 'freshtv388)) : 'freshtv390) : 'freshtv392)) : 'freshtv394)
    | _ ->
        _menhir_fail ()) : 'freshtv396) : 'freshtv398)) : 'freshtv400)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 295 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 4369 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_opt_o_fieldsep_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_fieldsep_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4380 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4390 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4395 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4402 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4407 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4412 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_seplist_o_fieldsep_s_field_p_)), _, _) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 367 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                 mk_TableConstructor(_1, _2)
                             )
# 4419 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        (((match _menhir_s with
        | MenhirState0 | MenhirState5 | MenhirState192 | MenhirState7 | MenhirState183 | MenhirState180 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState12 | MenhirState23 | MenhirState85 | MenhirState168 | MenhirState86 | MenhirState164 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState141 | MenhirState97 | MenhirState137 | MenhirState135 | MenhirState129 | MenhirState127 | MenhirState104 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState105 | MenhirState102 | MenhirState95 | MenhirState28 | MenhirState75 | MenhirState69 | MenhirState45 | MenhirState40 | MenhirState36 | MenhirState29 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_atom = 
# 286 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableExpr(_1)
                 )
# 4440 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv270)) : 'freshtv272)
        | MenhirState32 | MenhirState79 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tableconstructor) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
            let _v : 'tv_args = 
# 307 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 4457 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv274)) : 'freshtv276)
        | _ ->
            _menhir_fail ()) : 'freshtv278) : 'freshtv280)) : 'freshtv282)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4469 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv284)) : 'freshtv286)

and _menhir_run186 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4477 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4487 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 388 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4494 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv268)

and _menhir_run187 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4501 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4511 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_fieldsep = 
# 391 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 4518 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v : 'freshtv266)

and _menhir_reduce83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_o_parlist_p_ = 
# 322 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4529 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4536 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4546 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4550 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 340 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 4557 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv264)

and _menhir_goto_funcname : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_funcname -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4570 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4574 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__I_ _v ->
            _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__O__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4586 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4590 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4595 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.NAME _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | Lua_lexer.I__P__I_ _ ->
                _menhir_reduce83 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv252)
        | Lua_lexer.I__U__I_ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4620 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4624 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv254)) : 'freshtv256)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__I_ _v ->
            _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__U__I_ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__O__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_funcname)) = _menhir_stack in
            let _v : 'tv_opt_o_funcname_p_ = 
# 313 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 4647 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o_funcname_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv260)) : 'freshtv262)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4669 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4679 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4684 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv224)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv225 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4733 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv226)) : 'freshtv228)
    | MenhirState18 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4749 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv231 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4760 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4765 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv229 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4772 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4777 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4781 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 328 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 4789 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv230)) : 'freshtv232)
            | Lua_lexer.NAME _v ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4801 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv234)) : 'freshtv236)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 331 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 4813 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv240)) : 'freshtv242)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4828 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4839 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.NESTED_STR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.NUMERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | Lua_lexer.STR_LIT _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv244)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv245) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 187 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                               none()
                           )
# 4889 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4899 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv248)) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prefixexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4921 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4932 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4937 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4960 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv204)) : 'freshtv206)
    | Lua_lexer.I__N__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4971 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv208)
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__Q__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5020 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv210)
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5061 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5072 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5077 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5084 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5089 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5093 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 256 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 5101 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv212)) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5111 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv216)) : 'freshtv218)
    | Lua_lexer.STR_LIT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_exponent = 
# 238 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                         _1
                     )
# 5126 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv220)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv222)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nempty_list_o_stat_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_stat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_LOCAL_I_ _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_REPEAT_I_ _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I_WHILE_I_ _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__G__G__I_ _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 97 "runtests/ocaml_lua/lua_parser.mly"
                                                               ( 
                                                       _1
                                                   )
# 5206 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv200)

and _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_stat_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    let _v : 'tv_list_o_stat_p_ = 
# 100 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                               _1
                           )
# 5229 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_stat_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_RETURN_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        let (_v : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5247 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_FALSE_I_ _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_FUNCTION_I_ _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_NIL_I_ _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_NOT_I_ _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I_TRUE_I_ _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__J__I__I _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__O__I_ _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__T__I_ _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__T__I__I _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__U__U__U__I_ _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.I__W__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.NAME _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | Lua_lexer.NESTED_STR _v ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv184)
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_retstat_p_ = 
# 106 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 5297 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv186)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv188)) : 'freshtv190)) : 'freshtv192) : 'freshtv194)) : 'freshtv196)

and _menhir_reduce88 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5311 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5317 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 241 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 5324 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_) = _v in
    let _v : 'tv_seplist_o_fieldsep_s_field_p_ = 
# 358 "runtests/ocaml_lua/lua_parser.mly"
                                                                                      ( 
                                              _1
                                          )
# 5343 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o_fieldsep_s_field_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv175 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5354 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | Lua_lexer.I__S__I_ _v ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState185 in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 364 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 5372 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv174)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv176)) : 'freshtv178) : 'freshtv180)) : 'freshtv182)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5383 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5395 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5400 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv170)
    | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__N__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.STR_LIT _ ->
        _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5449 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv172)

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5457 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5502 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_opt_o_funcname_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_funcname_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv167 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5516 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5526 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5531 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_reduce83 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv164)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5554 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv166)) : 'freshtv168)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5562 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5572 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5576 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_funcname = 
# 376 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                         mk_VarName(_1)
                     )
# 5583 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv162)

and _menhir_reduce66 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5590 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5596 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 334 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 5603 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atom) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_atom) : 'tv_atom) = _v in
    let _v : 'tv_prefixexp = 
# 259 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          _1
                      )
# 5622 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv158)) : 'freshtv160)

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_stat) : 'tv_stat) = _v in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 88 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                      [_1]
                                  )
# 5643 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv150)) : 'freshtv152)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_stat) : 'tv_stat) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 91 "runtests/ocaml_lua/lua_parser.mly"
                                                   ( 
                                      appendList(_1, _2)
                                  )
# 5661 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv154)) : 'freshtv156)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * _menhir_state * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv50)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv52)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5685 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv54)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5694 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5698 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5702 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv56)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5711 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv58)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5720 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5724 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv60)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5733 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv62)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5741 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv64)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5754 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5758 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5767 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5776 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5780 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv73 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5789 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5793 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5797 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv74)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5806 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5810 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv76)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5819 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5827 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv80)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5836 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv82)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5849 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv86)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5858 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv89 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5867 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5871 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5875 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5879 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv90)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5888 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5892 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5896 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5905 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5914 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5918 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5927 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv99 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5936 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5940 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5944 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5948 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv101 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5957 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5961 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5965 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5974 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5978 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5987 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5996 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6005 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6009 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6018 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6022 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv112)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6031 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv114)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6045 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6054 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv120)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6063 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv122)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6077 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6086 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv129 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6095 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6099 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6103 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6112 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6116 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6125 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6134 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6143 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6152 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6161 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6165 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6174 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv144)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6183 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv146)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv148)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 94 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                       []
                                                   )
# 6199 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6206 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6216 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6220 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 274 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_String(_1)
                 )
# 6227 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv48)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6234 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6244 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6248 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 271 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_Num(_1)
                 )
# 6255 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv46)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6262 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6272 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6276 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 277 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_String(_1)
                 )
# 6283 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv44)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6290 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6300 "runtests/ocaml_lua/lua_parser.ml"
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
# 6337 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6347 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6351 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 280 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_Ellipse(_1)
                 )
# 6358 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv42)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6365 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
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
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        let _v : 'tv_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ = 
# 352 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                                                      []
                                                                  )
# 6413 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6424 "runtests/ocaml_lua/lua_parser.ml"
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
# 6461 "runtests/ocaml_lua/lua_parser.ml"
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
# 6506 "runtests/ocaml_lua/lua_parser.ml"
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
# 6543 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6553 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6557 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 142 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6564 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6571 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6583 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6588 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__G__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6599 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6603 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6608 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6615 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6619 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6624 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6629 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 151 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6636 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv28)) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6646 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6650 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv32)) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6661 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv36)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6669 "runtests/ocaml_lua/lua_parser.ml"
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
# 6714 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6724 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6728 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 268 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                     mk_Bool(_1, true)
                 )
# 6735 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv26)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6742 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_BREAK_I_ _v ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_DO_I_ _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
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
# 6809 "runtests/ocaml_lua/lua_parser.ml"
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
# 6846 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6856 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6860 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 262 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_Nil(_1)
                 )
# 6867 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv24)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6874 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FUNCTION_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6886 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6892 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv22)
    | Lua_lexer.NAME _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6914 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6959 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6971 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6976 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6983 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6988 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6992 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6997 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 157 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 7004 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7014 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7022 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | Lua_lexer.I__O__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState15 in
        let _v : 'tv_opt_o_funcname_p_ = 
# 316 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 7040 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_funcname_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7051 "runtests/ocaml_lua/lua_parser.ml"
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
# 7063 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState100 in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7069 "runtests/ocaml_lua/lua_parser.ml"
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
# 7080 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7084 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7089 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_FALSE_I_ _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_FUNCTION_I_ _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NIL_I_ _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_NOT_I_ _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I_TRUE_I_ _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__J__I__I _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__O__I_ _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__T__I_ _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__T__I__I _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__U__U__U__I_ _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.I__W__I_ _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.NAME _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | Lua_lexer.NESTED_STR _v ->
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
            _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7138 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7142 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7154 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7164 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7168 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 265 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_Bool(_1, false)
                 )
# 7175 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7182 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7249 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7259 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7263 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 154 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 7270 "runtests/ocaml_lua/lua_parser.ml"
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
# 7289 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FOR_I_ _v ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_GOTO_I_ _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Lua_lexer.I_IF_I_ _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
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
