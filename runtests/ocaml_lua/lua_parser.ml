
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
  | MenhirState191
  | MenhirState184
  | MenhirState181
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

# 79 "runtests/ocaml_lua/lua_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_goto_opt_o_fieldsep_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_fieldsep_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv783 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 90 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv779 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 100 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 105 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv777 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 112 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 117 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 122 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)), _) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 358 "runtests/ocaml_lua/lua_parser.mly"
                                                                                              ( 
                                 mk_TableConstructor(_1, _2)
                             )
# 129 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_tableconstructor _menhir_env _menhir_stack _menhir_s _v : 'freshtv778)) : 'freshtv780)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv781 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 139 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_opt_o_fieldsep_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv782)) : 'freshtv784)

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> 'tv_fieldsep -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv775 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_fieldsep) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__N__I_ _v ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.NAME _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv773 * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_stack, (_1 : 'tv_fieldsep)) = _menhir_stack in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 352 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 193 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _v : 'freshtv774)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv776)

and _menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o_fieldsep_s_field_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv771 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 208 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__H__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761) = Obj.magic _menhir_stack in
        let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 219 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759) = Obj.magic _menhir_stack in
        let (_ : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 227 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_fieldsep = 
# 385 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 234 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_fieldsep _menhir_env _menhir_stack _v : 'freshtv760)) : 'freshtv762)
    | Lua_lexer.I__S__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 243 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv763) = Obj.magic _menhir_stack in
        let (_ : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 251 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_fieldsep = 
# 382 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         0
                     )
# 258 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_fieldsep _menhir_env _menhir_stack _v : 'freshtv764)) : 'freshtv766)
    | Lua_lexer.I__V__I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_fieldsep_p_ = 
# 355 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 269 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_fieldsep_p_ _menhir_env _menhir_stack _v : 'freshtv768)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv769 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 279 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv770)) : 'freshtv772)

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 287 "runtests/ocaml_lua/lua_parser.ml"
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
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv753 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv751 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_field) : 'tv_field) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o_fieldsep_s_field_p_)), _) = _menhir_stack in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 349 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                     appendList(_1, _3)
                                                 )
# 347 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv752)) : 'freshtv754)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv757) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv755) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_field) : 'tv_field) = _v in
        let _v : 'tv_nempty_seplist_o_fieldsep_s_field_p_ = 
# 346 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                                                     [_1]
                                                 )
# 364 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_seplist_o_fieldsep_s_field_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv756)) : 'freshtv758)
    | _ ->
        _menhir_fail ()

and _menhir_goto_range_tail : _menhir_env -> 'ttv_tail -> 'tv_range_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv749 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 376 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let (_v : 'tv_range_tail) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv747 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 383 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
    let ((_4 : 'tv_range_tail) : 'tv_range_tail) = _v in
    let (((_menhir_stack, _menhir_s, (_1 : 'tv_exp)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_range = 
# 190 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                      range(_1, _3, _4)
                  )
# 392 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv745) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_range) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv743 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 403 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 407 "runtests/ocaml_lua/lua_parser.ml"
    )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 411 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_DO_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv739 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 421 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 425 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 429 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 434 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv740)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv741 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 503 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 507 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 511 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv742)) : 'freshtv744)) : 'freshtv746) : 'freshtv748)) : 'freshtv750)

and _menhir_reduce66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 289 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                    [_1]
                                                )
# 524 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s_exp_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv709 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 298 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                                                                     _1
                                                                 )
# 549 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv710)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv711 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv712)) : 'freshtv714)
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState111 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 571 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv716)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv718)) : 'freshtv720)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv725 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 625 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv721 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 637 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_stat = 
# 145 "runtests/ocaml_lua/lua_parser.mly"
                                                                                        ( 
                     mk_Assignment(false, _1, some(_3))
                 )
# 645 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv722)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv723 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 655 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv724)) : 'freshtv726)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv731 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 664 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 668 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_DO_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv727 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 678 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 682 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 687 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv728)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv729 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 758 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 762 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv730)) : 'freshtv732)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv737 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 771 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv733 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 783 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 184 "runtests/ocaml_lua/lua_parser.mly"
                                                              ( 
                               some(_2)
                           )
# 791 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv734)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv735 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 801 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv736)) : 'freshtv738)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> 'tv_binop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv707 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv708)

