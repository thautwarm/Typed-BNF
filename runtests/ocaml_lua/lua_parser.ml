
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
# 359 "runtests/ocaml_lua/lua_parser.mly"
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
# 353 "runtests/ocaml_lua/lua_parser.mly"
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
# 386 "runtests/ocaml_lua/lua_parser.mly"
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
# 383 "runtests/ocaml_lua/lua_parser.mly"
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
# 356 "runtests/ocaml_lua/lua_parser.mly"
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
# 350 "runtests/ocaml_lua/lua_parser.mly"
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
# 347 "runtests/ocaml_lua/lua_parser.mly"
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
# 290 "runtests/ocaml_lua/lua_parser.mly"
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
# 299 "runtests/ocaml_lua/lua_parser.mly"
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
# 392 "runtests/ocaml_lua/lua_parser.mly"
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
# 389 "runtests/ocaml_lua/lua_parser.mly"
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
# 395 "runtests/ocaml_lua/lua_parser.mly"
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
# 422 "runtests/ocaml_lua/lua_parser.mly"
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
# 401 "runtests/ocaml_lua/lua_parser.mly"
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
# 410 "runtests/ocaml_lua/lua_parser.mly"
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
# 398 "runtests/ocaml_lua/lua_parser.mly"
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
# 404 "runtests/ocaml_lua/lua_parser.mly"
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
# 425 "runtests/ocaml_lua/lua_parser.mly"
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
# 446 "runtests/ocaml_lua/lua_parser.mly"
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
# 419 "runtests/ocaml_lua/lua_parser.mly"
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
# 437 "runtests/ocaml_lua/lua_parser.mly"
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
# 431 "runtests/ocaml_lua/lua_parser.mly"
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
# 434 "runtests/ocaml_lua/lua_parser.mly"
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
# 413 "runtests/ocaml_lua/lua_parser.mly"
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
# 428 "runtests/ocaml_lua/lua_parser.mly"
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
# 440 "runtests/ocaml_lua/lua_parser.mly"
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
# 443 "runtests/ocaml_lua/lua_parser.mly"
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
# 416 "runtests/ocaml_lua/lua_parser.mly"
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
# 407 "runtests/ocaml_lua/lua_parser.mly"
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
# 209 "runtests/ocaml_lua/lua_parser.mly"
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
                    let _:int = 0 in
                    _1
                )
# 1448 "runtests/ocaml_lua/lua_parser.ml"
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
# 1461 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv603 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1467 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_nempty_seplist_o__i__s__i__s_exp_p_ = 
# 293 "runtests/ocaml_lua/lua_parser.mly"
                                                                                       ( 
                                                    appendList(_1, _3)
                                                )
# 1475 "runtests/ocaml_lua/lua_parser.ml"
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
# 1487 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv611 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1497 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1502 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv609 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1509 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1514 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), _, (_3 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 254 "runtests/ocaml_lua/lua_parser.mly"
                                              ( 
                          mk_Index(_1, _3)
                      )
# 1522 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv610)) : 'freshtv612)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv613 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1532 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv614)) : 'freshtv616)
        | MenhirState28 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1541 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_DO_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv617 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1551 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1556 "runtests/ocaml_lua/lua_parser.ml"
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
# 1625 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv620)) : 'freshtv622)
        | MenhirState95 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv627 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1634 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv623 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1644 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1649 "runtests/ocaml_lua/lua_parser.ml"
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
# 1718 "runtests/ocaml_lua/lua_parser.ml"
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
# 1737 "runtests/ocaml_lua/lua_parser.ml"
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
# 1761 "runtests/ocaml_lua/lua_parser.ml"
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
# 1813 "runtests/ocaml_lua/lua_parser.ml"
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
# 1824 "runtests/ocaml_lua/lua_parser.ml"
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
# 1872 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv644)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1882 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv646)) : 'freshtv648)
        | MenhirState129 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv651 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1891 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv649 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1897 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((_menhir_stack, _), _, (_2 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_range_tail = 
# 193 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                           some(_2)
                       )
# 1905 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_range_tail _menhir_env _menhir_stack _v : 'freshtv650)) : 'freshtv652)
        | MenhirState141 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv657 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1913 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I_THEN_I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv653 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1923 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 1928 "runtests/ocaml_lua/lua_parser.ml"
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
# 1997 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv656)) : 'freshtv658)
        | MenhirState168 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv661 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2006 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2010 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv659 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2016 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2020 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2025 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)), _), _, (_4 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_stat = 
# 166 "runtests/ocaml_lua/lua_parser.mly"
                                        ( 
                     mk_RepeatStmt(_1, _2, _4)
                 )
# 2032 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv660)) : 'freshtv662)
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv669 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2040 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I_ _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv665 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2050 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2055 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv663 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2062 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2067 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2072 "runtests/ocaml_lua/lua_parser.ml"
                ))), _, (_2 : 'tv_exp)) = _menhir_stack in
                let _v : 'tv_prefixexp = 
# 245 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                          mk_NestedExp(_1, _2)
                      )
