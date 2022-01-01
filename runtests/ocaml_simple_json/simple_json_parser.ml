
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = Simple_json_lexer.token
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState21
  | MenhirState13
  | MenhirState5
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 1 "runtests/ocaml_simple_json/simple_json_parser.mly"
  
open Simple_json_require;;
open Simple_json_lexer;;
open Simple_json_construct;;

# 37 "runtests/ocaml_simple_json/simple_json_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_seplist_n__i__s__i__s_jsonpair_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_seplist_n__i__s__i__s_jsonpair_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 53 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Simple_json_lexer.I__S__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 64 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv92)
    | Simple_json_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 81 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 86 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 93 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 17 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 98 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_seplist_n__i__s__i__s_jsonpair_p_)) = _menhir_stack in
        let _v : 'tv_json = 
# 74 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                                           ( 
                     mk_JDict(_2)
                 )
# 106 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv94)) : 'freshtv96)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 116 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv98)) : 'freshtv100)

and _menhir_goto_seplist_n__i__s__i__s_json_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_seplist_n__i__s__i__s_json_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv89 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 128 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Simple_json_lexer.I__P__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 138 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 143 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 150 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 12 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 155 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_seplist_n__i__s__i__s_json_p_)) = _menhir_stack in
        let _v : 'tv_json = 
# 71 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                                       ( 
                     mk_JList(_2)
                 )
# 163 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv82)) : 'freshtv84)
    | Simple_json_lexer.I__S__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 172 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.FLOAT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.INT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.I_FALSE_I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.I_NULL_I_ _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.I_TRUE_I_ _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.I__N__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.I__T__I_ _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Simple_json_lexer.STR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv86)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 205 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv88)) : 'freshtv90)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 213 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 225 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 230 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.FLOAT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.INT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I_FALSE_I_ _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I_NULL_I_ _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I_TRUE_I_ _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I__N__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I__T__I_ _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.STR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 263 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv80)

and _menhir_goto_json : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_json -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 276 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 284 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_json) : 'tv_json) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_seplist_n__i__s__i__s_json_p_)), _) = _menhir_stack in
        let _v : 'tv_seplist_n__i__s__i__s_json_p_ = 
# 38 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                                                            ( 
                                              appendList(_1, _3)
                                          )
# 294 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_seplist_n__i__s__i__s_json_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv36)) : 'freshtv38)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_json) : 'tv_json) = _v in
        let _v : 'tv_seplist_n__i__s__i__s_json_p_ = 
# 35 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                     ( 
                                              [_1]
                                          )
# 311 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_seplist_n__i__s__i__s_json_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)) : 'freshtv42)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 319 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * (
# 10 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 323 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 331 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * (
# 10 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 335 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_json) : 'tv_json) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 342 "runtests/ocaml_simple_json/simple_json_parser.ml"
        ))), _) = _menhir_stack in
        let _v : 'tv_jsonpair = 
# 32 "runtests/ocaml_simple_json/simple_json_parser.mly"
                             ( 
                         mk_JsonPair(unesc(getStr(_1)), _3)
                     )
# 349 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_jsonpair) = _v in
        (((match _menhir_s with
        | MenhirState21 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 361 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_jsonpair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 369 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_3 : 'tv_jsonpair) : 'tv_jsonpair) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_seplist_n__i__s__i__s_jsonpair_p_)), _) = _menhir_stack in
            let _v : 'tv_seplist_n__i__s__i__s_jsonpair_p_ = 
# 44 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                                                                        ( 
                                                  appendList(_1, _3)
                                              )
# 379 "runtests/ocaml_simple_json/simple_json_parser.ml"
             in
            (_menhir_goto_seplist_n__i__s__i__s_jsonpair_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv44)) : 'freshtv46)
        | MenhirState2 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_jsonpair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_jsonpair) : 'tv_jsonpair) = _v in
            let _v : 'tv_seplist_n__i__s__i__s_jsonpair_p_ = 
# 41 "runtests/ocaml_simple_json/simple_json_parser.mly"
                                             ( 
                                                  [_1]
                                              )