and _menhir_goto_binseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv705 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_AND_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv525) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 865 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv523) = Obj.magic _menhir_stack in
        let ((_1 : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 873 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 34 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 877 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 391 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 884 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv524)) : 'freshtv526)
    | Lua_lexer.I_OR_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv529) = Obj.magic _menhir_stack in
        let (_v : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 893 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv527) = Obj.magic _menhir_stack in
        let ((_1 : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 901 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 49 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 905 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 388 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                      mkOperator(_1)
                  )
# 912 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv528)) : 'freshtv530)
    | Lua_lexer.I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv533) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 921 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531) = Obj.magic _menhir_stack in
        let ((_1 : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 929 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 23 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 933 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 394 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 940 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv532)) : 'freshtv534)
    | Lua_lexer.I__I__I__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let (_v : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 949 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
        let ((_1 : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 957 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 24 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 961 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 421 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 968 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv536)) : 'freshtv538)
    | Lua_lexer.I__I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
        let (_v : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 977 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
        let ((_1 : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 985 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 25 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 989 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 400 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 996 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv540)) : 'freshtv542)
    | Lua_lexer.I__J__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
        let (_v : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1005 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
        let ((_1 : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1013 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 27 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1017 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 409 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1024 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv544)) : 'freshtv546)
    | Lua_lexer.I__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
        let (_v : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1033 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
        let ((_1 : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1041 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 28 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1045 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 397 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1052 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv548)) : 'freshtv550)
    | Lua_lexer.I__K__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
        let (_v : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1061 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
        let ((_1 : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1069 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 29 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1073 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 403 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1080 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv552)) : 'freshtv554)
    | Lua_lexer.I__K__K__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        let (_v : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1089 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        let ((_1 : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1097 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 30 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1101 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 424 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1108 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv556)) : 'freshtv558)
    | Lua_lexer.I__L__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1117 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
        let ((_1 : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1125 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 7 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1129 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 445 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1136 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv560)) : 'freshtv562)
    | Lua_lexer.I__M__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1145 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
        let ((_1 : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1153 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 8 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1157 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 418 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1164 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv564)) : 'freshtv566)
    | Lua_lexer.I__Q__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1173 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let ((_1 : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1181 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 11 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1185 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 436 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1192 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv568)) : 'freshtv570)
    | Lua_lexer.I__R__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1201 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
        let ((_1 : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1209 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 12 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1213 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 430 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1220 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv572)) : 'freshtv574)
    | Lua_lexer.I__T__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1229 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let ((_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1237 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1241 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 433 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1248 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv576)) : 'freshtv578)
    | Lua_lexer.I__U__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
        let (_v : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1257 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let ((_1 : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1265 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 57 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1269 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 412 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1276 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv580)) : 'freshtv582)
    | Lua_lexer.I__U__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1285 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
        let ((_1 : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1293 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 16 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1297 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 427 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1304 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv584)) : 'freshtv586)
    | Lua_lexer.I__V__I__I _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1313 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
        let ((_1 : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1321 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 18 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1325 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 439 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                      mkOperator(_1)
                  )
# 1332 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv588)) : 'freshtv590)
    | Lua_lexer.I__V__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv593) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1341 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
        let ((_1 : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1349 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 19 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1353 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 442 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1360 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv592)) : 'freshtv594)
    | Lua_lexer.I__W__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
        let (_v : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1369 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595) = Obj.magic _menhir_stack in
        let ((_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1377 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1381 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 415 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                      mkOperator(_1)
                  )
# 1388 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv596)) : 'freshtv598)
    | Lua_lexer.I__W__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let (_v : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1397 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let ((_1 : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1405 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 60 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1409 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _v : 'tv_binop = 
# 406 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                      mkOperator(_1)
                  )
# 1416 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binop _menhir_env _menhir_stack _v : 'freshtv600)) : 'freshtv602)
    | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_binseq)) = _menhir_stack in
        let _v : 'tv_binexp = 
# 208 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                       mkBinOpSeq(_1, mk_Bin, mk_UnsolvedBin)
                   )
# 1428 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv699) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv697) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binexp) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv695) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binexp) : 'tv_binexp) = _v in
        let _v : 'tv_exp = 
# 205 "runtests/ocaml_lua/lua_parser.mly"
             ( 
                    _1
                )
# 1447 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv693) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((match _menhir_s with
        | MenhirState45 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv605 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1460 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv603 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1466 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 292 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 1474 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_seplist_o__i__s__i__s_exp_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv604)) : 'freshtv606)
        | MenhirState164 | MenhirState135 | MenhirState115 | MenhirState109 | MenhirState40 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            (_menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) : 'freshtv608)
        | MenhirState75 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv615 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1486 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv611 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1496 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1501 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv609 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1508 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1513 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 253 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 1521 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv610)) : 'freshtv612)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv613 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1531 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv614)) : 'freshtv616)
        | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1540 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_DO_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv617 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1550 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1555 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv618)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv619 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1624 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv620)) : 'freshtv622)
        | MenhirState95 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv627 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1633 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv623 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1643 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1648 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv624)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv625 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1717 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv626)) : 'freshtv628)
        | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 | MenhirState111 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv633 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_stat = 