# 2079 "runtests/ocaml_lua/lua_parser.ml"
                 in
                (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv664)) : 'freshtv666)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv667 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2089 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv668)) : 'freshtv670)
        | MenhirState9 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv673 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2098 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2102 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv671 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2108 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2112 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2117 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_3 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 377 "runtests/ocaml_lua/lua_parser.mly"
                          ( 
                      mk_NameField(_1, _3)
                  )
# 2124 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv672)) : 'freshtv674)
        | MenhirState181 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv683 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2132 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            ((match _tok with
            | Lua_lexer.I__P__I__I _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv679 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2142 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_v : (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2147 "runtests/ocaml_lua/lua_parser.ml"
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
# 2158 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2162 "runtests/ocaml_lua/lua_parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2167 "runtests/ocaml_lua/lua_parser.ml"
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
# 2214 "runtests/ocaml_lua/lua_parser.ml"
                    )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2218 "runtests/ocaml_lua/lua_parser.ml"
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
# 2229 "runtests/ocaml_lua/lua_parser.ml"
                )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv682)) : 'freshtv684)
        | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv687 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2238 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2242 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2246 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv685 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2252 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2256 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2260 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (_1 : (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2265 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _), _, (_5 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 374 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                      mk_IndexField(_1, _2, _5)
                  )
# 2272 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_field _menhir_env _menhir_stack _menhir_s _v : 'freshtv686)) : 'freshtv688)
        | MenhirState7 | MenhirState191 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv691 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv689 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_field = 
# 380 "runtests/ocaml_lua/lua_parser.mly"
            ( 
                      mk_ElementField(_1)
                  )
# 2286 "runtests/ocaml_lua/lua_parser.ml"
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
# 2305 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_o__i__h__i__p_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv519 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2312 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
    let (_ : 'tv_opt_o__i__h__i__p_) = _v in
    let ((_menhir_stack, (_1 : (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2318 "runtests/ocaml_lua/lua_parser.ml"
    ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
    let _v : 'tv_retstat = 
# 118 "runtests/ocaml_lua/lua_parser.mly"
                                                                      ( 
                        mk_ReturnStmt(_1, _2)
                    )
# 2325 "runtests/ocaml_lua/lua_parser.ml"
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
# 2341 "runtests/ocaml_lua/lua_parser.ml"
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
# 218 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                           mkOperand(_1)
                       )
# 2360 "runtests/ocaml_lua/lua_parser.ml"
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
# 212 "runtests/ocaml_lua/lua_parser.mly"
                                 ( 
                       appendList(appendList(_1, _2), _3)
                   )
# 2382 "runtests/ocaml_lua/lua_parser.ml"
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
# 215 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                       [_1]
                   )
# 2399 "runtests/ocaml_lua/lua_parser.ml"
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
# 2412 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2416 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I_END_I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv493 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2426 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2430 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2435 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv491 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2442 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2446 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) * 'tv_opt_o_else_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2451 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2456 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)), _, (_5 : 'tv_list_o_elseif_p_)), (_6 : 'tv_opt_o_else_p_)) = _menhir_stack in
        let _v : 'tv_stat = 
# 169 "runtests/ocaml_lua/lua_parser.mly"
                                                                           ( 
                     mk_IfStmt(_1, _2, _4, _5, _6)
                 )
# 2463 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv492)) : 'freshtv494)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv495 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2473 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2477 "runtests/ocaml_lua/lua_parser.ml"
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
# 2501 "runtests/ocaml_lua/lua_parser.ml"
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
# 2524 "runtests/ocaml_lua/lua_parser.ml"
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
# 2535 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2539 "runtests/ocaml_lua/lua_parser.ml"
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
# 2550 "runtests/ocaml_lua/lua_parser.ml"
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
# 2620 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv476)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv477 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2630 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2634 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * _menhir_state * 'tv_list_o_elseif_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv478)) : 'freshtv480)) : 'freshtv482) : 'freshtv484)) : 'freshtv486)

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2642 "runtests/ocaml_lua/lua_parser.ml"
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
# 302 "runtests/ocaml_lua/lua_parser.mly"
                                                                                    ( 
                                             _1
                                         )
# 2699 "runtests/ocaml_lua/lua_parser.ml"
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
# 2712 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2722 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2727 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv449 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2734 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_ : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2739 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2744 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_seplist_o__i__s__i__s_exp_p_)) = _menhir_stack in
            let _v : 'tv_args = 
# 305 "runtests/ocaml_lua/lua_parser.mly"
                                                      ( 
                     mk_PositionalArgs(_1, _2)
                 )
# 2751 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv450)) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2761 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_seplist_o__i__s__i__s_exp_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv454)) : 'freshtv456)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2770 "runtests/ocaml_lua/lua_parser.ml"
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
# 2781 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
            let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2789 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2793 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _v : 'tv_opt_o__i__h__i__p_ = 
# 112 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                                   some(_1)
                               )
# 2800 "runtests/ocaml_lua/lua_parser.ml"
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
# 2811 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_o__i__h__i__p_ _menhir_env _menhir_stack _v : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv463 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2821 "runtests/ocaml_lua/lua_parser.ml"
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
# 2837 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2841 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv437 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2851 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2855 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2860 "runtests/ocaml_lua/lua_parser.ml"
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
# 2929 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2933 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv440)) : 'freshtv442)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv447 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2942 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2946 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2950 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I__P__I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv443 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2960 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2964 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2968 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 2973 "runtests/ocaml_lua/lua_parser.ml"
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
# 3042 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3046 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3050 "runtests/ocaml_lua/lua_parser.ml"
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
# 320 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                                 some(_1)
                             )
# 3072 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv434)) : 'freshtv436)

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3079 "runtests/ocaml_lua/lua_parser.ml"
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
# 3091 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3096 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3103 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3108 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3112 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 365 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_DotName(_1, _3)
                     )
# 3120 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv428)) : 'freshtv430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state * 'tv_funcname) * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3130 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv432)

and _menhir_run161 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_funcname -> (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3138 "runtests/ocaml_lua/lua_parser.ml"
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
# 3150 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3155 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3162 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3167 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3171 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_funcname)), _) = _menhir_stack in
        let _v : 'tv_funcname = 
# 368 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                         mk_MethodName(_1, _3)
                     )
# 3179 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv422)) : 'freshtv424)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state * 'tv_funcname) * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3189 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv426)

and _menhir_goto_opt_assign_rhs : _menhir_env -> 'ttv_tail -> 'tv_opt_assign_rhs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv419 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3200 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let (_v : 'tv_opt_assign_rhs) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv417 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3207 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_opt_assign_rhs) : 'tv_opt_assign_rhs) = _v in
    let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)) = _menhir_stack in
    let _v : 'tv_stat = 