# 396 "runtests/ocaml_simple_json/simple_json_parser.ml"
             in
            (_menhir_goto_seplist_n__i__s__i__s_jsonpair_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv48)) : 'freshtv50)
        | _ ->
            _menhir_fail ()) : 'freshtv52) : 'freshtv54)) : 'freshtv56)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_json) : 'tv_json) = _v in
        let _v : 'tv_start__y_ = 
# 29 "runtests/ocaml_simple_json/simple_json_parser.mly"
                 ( 
                          _1
                      )
# 415 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 436 "runtests/ocaml_simple_json/simple_json_parser.ml"
            ) = 
# 22 "runtests/ocaml_simple_json/simple_json_parser.mly"
                      ( _1 )
# 440 "runtests/ocaml_simple_json/simple_json_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv61) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 448 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 456 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 464 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) : (
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 468 "runtests/ocaml_simple_json/simple_json_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv58)) : 'freshtv60)) : 'freshtv62) : 'freshtv64)) : 'freshtv66)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv68)) : 'freshtv70)) : 'freshtv72) : 'freshtv74)) : 'freshtv76)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_seplist_n__i__s__i__s_jsonpair_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 489 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv24)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_seplist_n__i__s__i__s_json_p_) * (
# 9 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 498 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv26)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 507 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv28)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 516 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) * (
# 10 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 520 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv30)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 529 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv32)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv34)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 541 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 551 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) : (
# 6 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 555 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 56 "runtests/ocaml_simple_json/simple_json_parser.mly"
           ( 
                     mk_JStr(unesc(getStr(_1)))
                 )
# 562 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv22)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 569 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 581 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState2 in
        let (_v : (
# 17 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 587 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 16 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 594 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 17 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 600 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        let _v : 'tv_json = 
# 62 "runtests/ocaml_simple_json/simple_json_parser.mly"
                         ( 
                     mk_JDict([])
                 )
# 608 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv18)) : 'freshtv20)
    | Simple_json_lexer.STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 621 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.INT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I_FALSE_I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I_NULL_I_ _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I_TRUE_I_ _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I__N__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I__P__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 645 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        let (_v : (
# 12 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 651 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * (
# 11 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 658 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 12 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 664 "runtests/ocaml_simple_json/simple_json_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        let _v : 'tv_json = 
# 59 "runtests/ocaml_simple_json/simple_json_parser.mly"
                         ( 
                     mk_JList([])
                 )
# 672 "runtests/ocaml_simple_json/simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv14)) : 'freshtv16)
    | Simple_json_lexer.I__T__I_ _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.STR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 687 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 15 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 697 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 65 "runtests/ocaml_simple_json/simple_json_parser.mly"
                 ( 
                     mk_JBool(true)
                 )
# 704 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv12)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 711 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 14 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 721 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 53 "runtests/ocaml_simple_json/simple_json_parser.mly"
                 ( 
                     mk_JNull()
                 )
# 728 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv10)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 735 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 13 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 745 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 68 "runtests/ocaml_simple_json/simple_json_parser.mly"
                  ( 
                     mk_JBool(false)
                 )
# 752 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv8)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 759 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 8 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 769 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) : (
# 8 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 773 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 47 "runtests/ocaml_simple_json/simple_json_parser.mly"
           ( 
                     mk_JInt(parseInt(getStr(_1)))
                 )
# 780 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 787 "runtests/ocaml_simple_json/simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 7 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 797 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) : (
# 7 "runtests/ocaml_simple_json/simple_json_parser.mly"
      (tbnf_token)
# 801 "runtests/ocaml_simple_json/simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 50 "runtests/ocaml_simple_json/simple_json_parser.mly"
             ( 
                     mk_JFlt(parseFlt(getStr(_1)))
                 )
# 808 "runtests/ocaml_simple_json/simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv4)

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
# 19 "runtests/ocaml_simple_json/simple_json_parser.mly"
       (Simple_json_construct.json)
# 827 "runtests/ocaml_simple_json/simple_json_parser.ml"
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
    | Simple_json_lexer.FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.INT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I_FALSE_I_ _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I_NULL_I_ _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I_TRUE_I_ _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I__N__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I__T__I_ _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.STR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))