# 148 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                     mk_ExprStmt(_1)
                 )
# 1736 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv630)
            | Lua_lexer.I__J__I_ _ | Lua_lexer.I__S__I_ _ ->
                _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv632)) : 'freshtv634)
        | MenhirState102 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv635 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1760 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv636)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv638)) : 'freshtv640)
        | MenhirState127 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv647 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1812 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__S__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1823 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv642)
            | Lua_lexer.I_DO_I_ _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
                let _v : 'tv_range_tail = 
# 196 "runtests/ocaml_lua/lua_parser.mly"
              ( 
                           none()
                       )
# 1871 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv644)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1881 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv646)) : 'freshtv648)
        | MenhirState129 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv651 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1890 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv649 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1896 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_range_tail = 
# 193 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 1904 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv650)) : 'freshtv652)
        | MenhirState141 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv657 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1912 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv653 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1922 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1927 "runtests/ocaml_lua/lua_parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv654)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv655 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1996 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv656)) : 'freshtv658)
        | MenhirState168 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv661 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2005 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2009 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv659 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2015 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2019 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2024 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 166 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 2031 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv660)) : 'freshtv662)
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv669 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2039 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv665 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2049 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2054 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv663 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2061 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2066 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2071 "runtests/ocaml_lua/lua_parser.ml"
                ))), _, (_2 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 244 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 2078 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv664)) : 'freshtv666)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv667 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2088 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv668)) : 'freshtv670)
        | MenhirState9 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv673 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2097 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2101 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv671 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2107 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2111 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2116 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 376 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 2123 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv672)) : 'freshtv674)
        | MenhirState181 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv683 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2131 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv679 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2141 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2146 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                ((match _tok with
                | Lua_lexer.I__J__I_ _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv675 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2157 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2161 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2166 "runtests/ocaml_lua/lua_parser.ml"
                    )) = _v in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    ((match _tok with
                    | Lua_lexer.I_FALSE_I_ _v ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I_FUNCTION_I_ _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I_NIL_I_ _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I_NOT_I_ _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I_TRUE_I_ _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__J__I__I _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__O__I_ _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__T__I_ _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__T__I__I _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__U__U__U__I_ _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.I__W__I_ _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.NAME _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.NESTED_STR _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.NUMERAL _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | Lua_lexer.STR_LIT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv676)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv677 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2213 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2217 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv678)) : 'freshtv680)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv681 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2228 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv682)) : 'freshtv684)
        | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv687 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2237 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2241 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2245 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv685 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2251 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2255 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2259 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2264 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 373 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 2271 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv686)) : 'freshtv688)
        | MenhirState7 | MenhirState191 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv691 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv689 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 379 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 2285 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv690)) : 'freshtv692)
        | _ ->
            _menhir_fail ()) : 'freshtv694) : 'freshtv696)) : 'freshtv698)) : 'freshtv700) : 'freshtv702)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv703 * _menhir_state * 'tv_binseq) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv704)) : 'freshtv706)

and _menhir_goto_opt_o__i__h__i__p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o__i__h__i__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv521 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2304 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv519 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2311 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_o__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2317 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 118 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 2324 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv517) = _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv515) = Obj.magic _menhir_stack in
    let (_v : 'tv_retstat) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513) = Obj.magic _menhir_stack in
    let ((_1 : 'tv_retstat) : 'tv_retstat) = _v in
    let _v : 'tv_opt_o_retstat_p_ = 
# 103 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 2340 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv514)) : 'freshtv516)) : 'freshtv518) : 'freshtv520)) : 'freshtv522)

and _menhir_goto_unaryexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_unaryexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unaryexp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_unaryexp) : 'tv_unaryexp) = _v in
    let _v : 'tv_binoperand = 
# 217 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                           mkOperand(_1)
                       )
# 2359 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_binoperand) = _v in
    (((match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_binseq)), (_2 : 'tv_binop)) = _menhir_stack in
        let _v : 'tv_binseq = 
# 211 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 2381 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv500)) : 'freshtv502)
    | MenhirState0 | MenhirState7 | MenhirState191 | MenhirState181 | MenhirState184 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState28 | MenhirState85 | MenhirState86 | MenhirState168 | MenhirState164 | MenhirState94 | MenhirState95 | MenhirState97 | MenhirState148 | MenhirState141 | MenhirState143 | MenhirState135 | MenhirState137 | MenhirState102 | MenhirState127 | MenhirState129 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState75 | MenhirState40 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binoperand) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_binoperand) : 'tv_binoperand) = _v in
        let _v : 'tv_binseq = 