# 181 "runtests/ocaml_lua/lua_parser.mly"
                                                                            ( 
                     mk_Assignment(true, listMap(_2, mk_Var), _3)
                 )
# 3216 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv418)) : 'freshtv420)

and _menhir_run134 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3223 "runtests/ocaml_lua/lua_parser.ml"
) -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3227 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3235 "runtests/ocaml_lua/lua_parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3240 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3244 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 338 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                      ( 
                                                           appendList(_1, _3)
                                                       )
# 3252 "runtests/ocaml_lua/lua_parser.ml"
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
# 344 "runtests/ocaml_lua/lua_parser.mly"
                                                             ( 
                        params(_1, _2)
                    )
# 3270 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v : 'freshtv412)) : 'freshtv414)

and _menhir_run133 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ -> (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3277 "runtests/ocaml_lua/lua_parser.ml"
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
# 3293 "runtests/ocaml_lua/lua_parser.ml"
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
# 3306 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3314 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_exponent) : 'tv_exponent) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
        let _v : 'tv_exponent = 
# 236 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                         mk_Exponent(_1, _3)
                     )
# 3324 "runtests/ocaml_lua/lua_parser.ml"
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
# 233 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                         _1
                     )
# 3341 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv390)) : 'freshtv392)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3349 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3357 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 48 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3364 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 230 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Not(_1, _2)
                     )
