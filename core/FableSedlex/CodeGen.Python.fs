module Fable.Sedlex.CodeGen.Python

open Fable.Sedlex.PrettyDoc

open Fable.Sedlex.Compiler
open Fable.Sedlex.Compiler.Automata

let codegen_python (import_head: string) (cu: compiled_unit) =

    let mutable decision_funcs: Map<decision_tree, string> = Map.empty

    let mutable tbl_cnt = 0

    let new_tbl_name () =
        tbl_cnt <- tbl_cnt + 1
        $"_sedlex_DT_table_{tbl_cnt}"

    let mutable dt_cnt = 0

    let new_dt_name () =
        dt_cnt <- dt_cnt + 1
        $"_sedlex_decide_{dt_cnt}"

    let mutable rnd_cnt = 0

    let new_rnd_name () =
        rnd_cnt <- rnd_cnt + 1
        $"_sedlex_rnd_{rnd_cnt}"

    let mutable tables: Map<int array, string> = Map.empty

    let mutable toplevels: Doc list = []

    let mutable later_toplevels: Doc list = []

    let push_toplevel doc = toplevels <- doc :: empty :: toplevels


    (* forward decl *)
    let push_later_toplevel doc =
        later_toplevels <- doc :: empty :: later_toplevels

    let st_func_name i = $"_sedlex_st_{i}"

    let remember_table (table: int array) =
        match Map.tryFind table tables with
        | Some n -> n
        | None ->
            table
            |> Seq.map (string >> word)
            |> List.ofSeq
            |> seplist (word ", ")
            |> fun table_doc ->
                let n = new_tbl_name ()
                push_later_toplevel <| word n + word "=" + bracket table_doc
                tables <- Map.add table n tables
                n

    let rec _cg_decision_func tree : Doc =
        match tree with
        | Lte(i, yes, no) ->
            let yes_f = _cg_decision_func yes
            let no_f = _cg_decision_func no

            vsep
                [ word "if" + word "c" + word "<=" + word (string i) * word ":"
                  yes_f >>> 4
                  word "else:"
                  no_f >>> 4 ]
        | Return i -> word "return" + word (string i)
        | Table(offset, t) ->
            let tname = remember_table t

            word "return"
            + word tname * word "[" * word "c"
            + word "-"
            + pretty offset * word "]"
            + word "-"
            + pretty 1

    let cg_decision_func tree =
        match Map.tryFind tree decision_funcs with
        | Some name -> name
        | None ->
            let dtname = new_dt_name ()

            let define =
                vsep
                    [ word "def" + word dtname * parens (word "c: int") * word ":"
                      _cg_decision_func tree >>> 4 ]

            push_toplevel define
            decision_funcs <- Map.add tree dtname decision_funcs
            dtname

    let rec _cg_state_func (lang: lang) : Doc =
        match lang with
        | Lang_backtrace -> word "result = backtrack(lexerbuf)"
        | Lang_callst i -> word "result" + word "=" + word (st_func_name i) * parens (word "lexerbuf")
        | Lang_int i -> word "result" + word "=" + pretty i
        | Lang_mark(i, lang) -> vsep [ word <| $"mark(lexerbuf, {i})"; _cg_state_func lang ]
        | Lang_match_i(dt, cases, default_case) ->
            let mutable names = []

            for each in cases do
                let body = _cg_state_func each
                let name = new_rnd_name ()

                push_toplevel
                <| vsep
                    [ word "def" + word name * parens (word "lexerbuf: lexbuf") * word ":"
                      vsep [ word "result = -1"; body; word "return result" ] >>> 4 ]

                names <- name :: names

            let names = List.rev names
            let func_table = new_rnd_name ()

            push_later_toplevel
            <| word func_table
               + word "="
               + bracket (seplist (word ", ") <| List.map word names)

            let default_body = _cg_state_func default_case
            let decision_func = (cg_decision_func dt)
            let test = word decision_func * parens (word "public_next_int(lexerbuf)")

            vsep
                [ word "state_id" + word "=" + test
                  word "if" + word "state_id >= 0" * word ":"
                  vsep
                      [ word "result"
                        + word "="
                        + word $"{func_table}[state_id]" * parens (word "lexerbuf") ]
                  >>> 4
                  word "else:"
                  default_body >>> 4 ]

    let cg_state_func i lang =
        vsep
            [ word "def" + word (st_func_name i) * parens (word "lexerbuf: lexbuf") * word ":"
              vsep
                  [ word "result = -1" // not -1~MAXCODE could be fine
                    _cg_state_func lang
                    word "return result" ]
              >>> 4 ]
        |> fun define -> push_toplevel define

    let compile_lexer () =
        let lex_code, error_msg = cu.lex_code
        let error_msg = "\"" + error_msg.Replace("\"", "\\\"") + "\""
        let initial_state_fun = st_func_name 0

        let token_ids =
            Array.toList
            <| Array.map
                (function
                | Discard -> word "None"
                | Tokenize i -> pretty i)
                lex_code

        let construct_table =
            word "[" + seplist (word ", ") token_ids + word "]" + word " # token_ids"

        let table_name = new_rnd_name ()
        push_toplevel (word table_name + word "=" + construct_table)

        vsep
            [ empty
              word "@dataclasses.dataclass"
              word "class Token:"
              vsep
                  [ word "token_id: int"
                    word "lexeme : str"
                    word "line: int"
                    word "col: int"
                    word "span: int"
                    word "offset: int"
                    word "file: str" ]
              >>> 4
              empty
              word "_Token = typing.TypeVar(\"_Token\")"
              empty
              word "class TokenConstructor(typing_extensions.Protocol[_Token]):"
              vsep
                  [ word
                        "def __call__(self, token_id: int, lexeme: str, line: int, col: int, span: int, offset: int, file: str) -> _Token: ..." ]
              >>> 4
              empty
              word "def"
              + word ("lex")
                * parens (
                    word "lexerbuf: lexbuf"
                    + word ", "
                    + word "construct_token: TokenConstructor[_Token]=Token"
                )
                * word ":"
              vsep
                  [ word "start(lexerbuf)"
                    word "case_id" + word "=" + word initial_state_fun * parens (word "lexerbuf")
                    word "if case_id < 0:"
                    + word "raise"
                    + word "Exception" * parens (word error_msg)
                    word "token_id"
                    + word "="
                    + word table_name * word "[" * word "case_id" * word "]"
                    word "if token_id is not None:"
                    vsep
                        [ word "return"
                          + word "construct_token"
                            * parens (
                                seplist
                                    (word ", ")
                                    [ word "token_id"
                                      word "lexeme(lexerbuf)"
                                      word "lexerbuf.start_line"
                                      word "lexerbuf.pos - lexerbuf.curr_bol"
                                      word "lexerbuf.pos - lexerbuf.start_pos"
                                      word "lexerbuf.start_pos"
                                      word "lexerbuf.filename" ]
                            ) ]
                    >>> 4
                    word "return None" ]
              >>> 4
              word "def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):"
              vsep
                  [ word "while True:"
                    vsep
                        [ word "token = lex(buf, construct)"
                          word "if token is None: continue"
                          word "if is_eof(token): break"
                          word "yield token" ]
                    >>> 4 ]
              >>> 4 ]


    for kv in cu.states do
        cg_state_func kv.Key kv.Value

    for dt in cu.referenced_decision_trees do
        ignore (cg_decision_func dt)


    let middle_toplevels = compile_lexer ()

    vsep
    <| [ vsep
             [ word $"from {import_head}.sedlex import *"
               word "import typing"
               word "import typing_extensions"
               word "import dataclasses" ] ]
       @ toplevels
       @ [ middle_toplevels ]
       @ later_toplevels