# 214 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 2398 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_binseq _menhir_env _menhir_stack _menhir_s _v : 'freshtv504)) : 'freshtv506)
    | _ ->
        _menhir_fail ()) : 'freshtv508) : 'freshtv510)) : 'freshtv512)

and _menhir_goto_opt_o_else_p_ : _menhir_env -> 'ttv_tail -> 'tv_opt_o_else_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv497 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2411 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2415 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv493 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2425 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2429 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2434 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv491 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2441 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2445 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2450 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2455 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)), _, (_5 : 'tv_list_o_elseif_p_)), (_6 : 'tv_opt_o_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 169 "runtests/ocaml_lua/lua_parser.mly"
                                                                           ( 
                     mk_IfStmt(_1, _2, _4, _5, _6)
                 )
# 2462 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv492)) : 'freshtv494)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv495 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2472 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2476 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv496)) : 'freshtv498)

and _menhir_goto_nempty_list_o_elseif_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_elseif_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSEIF_I_ _v ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 130 "runtests/ocaml_lua/lua_parser.mly"
                                                                   ( 
                                                         _1
                                                     )
# 2500 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv490)

and _menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_) = _v in
    let _v : 'tv_list_o_elseif_p_ = 
# 133 "runtests/ocaml_lua/lua_parser.mly"
                                                            ( 
                                 _1
                             )
# 2523 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_elseif_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv479 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2534 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2538 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_ELSE_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2549 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv474)
    | Lua_lexer.I_END_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_else_p_ = 
# 139 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                              none()
                          )
# 2619 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv476)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv477 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2629 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2633 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv478)) : 'freshtv480)) : 'freshtv482) : 'freshtv484)) : 'freshtv486)

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2641 "runtests/ocaml_lua/lua_parser.ml"
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
    let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) = _v in
    let _v : 'tv_seplist_o__i__s__i__s_exp_p_ = 
# 301 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 2698 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_seplist_o__i__s__i__s_exp_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2711 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2721 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2726 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv449 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2733 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2738 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2743 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 304 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 2750 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv450)) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2760 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv454)) : 'freshtv456)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2769 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__H__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
            let (_v : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2780 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
            let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2788 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2792 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 112 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 2799 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv458)) : 'freshtv460)
        | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 115 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                                   none()
                               )
# 2810 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv463 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2820 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()) : 'freshtv468) : 'freshtv470)) : 'freshtv472)

and _menhir_goto_opt_o_parlist_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_parlist_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv441 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2836 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2840 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv437 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2850 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2854 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2859 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv439 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2928 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2932 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv440)) : 'freshtv442)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv447 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2941 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2945 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2949 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv443 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2959 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2963 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2967 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2972 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv445 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3041 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3045 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3049 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv446)) : 'freshtv448)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_parlist -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parlist) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_parlist) : 'tv_parlist) = _v in
    let _v : 'tv_opt_o_parlist_p_ = 
# 319 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 3071 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv434)) : 'freshtv436)

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3078 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3090 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3095 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3102 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3107 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3111 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 364 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_DotName(_1, _3)
                     )
# 3119 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv428)) : 'freshtv430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3129 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv432)

and _menhir_run161 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3137 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3149 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3154 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3161 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3166 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3170 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 367 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_MethodName(_1, _3)
                     )
# 3178 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv422)) : 'freshtv424)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3188 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv426)

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv419 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3199 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv417 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3206 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 181 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 3215 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv418)) : 'freshtv420)

and _menhir_run134 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3222 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3226 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3234 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3239 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3243 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 337 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 3251 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv416)

and _menhir_goto_varargs : _menhir_env -> 'ttv_tail -> 'tv_varargs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_varargs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_varargs) : 'tv_varargs) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_parlist = 
# 343 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 3269 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv412)) : 'freshtv414)

and _menhir_run133 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3276 "runtests/ocaml_lua/lua_parser.ml"
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
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3292 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv410)

and _menhir_goto_exponent : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exponent -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3305 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3313 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 235 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                         mk_Exponent(_1, _3)
                     )
# 3323 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv386)) : 'freshtv388)
    | MenhirState0 | MenhirState7 | MenhirState191 | MenhirState184 | MenhirState181 | MenhirState9 | MenhirState11 | MenhirState23 | MenhirState85 | MenhirState168 | MenhirState86 | MenhirState164 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState141 | MenhirState97 | MenhirState135 | MenhirState137 | MenhirState129 | MenhirState127 | MenhirState102 | MenhirState104 | MenhirState105 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState95 | MenhirState28 | MenhirState75 | MenhirState40 | MenhirState69 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_exponent) : 'tv_exponent) = _v in
        let _v : 'tv_unaryexp = 