# 3371 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv394)) : 'freshtv396)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3379 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3387 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3394 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 221 "runtests/ocaml_lua/lua_parser.mly"
                               ( 
                         mk_Len(_1, _2)
                     )
# 3401 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv398)) : 'freshtv400)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3409 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3417 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3424 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 224 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Neg(_1, _2)
                     )
# 3431 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv402)) : 'freshtv404)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3439 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exponent) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3447 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_exponent) : 'tv_exponent) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3454 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_unaryexp = 
# 227 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                         mk_Inv(_1, _2)
                     )
# 3461 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_unaryexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv406)) : 'freshtv408)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3470 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3480 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3484 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_args = 
# 311 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_StringArg(_1)
                 )
# 3491 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv384)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3498 "runtests/ocaml_lua/lua_parser.ml"
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
# 3556 "runtests/ocaml_lua/lua_parser.ml"
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
# 3569 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3579 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3584 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3591 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3596 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3601 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 160 "runtests/ocaml_lua/lua_parser.mly"
                              ( 
                     mk_DoStmt(_1, _2)
                 )
# 3608 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3618 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv274)) : 'freshtv276)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv283 * _menhir_state * (
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
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv279 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3649 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3653 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3657 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3661 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3666 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv277 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3673 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3677 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3681 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3685 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3690 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3695 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3699 "runtests/ocaml_lua/lua_parser.ml"
            ))), _), _, (_4 : 'tv_range)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 172 "runtests/ocaml_lua/lua_parser.mly"
                                                           ( 
                     mk_ForRangeStmt(_1, _2, _4, _6)
                 )
# 3706 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv278)) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv281 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3716 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3720 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3724 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3728 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv282)) : 'freshtv284)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv291 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3737 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3741 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3745 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv287 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3755 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3759 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3763 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3768 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv285 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3775 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3779 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3783 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3788 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3793 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_)), _), _, (_4 : 'tv_nempty_seplist_o__i__s__i__s_exp_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 175 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                                              ( 
                     mk_ForInStmt(_1, _2, _4, _6)
                 )
# 3800 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv289 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3810 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3814 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3818 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv290)) : 'freshtv292)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3827 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3831 "runtests/ocaml_lua/lua_parser.ml"
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
# 3847 "runtests/ocaml_lua/lua_parser.ml"
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
# 3859 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3863 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv307 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3869 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3873 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3878 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_elseif = 
# 199 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                       if_elseif(_1, _2, _4)
                   )
# 3885 "runtests/ocaml_lua/lua_parser.ml"
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
# 3907 "runtests/ocaml_lua/lua_parser.ml"
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
# 3924 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_nempty_list_o_elseif_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv302)) : 'freshtv304)
        | _ ->
            _menhir_fail ()) : 'freshtv306) : 'freshtv308)) : 'freshtv310)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3934 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3940 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3945 "runtests/ocaml_lua/lua_parser.ml"
        ))), _, (_2 : 'tv_block)) = _menhir_stack in
        let _v : 'tv_else__x_ = 
# 202 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                         if_else(_1, _2)
                     )
