
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
  | MenhirState19
  | MenhirState11
  | MenhirState5
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 1 "simple_json_parser.mly"
  
open Simple_json_require;;
open Simple_json_lexer;;

# 36 "simple_json_parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_seplist_o__i__s__i__s_jsonpair_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_seplist_o__i__s__i__s_jsonpair_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 52 "simple_json_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Simple_json_lexer.I__S__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 63 "simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.STR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv88)
    | Simple_json_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 80 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "simple_json_parser.mly"
      (tbnf_token)
# 85 "simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 92 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 14 "simple_json_parser.mly"
      (tbnf_token)
# 97 "simple_json_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_seplist_o__i__s__i__s_jsonpair_p_)) = _menhir_stack in
        let _v : 'tv_json = 
# 77 "simple_json_parser.mly"
                                                           ( 
                     jsonDict(_2)
                 )
# 105 "simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv90)) : 'freshtv92)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 115 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv94)) : 'freshtv96)

and _menhir_goto_seplist_o__i__s__i__s_json_p_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_seplist_o__i__s__i__s_json_p_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 127 "simple_json_parser.ml"
    )) * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    ((match _tok with
    | Simple_json_lexer.I__P__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 137 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "simple_json_parser.mly"
      (tbnf_token)
# 142 "simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 149 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_ : (
# 11 "simple_json_parser.mly"
      (tbnf_token)
# 154 "simple_json_parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_seplist_o__i__s__i__s_json_p_)) = _menhir_stack in
        let _v : 'tv_json = 
# 74 "simple_json_parser.mly"
                                                       ( 
                     jsonList(_2)
                 )
# 162 "simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv78)) : 'freshtv80)
    | Simple_json_lexer.I__S__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 171 "simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.FLOAT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | Simple_json_lexer.INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | Simple_json_lexer.I_NULL_I_ _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | Simple_json_lexer.I__N__I_ _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | Simple_json_lexer.I__T__I_ _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | Simple_json_lexer.STR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 200 "simple_json_parser.ml"
        )) * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv84)) : 'freshtv86)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 208 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.I__G__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 220 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "simple_json_parser.mly"
      (tbnf_token)
# 225 "simple_json_parser.ml"
        )) = _v in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.FLOAT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | Simple_json_lexer.I_NULL_I_ _v ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv74)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 254 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv76)

and _menhir_goto_json : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_json -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 267 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 275 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_json) : 'tv_json) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : 'tv_seplist_o__i__s__i__s_json_p_)), _) = _menhir_stack in
        let _v : 'tv_seplist_o__i__s__i__s_json_p_ = 
# 47 "simple_json_parser.mly"
                                                                            ( 
                                              appendList(_1, _3)
                                          )
# 285 "simple_json_parser.ml"
         in
        (_menhir_goto_seplist_o__i__s__i__s_json_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv32)) : 'freshtv34)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_json) : 'tv_json) = _v in
        let _v : 'tv_seplist_o__i__s__i__s_json_p_ = 
# 44 "simple_json_parser.mly"
                                     ( 
                                              [_1]
                                          )
# 302 "simple_json_parser.ml"
         in
        (_menhir_goto_seplist_o__i__s__i__s_json_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv36)) : 'freshtv38)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 310 "simple_json_parser.ml"
        )) * (
# 9 "simple_json_parser.mly"
      (tbnf_token)
# 314 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 322 "simple_json_parser.ml"
        )) * (
# 9 "simple_json_parser.mly"
      (tbnf_token)
# 326 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_json) : 'tv_json) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 333 "simple_json_parser.ml"
        ))), _) = _menhir_stack in
        let _v : 'tv_jsonpair = 
# 41 "simple_json_parser.mly"
                             ( 
                         (unesc(getStr(_1)), _3)
                     )
# 340 "simple_json_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_jsonpair) = _v in
        (((match _menhir_s with
        | MenhirState19 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 352 "simple_json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_jsonpair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 360 "simple_json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_3 : 'tv_jsonpair) : 'tv_jsonpair) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : 'tv_seplist_o__i__s__i__s_jsonpair_p_)), _) = _menhir_stack in
            let _v : 'tv_seplist_o__i__s__i__s_jsonpair_p_ = 
# 53 "simple_json_parser.mly"
                                                                                        ( 
                                                  appendList(_1, _3)
                                              )
# 370 "simple_json_parser.ml"
             in
            (_menhir_goto_seplist_o__i__s__i__s_jsonpair_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv40)) : 'freshtv42)
        | MenhirState2 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_jsonpair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_jsonpair) : 'tv_jsonpair) = _v in
            let _v : 'tv_seplist_o__i__s__i__s_jsonpair_p_ = 
# 50 "simple_json_parser.mly"
                                             ( 
                                                  [_1]
                                              )