# 232 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 3340 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv390)) : 'freshtv392)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3348 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3356 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3363 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 229 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Not(_1, _2)
                     )
# 3370 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv394)) : 'freshtv396)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3378 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3386 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3393 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 220 "runtests/ocaml_lua/lua_parser.mly"
                               ( 
                         mk_Len(_1, _2)
                     )
# 3400 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv398)) : 'freshtv400)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3408 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3416 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3423 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 223 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Neg(_1, _2)
                     )
# 3430 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv402)) : 'freshtv404)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3438 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3446 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3453 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 226 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Inv(_1, _2)
                     )
# 3460 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv406)) : 'freshtv408)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3469 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3479 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3483 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 310 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 3490 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv384)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3497 "runtests/ocaml_lua/lua_parser.ml"
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
    let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o_retstat_p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    let ((_2 : 'tv_opt_o_retstat_p_) : 'tv_opt_o_retstat_p_) = _v in
    let (_menhir_stack, _menhir_s, (_1 : 'tv_list_o_stat_p_)) = _menhir_stack in
    let _v : 'tv_block = 
# 109 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                      block(_1, _2)
                  )
# 3555 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv377) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_block) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3568 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3578 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3583 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3590 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3595 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3600 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 160 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 3607 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3617 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv274)) : 'freshtv276)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv283 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3626 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3630 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3634 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3638 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv279 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3648 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3652 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3656 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3660 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3665 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv277 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3672 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3676 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3680 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3684 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3689 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3694 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3698 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 172 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 3705 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv278)) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv281 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3715 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3719 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3723 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3727 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv282)) : 'freshtv284)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv291 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3736 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3740 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3744 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv287 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3754 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3758 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3762 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3767 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv285 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3774 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3778 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3782 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3787 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3792 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 175 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 3799 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv289 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3809 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3813 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3817 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv290)) : 'freshtv292)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3826 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3830 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_ELSEIF_I_ _v ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState140 in
            let _v : 'tv_allow_empty_o_nempty_list_o_elseif_p__p_ = 
# 127 "runtests/ocaml_lua/lua_parser.mly"
                                            ( 
                                                         []
                                                     )
# 3846 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_allow_empty_o_nempty_list_o_elseif_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv296)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv309 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3858 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3862 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv307 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3868 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3872 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3877 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 199 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 3884 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_elseif) = _v in
        (((match _menhir_s with
        | MenhirState145 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_2 : 'tv_elseif) : 'tv_elseif) = _v in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_elseif_p_)) = _menhir_stack in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 124 "runtests/ocaml_lua/lua_parser.mly"
                                                         ( 
                                        appendList(_1, _2)
                                    )
# 3906 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv298)) : 'freshtv300)
        | MenhirState140 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_elseif) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_elseif) : 'tv_elseif) = _v in
            let _v : 'tv_nempty_list_o_elseif_p_ = 
# 121 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                                        [_1]
                                    )
# 3923 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv302)) : 'freshtv304)
        | _ ->
            _menhir_fail ()) : 'freshtv306) : 'freshtv308)) : 'freshtv310)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3933 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3939 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3944 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 202 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 3951 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315) = _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
        let (_v : 'tv_else__x_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
        let ((_1 : 'tv_else__x_) : 'tv_else__x_) = _v in
        let _v : 'tv_opt_o_else_p_ = 
# 136 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                              some(_1)
                          )
# 3967 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv312)) : 'freshtv314)) : 'freshtv316) : 'freshtv318)) : 'freshtv320)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv327 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3975 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3979 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3983 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3987 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv323 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3997 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4001 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4005 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4009 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4014 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv321 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4021 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4025 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4029 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4033 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4038 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4043 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), _, (_3 : 'tv_funcname)), _), _, (_5 : 'tv_opt_o_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 178 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 4050 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv322)) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv325 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4060 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4064 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4068 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4072 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv326)) : 'freshtv328)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4081 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4091 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4096 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv331 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4143 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv332)) : 'freshtv334)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv341 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4152 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4156 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv337 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4166 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4170 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4175 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4182 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4186 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4191 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4196 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 163 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 4203 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv336)) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4213 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4217 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv340)) : 'freshtv342)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv355 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4226 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4230 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4234 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv351 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4244 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4248 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4252 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4257 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv349 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4264 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4268 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4272 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4277 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4282 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_opt_o_funcname_p_)), _), _, (_4 : 'tv_opt_o_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 325 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 4289 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_functiondef) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_functiondef) : 'tv_functiondef) = _v in
            let _v : 'tv_atom = 
# 283 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                     _1
                 )