# 3952 "runtests/ocaml_lua/lua_parser.ml"
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
# 3968 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_else_p_ _menhir_env _menhir_stack _v : 'freshtv312)) : 'freshtv314)) : 'freshtv316) : 'freshtv318)) : 'freshtv320)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv327 * _menhir_state * (
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
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv323 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 3998 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4002 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4006 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4010 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4015 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv321 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4022 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4026 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4030 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4034 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4039 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let (((((((_menhir_stack, _menhir_s, (_1 : (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4044 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, _), _, (_3 : 'tv_funcname)), _), _, (_5 : 'tv_opt_o_parlist_p_)), _), _, (_7 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 178 "runtests/ocaml_lua/lua_parser.mly"
                                                                                           ( 
                     mk_ExprStmt(mk_FuncDef(_1, true, some(_3), _5, _7))
                 )
# 4051 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv322)) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv325 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4061 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4065 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4069 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4073 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv326)) : 'freshtv328)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4082 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_UNTIL_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4092 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4097 "runtests/ocaml_lua/lua_parser.ml"
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
# 4144 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv332)) : 'freshtv334)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv341 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4153 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4157 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv337 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4167 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4171 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4176 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4183 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4187 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4192 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4197 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_exp)), _), _, (_4 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_stat = 
# 163 "runtests/ocaml_lua/lua_parser.mly"
                                             ( 
                     mk_WhileStmt(_1, _2, _4)
                 )
# 4204 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv336)) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4214 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4218 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv340)) : 'freshtv342)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv355 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4227 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4231 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4235 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_END_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv351 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4245 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4249 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4253 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_v : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4258 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv349 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4265 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4269 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4273 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
            let (_ : (
# 39 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4278 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4283 "runtests/ocaml_lua/lua_parser.ml"
            ))), _, (_2 : 'tv_opt_o_funcname_p_)), _), _, (_4 : 'tv_opt_o_parlist_p_)), _), _, (_6 : 'tv_block)) = _menhir_stack in
            let _v : 'tv_functiondef = 
# 326 "runtests/ocaml_lua/lua_parser.mly"
                                                                                                ( 
                            mk_FuncDef(_1, false, _2, _4, _6)
                        )
# 4290 "runtests/ocaml_lua/lua_parser.ml"
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
# 284 "runtests/ocaml_lua/lua_parser.mly"
                   ( 
                     _1
                 )
# 4309 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv344)) : 'freshtv346)) : 'freshtv348) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv353 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4319 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4323 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4327 "runtests/ocaml_lua/lua_parser.ml"
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
# 4342 "runtests/ocaml_lua/lua_parser.ml"
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
# 4363 "runtests/ocaml_lua/lua_parser.ml"
            ) = 
# 69 "runtests/ocaml_lua/lua_parser.mly"
                      ( _1 )
# 4367 "runtests/ocaml_lua/lua_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4375 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4383 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4391 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 66 "runtests/ocaml_lua/lua_parser.mly"
       (Lua_construct.block)
# 4395 "runtests/ocaml_lua/lua_parser.ml"
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
# 296 "runtests/ocaml_lua/lua_parser.mly"
                                                        ( 
                                                                     []
                                                                 )
# 4415 "runtests/ocaml_lua/lua_parser.ml"
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
# 4427 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4431 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_args) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4439 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4443 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_args) : 'tv_args) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _), (_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4450 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prefixexp = 
# 251 "runtests/ocaml_lua/lua_parser.mly"
                                         ( 
                          mk_CallMethod(_1, _3, _4)
                      )
# 4457 "runtests/ocaml_lua/lua_parser.ml"
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
# 248 "runtests/ocaml_lua/lua_parser.mly"
                           ( 
                          mk_CallFunc(_1, _2)
                      )
# 4475 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_reduce81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_opt_o_parlist_p_ = 
# 323 "runtests/ocaml_lua/lua_parser.mly"
                    ( 
                                 none()
                             )
# 4488 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_opt_o_parlist_p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4495 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4505 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4509 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_parlist = 
# 341 "runtests/ocaml_lua/lua_parser.mly"
                         ( 
                        params([], some(_1))
                    )
# 4516 "runtests/ocaml_lua/lua_parser.ml"
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
# 4529 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4533 "runtests/ocaml_lua/lua_parser.ml"
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
# 4545 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4549 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_funcname) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4554 "runtests/ocaml_lua/lua_parser.ml"
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
# 4579 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4583 "runtests/ocaml_lua/lua_parser.ml"
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
# 314 "runtests/ocaml_lua/lua_parser.mly"
                             ( 
                                  some(_1)
                              )
# 4606 "runtests/ocaml_lua/lua_parser.ml"
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
# 4628 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Lua_lexer.I_IN_I_ _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4638 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) = Obj.magic _menhir_stack in
            let (_v : (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4643 "runtests/ocaml_lua/lua_parser.ml"
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
# 4692 "runtests/ocaml_lua/lua_parser.ml"
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
# 4708 "runtests/ocaml_lua/lua_parser.ml"
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
# 4719 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4724 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let _menhir_env = _menhir_discard _menhir_env in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv225 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4731 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_2 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4736 "runtests/ocaml_lua/lua_parser.ml"
                )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4740 "runtests/ocaml_lua/lua_parser.ml"
                )) = _v in
                let (_menhir_stack, _) = _menhir_stack in
                let _v : 'tv_varargs = 
# 329 "runtests/ocaml_lua/lua_parser.mly"
                                  ( 
                        some(_2)
                    )
# 4748 "runtests/ocaml_lua/lua_parser.ml"
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
# 4760 "runtests/ocaml_lua/lua_parser.ml"
                )) = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv230)) : 'freshtv232)
        | Lua_lexer.I__P__I_ _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
            let _v : 'tv_varargs = 