# 387 "simple_json_parser.ml"
             in
            (_menhir_goto_seplist_o__i__s__i__s_jsonpair_p_ _menhir_env _menhir_stack _menhir_s _v : 'freshtv44)) : 'freshtv46)
        | _ ->
            _menhir_fail ()) : 'freshtv48) : 'freshtv50)) : 'freshtv52)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_json) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_json) : 'tv_json) = _v in
        let _v : 'tv_start__y_ = 
# 38 "simple_json_parser.mly"
                 ( 
                          _1
                      )
# 406 "simple_json_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_start__y_) = _v in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        ((match _tok with
        | Simple_json_lexer.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : 'tv_start__y_)) = _menhir_stack in
            let _v : (
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 427 "simple_json_parser.ml"
            ) = 
# 19 "simple_json_parser.mly"
                      ( _1 )
# 431 "simple_json_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv57) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 439 "simple_json_parser.ml"
            )) = _v in
            (((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 447 "simple_json_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 455 "simple_json_parser.ml"
            )) : (
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 459 "simple_json_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv54)) : 'freshtv56)) : 'freshtv58) : 'freshtv60)) : 'freshtv62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_start__y_) = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv64)) : 'freshtv66)) : 'freshtv68) : 'freshtv70)) : 'freshtv72)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_seplist_o__i__s__i__s_jsonpair_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 480 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv20)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_seplist_o__i__s__i__s_json_p_) * (
# 8 "simple_json_parser.mly"
      (tbnf_token)
# 489 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv22)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 498 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv24)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 507 "simple_json_parser.ml"
        )) * (
# 9 "simple_json_parser.mly"
      (tbnf_token)
# 511 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv26)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 520 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        (_menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv28)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 532 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 542 "simple_json_parser.ml"
    )) : (
# 5 "simple_json_parser.mly"
      (tbnf_token)
# 546 "simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 65 "simple_json_parser.mly"
           ( 
                     jsonStr(unesc(getStr(_1)))
                 )
# 553 "simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv18)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 560 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.I__V__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 572 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState2 in
        let (_v : (
# 14 "simple_json_parser.mly"
      (tbnf_token)
# 578 "simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * (
# 13 "simple_json_parser.mly"
      (tbnf_token)
# 585 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 14 "simple_json_parser.mly"
      (tbnf_token)
# 591 "simple_json_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        let _v : 'tv_json = 
# 71 "simple_json_parser.mly"
                         ( 
                     jsonDict([])
                 )
# 599 "simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv14)) : 'freshtv16)
    | Simple_json_lexer.STR _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 612 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Simple_json_lexer.FLOAT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I_NULL_I_ _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I__N__I_ _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.I__P__I_ _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 632 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        let (_v : (
# 11 "simple_json_parser.mly"
      (tbnf_token)
# 638 "simple_json_parser.ml"
        )) = _v in
        let _menhir_env = _menhir_discard _menhir_env in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 10 "simple_json_parser.mly"
      (tbnf_token)
# 645 "simple_json_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_ : (
# 11 "simple_json_parser.mly"
      (tbnf_token)
# 651 "simple_json_parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        let _v : 'tv_json = 
# 68 "simple_json_parser.mly"
                         ( 
                     jsonList([])
                 )
# 659 "simple_json_parser.ml"
         in
        (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv10)) : 'freshtv12)
    | Simple_json_lexer.I__T__I_ _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | Simple_json_lexer.STR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "simple_json_parser.mly"
      (tbnf_token)
# 674 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 12 "simple_json_parser.mly"
      (tbnf_token)
# 684 "simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 62 "simple_json_parser.mly"
                 ( 
                     jsonNull
                 )
# 691 "simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv8)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "simple_json_parser.mly"
      (tbnf_token)
# 698 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 7 "simple_json_parser.mly"
      (tbnf_token)
# 708 "simple_json_parser.ml"
    )) : (
# 7 "simple_json_parser.mly"
      (tbnf_token)
# 712 "simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 56 "simple_json_parser.mly"
           ( 
                     jsonInt(parseInt(getStr(_1)))
                 )
# 719 "simple_json_parser.ml"
     in
    (_menhir_goto_json _menhir_env _menhir_stack _menhir_s _v : 'freshtv6)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "simple_json_parser.mly"
      (tbnf_token)
# 726 "simple_json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 6 "simple_json_parser.mly"
      (tbnf_token)
# 736 "simple_json_parser.ml"
    )) : (
# 6 "simple_json_parser.mly"
      (tbnf_token)
# 740 "simple_json_parser.ml"
    )) = _v in
    let _v : 'tv_json = 
# 59 "simple_json_parser.mly"
             ( 
                     jsonFlt(parseFlt(getStr(_1)))
                 )
# 747 "simple_json_parser.ml"
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
# 16 "simple_json_parser.mly"
       (Simple_json_require.json)
# 766 "simple_json_parser.ml"
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Simple_json_lexer.I_NULL_I_ _v ->
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