# 4308 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv344)) : 'freshtv346)) : 'freshtv348) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv353 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4318 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4322 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4326 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv354)) : 'freshtv356)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_start__y_ = 
# 85 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                          _1
                      )
# 4341 "runtests/ocaml_lua/lua_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv371) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4362 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 69 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 4366 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4374 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4382 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4390 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4394 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv358)) : 'freshtv360)) : 'freshtv362) : 'freshtv364)) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv368)) : 'freshtv370)) : 'freshtv372) : 'freshtv374)) : 'freshtv376)
    | _ ->
        _menhir_fail ()) : 'freshtv378) : 'freshtv380)) : 'freshtv382)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 
# 295 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 4414 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4426 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4430 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4438 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4442 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4449 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 250 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 4456 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv262)) : 'freshtv264)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_args) : 'tv_args) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 247 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 4474 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_reduce81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_o_parlist_p_ = 
# 322 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4487 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4494 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4504 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4508 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 340 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 4515 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv260)

and _menhir_goto_funcname : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_funcname -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4528 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4532 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__I_ _v ->
            _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__O__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4544 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4548 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4553 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv248)
        | Lua_lexer.I__U__I_ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4578 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4582 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv250)) : 'freshtv252)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__G__I_ _v ->
            _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__U__I_ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.I__O__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_funcname)) = _menhir_stack in
            let _v : 'tv_opt_o_funcname_p_ = 
# 313 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 4605 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o_funcname_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv256)) : 'freshtv258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4627 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4637 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4642 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv220)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4691 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv222)) : 'freshtv224)
    | MenhirState18 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__S__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4707 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__U__U__U__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv227 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4718 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4723 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv225 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4730 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4735 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4739 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 328 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 4747 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv226)) : 'freshtv228)
            | Lua_lexer.NAME _v ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4759 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv230)) : 'freshtv232)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 331 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 4771 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_varargs _menhir_env _menhir_stack _v : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv236)) : 'freshtv238)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4786 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__J__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4797 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv240)
        | Lua_lexer.I__S__I_ _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) _v
        | Lua_lexer.EOF | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ | Lua_lexer.STR_LIT _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
            let _v : 'tv_opt_assign_rhs = 
# 187 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                               none()
                           )
# 4847 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4857 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv244)) : 'freshtv246)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prefixexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4879 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4890 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4895 "runtests/ocaml_lua/lua_parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4918 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv200)) : 'freshtv202)
    | Lua_lexer.I__N__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4929 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv204)
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__Q__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4978 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv206)
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.I__U__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        let (_v : (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5019 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5030 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5035 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5042 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5047 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5051 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 256 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 5059 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5069 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv212)) : 'freshtv214)
    | Lua_lexer.STR_LIT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | Lua_lexer.EOF | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_BREAK_I_ _ | Lua_lexer.I_DO_I_ _ | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_FALSE_I_ _ | Lua_lexer.I_FOR_I_ _ | Lua_lexer.I_FUNCTION_I_ _ | Lua_lexer.I_GOTO_I_ _ | Lua_lexer.I_IF_I_ _ | Lua_lexer.I_LOCAL_I_ _ | Lua_lexer.I_NIL_I_ _ | Lua_lexer.I_NOT_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I_REPEAT_I_ _ | Lua_lexer.I_RETURN_I_ _ | Lua_lexer.I_THEN_I_ _ | Lua_lexer.I_TRUE_I_ _ | Lua_lexer.I_UNTIL_I_ _ | Lua_lexer.I_WHILE_I_ _ | Lua_lexer.I__G__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__I_ _ | Lua_lexer.I__J__I__I _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__P__I_ _ | Lua_lexer.I__P__I__I _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__U__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.NAME _ | Lua_lexer.NESTED_STR _ | Lua_lexer.NUMERAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)) = _menhir_stack in
        let _v : 'tv_exponent = 
# 238 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                         _1
                     )
# 5084 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_exponent _menhir_env _menhir_stack _menhir_s _v : 'freshtv216)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv218)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nempty_list_o_stat_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nempty_list_o_stat_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
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
        let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 97 "runtests/ocaml_lua/lua_parser.mly"
                                                               ( 
                                                       _1
                                                   )
# 5164 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv194)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv196)

and _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_allow_empty_o_nempty_list_o_stat_p__p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) : 'tv_allow_empty_o_nempty_list_o_stat_p__p_) = _v in
    let _v : 'tv_list_o_stat_p_ = 
# 100 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                               _1
                           )