# 332 "runtests/ocaml_lua/lua_parser.mly"
           ( 
                        none()
                    )
# 4772 "runtests/ocaml_lua/lua_parser.ml"
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
# 4787 "runtests/ocaml_lua/lua_parser.ml"
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
# 4798 "runtests/ocaml_lua/lua_parser.ml"
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
# 4848 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_opt_assign_rhs _menhir_env _menhir_stack _v : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4858 "runtests/ocaml_lua/lua_parser.ml"
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
# 4880 "runtests/ocaml_lua/lua_parser.ml"
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
# 4891 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 4896 "runtests/ocaml_lua/lua_parser.ml"
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
# 4919 "runtests/ocaml_lua/lua_parser.ml"
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
# 4930 "runtests/ocaml_lua/lua_parser.ml"
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
# 4979 "runtests/ocaml_lua/lua_parser.ml"
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
# 5020 "runtests/ocaml_lua/lua_parser.ml"
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
# 5031 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5036 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5043 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5048 "runtests/ocaml_lua/lua_parser.ml"
            )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5052 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_prefixexp)), _, _) = _menhir_stack in
            let _v : 'tv_prefixexp = 
# 257 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                          mk_Attr(_1, _3)
                      )
# 5060 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 15 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5070 "runtests/ocaml_lua/lua_parser.ml"
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
# 239 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                         _1
                     )
# 5085 "runtests/ocaml_lua/lua_parser.ml"
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
# 5165 "runtests/ocaml_lua/lua_parser.ml"
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
# 5188 "runtests/ocaml_lua/lua_parser.ml"
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
# 5206 "runtests/ocaml_lua/lua_parser.ml"
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
# 5256 "runtests/ocaml_lua/lua_parser.ml"
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
# 5270 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5276 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_prefixexp = 
# 242 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          mk_Var(_1)
                      )
# 5283 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5290 "runtests/ocaml_lua/lua_parser.ml"
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
# 5302 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5307 "runtests/ocaml_lua/lua_parser.ml"
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
# 5356 "runtests/ocaml_lua/lua_parser.ml"
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
# 287 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableExpr(_1)
                 )
# 5378 "runtests/ocaml_lua/lua_parser.ml"
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
# 308 "runtests/ocaml_lua/lua_parser.mly"
                        ( 
                     mk_TableArgs(_1)
                 )
# 5395 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_args _menhir_env _menhir_stack _menhir_s _v : 'freshtv172)) : 'freshtv174)
    | _ ->
        _menhir_fail ()

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5404 "runtests/ocaml_lua/lua_parser.ml"
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
# 5449 "runtests/ocaml_lua/lua_parser.ml"
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
# 5463 "runtests/ocaml_lua/lua_parser.ml"
    )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Lua_lexer.I__O__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5473 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5478 "runtests/ocaml_lua/lua_parser.ml"
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
# 5501 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv164)) : 'freshtv166)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5509 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5519 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5523 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_funcname = 
# 371 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                         mk_VarName(_1)
                     )