# 5187 "runtests/ocaml_lua/lua_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_list_o_stat_p_) = _v in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    (((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_RETURN_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
        let (_v : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5205 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv180)
    | Lua_lexer.EOF | Lua_lexer.I_ELSEIF_I_ _ | Lua_lexer.I_ELSE_I_ _ | Lua_lexer.I_END_I_ _ | Lua_lexer.I_UNTIL_I_ _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
        let _v : 'tv_opt_o_retstat_p_ = 
# 106 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 5255 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_retstat_p_ _menhir_env _menhir_stack _v : 'freshtv182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv184)) : 'freshtv186)) : 'freshtv188) : 'freshtv190)) : 'freshtv192)

and _menhir_reduce86 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5269 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5275 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 241 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 5282 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5289 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I__J__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5301 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5306 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv176)
    | Lua_lexer.I_AND_I_ _ | Lua_lexer.I_OR_I_ _ | Lua_lexer.I__G__I_ _ | Lua_lexer.I__H__I_ _ | Lua_lexer.I__I__I_ _ | Lua_lexer.I__I__I__I_ _ | Lua_lexer.I__I__J__I_ _ | Lua_lexer.I__J__J__I_ _ | Lua_lexer.I__K__I_ _ | Lua_lexer.I__K__J__I_ _ | Lua_lexer.I__K__K__I_ _ | Lua_lexer.I__L__I_ _ | Lua_lexer.I__M__I_ _ | Lua_lexer.I__N__I_ _ | Lua_lexer.I__O__I_ _ | Lua_lexer.I__Q__I_ _ | Lua_lexer.I__Q__I__I _ | Lua_lexer.I__R__I_ _ | Lua_lexer.I__S__I_ _ | Lua_lexer.I__T__I_ _ | Lua_lexer.I__T__I__I _ | Lua_lexer.I__U__I_ _ | Lua_lexer.I__U__I__I _ | Lua_lexer.I__U__U__I_ _ | Lua_lexer.I__V__I_ _ | Lua_lexer.I__V__I__I _ | Lua_lexer.I__V__V__I_ _ | Lua_lexer.I__W__I_ _ | Lua_lexer.I__W__J__I_ _ | Lua_lexer.STR_LIT _ ->
        _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5355 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv178)

and _menhir_goto_tableconstructor : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_tableconstructor -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState5 | MenhirState191 | MenhirState7 | MenhirState184 | MenhirState181 | MenhirState9 | MenhirState10 | MenhirState11 | MenhirState12 | MenhirState23 | MenhirState85 | MenhirState168 | MenhirState86 | MenhirState164 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState141 | MenhirState97 | MenhirState137 | MenhirState135 | MenhirState129 | MenhirState127 | MenhirState104 | MenhirState115 | MenhirState111 | MenhirState109 | MenhirState105 | MenhirState102 | MenhirState95 | MenhirState28 | MenhirState75 | MenhirState69 | MenhirState45 | MenhirState40 | MenhirState36 | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
        let _v : 'tv_atom = 
# 286 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableExpr(_1)
                 )
# 5377 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv168)) : 'freshtv170)
    | MenhirState32 | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tableconstructor) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_tableconstructor) : 'tv_tableconstructor) = _v in
        let _v : 'tv_args = 
# 307 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 5394 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv172)) : 'freshtv174)
    | _ ->
        _menhir_fail ()

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5403 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lua_lexer.I_FALSE_I_ _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I_FUNCTION_I_ _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I_NIL_I_ _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I_NOT_I_ _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I_TRUE_I_ _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__J__I__I _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.I__W__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.NAME _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.NESTED_STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.NUMERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | Lua_lexer.STR_LIT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5448 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_opt_o_funcname_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_opt_o_funcname_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv165 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5462 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5472 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5477 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv162)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5500 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv164)) : 'freshtv166)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5508 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5518 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5522 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_funcname = 
# 370 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                         mk_VarName(_1)
                     )
# 5529 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv160)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5536 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5542 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 334 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 5549 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_nempty_seplist_o__i__s__i__s__i_name_k__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atom) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_atom) : 'tv_atom) = _v in
    let _v : 'tv_prefixexp = 
# 259 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          _1
                      )
# 5568 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv156)) : 'freshtv158)

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState23 | MenhirState85 | MenhirState86 | MenhirState94 | MenhirState148 | MenhirState143 | MenhirState97 | MenhirState137 | MenhirState104 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_stat) : 'tv_stat) = _v in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 88 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                      [_1]
                                  )
# 5589 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv148)) : 'freshtv150)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stat) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_stat) : 'tv_stat) = _v in
        let (_menhir_stack, _menhir_s, (_1 : 'tv_nempty_list_o_stat_p_)) = _menhir_stack in
        let _v : 'tv_nempty_list_o_stat_p_ = 
# 91 "runtests/ocaml_lua/lua_parser.mly"
                                                   ( 
                                      appendList(_1, _2)
                                  )
# 5607 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_nempty_list_o_stat_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv152)) : 'freshtv154)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_nempty_seplist_o_fieldsep_s_field_p_) * 'tv_fieldsep) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv52)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5626 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5630 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5634 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv54)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5643 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv56)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5652 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5656 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv58)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5665 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv60)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5673 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv62)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_nempty_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv64)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5686 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5690 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5699 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5708 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5712 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5721 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5725 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5729 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5738 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5742 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv74)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5751 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5759 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv78)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5768 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv80)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_nempty_list_o_stat_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv82)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5781 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5790 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv86)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv87 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5799 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5803 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5807 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5811 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5820 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5824 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5828 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv90)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5837 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5846 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5850 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5859 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv97 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5868 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5872 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5876 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5880 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv99 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5889 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5893 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5897 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5906 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5910 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5919 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5928 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5937 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5941 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5950 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5954 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5963 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv112)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_binseq) * 'tv_binop) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv114)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5977 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5986 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5995 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv120)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_prefixexp) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv122)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6009 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6018 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv127 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6027 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6031 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6035 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6044 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6048 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6057 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6066 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6075 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6084 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6093 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6097 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6106 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6115 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv144)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv146)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_allow_empty_o_nempty_list_o_stat_p__p_ = 
# 94 "runtests/ocaml_lua/lua_parser.mly"
                                          ( 
                                                       []
                                                   )
# 6131 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6138 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6148 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6152 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 274 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_String(_1)
                 )
# 6159 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv50)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6166 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6176 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6180 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 271 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_Num(_1)
                 )
# 6187 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv48)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6194 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6204 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6208 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 277 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_String(_1)
                 )
# 6215 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv46)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6222 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6232 "runtests/ocaml_lua/lua_parser.ml"
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
# 6269 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6279 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6283 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 280 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_Ellipse(_1)
                 )
# 6290 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv44)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6297 "runtests/ocaml_lua/lua_parser.ml"
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
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__O__I_ _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__T__I_ _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__T__I__I _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__U__U__U__I_ _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Lua_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6331 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6337 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6344 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6350 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6355 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 361 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                                 mk_TableConstructor(_1, [])
                             )
# 6362 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_tableconstructor _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)) : 'freshtv42)
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
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6383 "runtests/ocaml_lua/lua_parser.ml"
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
# 6420 "runtests/ocaml_lua/lua_parser.ml"
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
# 6465 "runtests/ocaml_lua/lua_parser.ml"
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
# 6502 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6512 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6516 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 142 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6523 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6530 "runtests/ocaml_lua/lua_parser.ml"
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
# 6542 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6547 "runtests/ocaml_lua/lua_parser.ml"
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
# 6558 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6562 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6567 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6574 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6578 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6583 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6588 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 151 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6595 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv28)) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6605 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6609 "runtests/ocaml_lua/lua_parser.ml"
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
# 6620 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv36)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6628 "runtests/ocaml_lua/lua_parser.ml"
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
# 6673 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6683 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6687 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 268 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                     mk_Bool(_1, true)
                 )
# 6694 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv26)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6701 "runtests/ocaml_lua/lua_parser.ml"
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
# 6768 "runtests/ocaml_lua/lua_parser.ml"
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
# 6805 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6815 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6819 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 262 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_Nil(_1)
                 )
# 6826 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv24)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6833 "runtests/ocaml_lua/lua_parser.ml"
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
# 6845 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6851 "runtests/ocaml_lua/lua_parser.ml"
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
# 6873 "runtests/ocaml_lua/lua_parser.ml"
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
# 6918 "runtests/ocaml_lua/lua_parser.ml"
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
# 6930 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6935 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6942 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6947 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6951 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6956 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 157 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 6963 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6973 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6981 "runtests/ocaml_lua/lua_parser.ml"
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
# 6999 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_funcname_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7010 "runtests/ocaml_lua/lua_parser.ml"
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
# 7022 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState100 in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7028 "runtests/ocaml_lua/lua_parser.ml"
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
# 7039 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7043 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7048 "runtests/ocaml_lua/lua_parser.ml"
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
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7097 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7101 "runtests/ocaml_lua/lua_parser.ml"
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
# 7113 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7123 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7127 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 265 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_Bool(_1, false)
                 )
# 7134 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7141 "runtests/ocaml_lua/lua_parser.ml"
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
# 7208 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7218 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7222 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 154 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 7229 "runtests/ocaml_lua/lua_parser.ml"
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
# 7248 "runtests/ocaml_lua/lua_parser.ml"
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