# 5530 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_funcname _menhir_env _menhir_stack _menhir_s _v : 'freshtv160)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5537 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5543 "runtests/ocaml_lua/lua_parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 
# 335 "runtests/ocaml_lua/lua_parser.mly"
                                                  ( 
                                                           [_1]
                                                       )
# 5550 "runtests/ocaml_lua/lua_parser.ml"
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
# 260 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                          _1
                      )
# 5569 "runtests/ocaml_lua/lua_parser.ml"
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
# 5590 "runtests/ocaml_lua/lua_parser.ml"
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
# 5608 "runtests/ocaml_lua/lua_parser.ml"
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
# 5627 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 32 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5631 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5635 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv54)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5644 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv56)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5653 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) * (
# 54 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5657 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv58)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5666 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv60)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * (
# 37 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5674 "runtests/ocaml_lua/lua_parser.ml"
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
# 5687 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5691 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv66)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * (
# 38 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5700 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5709 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5713 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv70)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5722 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5726 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s_exp_p_) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5730 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv72)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5739 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_nempty_seplist_o__i__s__i__s__i_name_k__p_) * (
# 45 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5743 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv74)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5752 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp) * (
# 13 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5760 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv78)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * (
# 51 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5769 "runtests/ocaml_lua/lua_parser.ml"
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
# 5782 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5791 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv86)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv87 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5800 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5804 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5808 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_range) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5812 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5821 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5825 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5829 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv90)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5838 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv92)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5847 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 52 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5851 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 44 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5860 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv96)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv97 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5869 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5873 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5877 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5881 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv99 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5890 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5894 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_funcname) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5898 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv100)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5907 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5911 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv102)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5920 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv104)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5929 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv106)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5938 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_exp) * (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5942 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv108)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 20 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5951 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5955 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv110)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 31 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5964 "runtests/ocaml_lua/lua_parser.ml"
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
# 5978 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv116)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5987 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv118)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_prefixexp) * _menhir_state * (
# 33 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 5996 "runtests/ocaml_lua/lua_parser.ml"
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
# 6010 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv124)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6019 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv126)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv127 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6028 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6032 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_parlist_p_) * (
# 10 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6036 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv128)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6045 "runtests/ocaml_lua/lua_parser.ml"
        )) * _menhir_state * 'tv_opt_o_funcname_p_) * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6049 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv130)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6058 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv132)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 6 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6067 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv134)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 9 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6076 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv136)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 14 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6085 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv138)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6094 "runtests/ocaml_lua/lua_parser.ml"
        )) * (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6098 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv140)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6107 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv142)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6116 "runtests/ocaml_lua/lua_parser.ml"
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
# 6132 "runtests/ocaml_lua/lua_parser.ml"
     in
    _menhir_goto_allow_empty_o_nempty_list_o_stat_p__p_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6139 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6149 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 62 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6153 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 275 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_String(_1)
                 )
# 6160 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv50)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6167 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6177 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 63 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6181 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 272 "runtests/ocaml_lua/lua_parser.mly"
               ( 
                     mk_Num(_1)
                 )
# 6188 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv48)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6195 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6205 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 61 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6209 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 278 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_String(_1)
                 )
# 6216 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv46)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6223 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6233 "runtests/ocaml_lua/lua_parser.ml"
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
# 6270 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6280 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 17 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6284 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 281 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_Ellipse(_1)
                 )
# 6291 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv44)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6298 "runtests/ocaml_lua/lua_parser.ml"
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
# 6332 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        let (_v : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6338 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6345 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 58 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6351 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 56 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6356 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_tableconstructor = 
# 362 "runtests/ocaml_lua/lua_parser.mly"
                                       ( 
                                 mk_TableConstructor(_1, [])
                             )
# 6363 "runtests/ocaml_lua/lua_parser.ml"
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
# 6384 "runtests/ocaml_lua/lua_parser.ml"
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
# 6421 "runtests/ocaml_lua/lua_parser.ml"
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
# 6466 "runtests/ocaml_lua/lua_parser.ml"
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
# 6503 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6513 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 22 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6517 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 142 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_EmptyStmt(_1)
                 )
# 6524 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv38)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6531 "runtests/ocaml_lua/lua_parser.ml"
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
# 6543 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6548 "runtests/ocaml_lua/lua_parser.ml"
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
# 6559 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6563 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6568 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let _menhir_env = _menhir_discard _menhir_env in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6575 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6579 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6584 "runtests/ocaml_lua/lua_parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, _), (_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6589 "runtests/ocaml_lua/lua_parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stat = 
# 151 "runtests/ocaml_lua/lua_parser.mly"
                                    ( 
                     mk_LabelStmt(_2)
                 )
# 6596 "runtests/ocaml_lua/lua_parser.ml"
             in
            (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv28)) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 21 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6606 "runtests/ocaml_lua/lua_parser.ml"
            )) * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6610 "runtests/ocaml_lua/lua_parser.ml"
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
# 6621 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv36)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6629 "runtests/ocaml_lua/lua_parser.ml"
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
# 6674 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6684 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 53 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6688 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 269 "runtests/ocaml_lua/lua_parser.mly"
                 ( 
                     mk_Bool(_1, true)
                 )
# 6695 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv26)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6702 "runtests/ocaml_lua/lua_parser.ml"
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
# 6769 "runtests/ocaml_lua/lua_parser.ml"
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
# 6806 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6816 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 47 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6820 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 263 "runtests/ocaml_lua/lua_parser.mly"
                ( 
                     mk_Nil(_1)
                 )
# 6827 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv24)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6834 "runtests/ocaml_lua/lua_parser.ml"
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
# 6846 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        let (_v : (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6852 "runtests/ocaml_lua/lua_parser.ml"
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
# 6874 "runtests/ocaml_lua/lua_parser.ml"
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
# 6919 "runtests/ocaml_lua/lua_parser.ml"
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
# 6931 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6936 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6943 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_2 : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6948 "runtests/ocaml_lua/lua_parser.ml"
        )) : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6952 "runtests/ocaml_lua/lua_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6957 "runtests/ocaml_lua/lua_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_stat = 
# 157 "runtests/ocaml_lua/lua_parser.mly"
                      ( 
                     mk_GotoStmt(_1, _2)
                 )
# 6964 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 43 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6974 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 6982 "runtests/ocaml_lua/lua_parser.ml"
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
# 317 "runtests/ocaml_lua/lua_parser.mly"
                     ( 
                                  none()
                              )
# 7000 "runtests/ocaml_lua/lua_parser.ml"
         in
        (_menhir_goto_opt_o_funcname_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7011 "runtests/ocaml_lua/lua_parser.ml"
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
# 7023 "runtests/ocaml_lua/lua_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState100 in
        let (_v : (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7029 "runtests/ocaml_lua/lua_parser.ml"
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
# 7040 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7044 "runtests/ocaml_lua/lua_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 26 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7049 "runtests/ocaml_lua/lua_parser.ml"
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
# 7098 "runtests/ocaml_lua/lua_parser.ml"
            )) * _menhir_state * (
# 64 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7102 "runtests/ocaml_lua/lua_parser.ml"
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
# 7114 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7124 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 40 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7128 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_atom = 
# 266 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_Bool(_1, false)
                 )
# 7135 "runtests/ocaml_lua/lua_parser.ml"
     in
    (_menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7142 "runtests/ocaml_lua/lua_parser.ml"
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
# 7209 "runtests/ocaml_lua/lua_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7219 "runtests/ocaml_lua/lua_parser.ml"
    )) : (
# 35 "runtests/ocaml_lua/lua_parser.mly"
      (tbnf_token)
# 7223 "runtests/ocaml_lua/lua_parser.ml"
    )) = _v in
    let _v : 'tv_stat = 
# 154 "runtests/ocaml_lua/lua_parser.mly"
                  ( 
                     mk_BreakStmt(_1)
                 )
# 7230 "runtests/ocaml_lua/lua_parser.ml"
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
# 7249 "runtests/ocaml_lua/lua_parser.ml"
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
