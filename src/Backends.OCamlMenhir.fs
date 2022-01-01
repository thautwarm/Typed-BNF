module tbnf.Backends.OCamlMenhir

open Fable.CodeGen
open Fable.Sedlex.Compiler
open Fable.Sedlex.CodeGen.Python
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Exceptions
open tbnf.Backends.Common
open tbnf.Backends.Common.DocBuilder
open tbnf.Backends.Common.NameMangling


let codegen (analyzer: Analyzer) { variable_renamer = var_renamer; type_renamer = type_renamer;  lang = langName } (rts_file_string: string) (stmts: definition array) =

    let mutable importVarNames = []
    let mutable importTypeNames = []   

    let abandoned_names =
        Set.ofArray [| "and"
                       "as"
                       "assert"
                       "asr"
                       "begin"
                       "class"
                       "constraint"
                       "do"
                       "done"
                       "downto"
                       "else"
                       "end"
                       "exception"
                       "external"
                       "false"
                       "for"
                       "fun"
                       "function"
                       "functor"
                       "if"
                       "in"
                       "include"
                       "inherit"
                       "initializer"
                       "land"
                       "lazy"
                       "let"
                       "lor"
                       "lsl"
                       "lsr"
                       "lxor"
                       "match"
                       "method"
                       "mod"
                       "module"
                       "mutable"
                       "new"
                       "nonrec"
                       "object"
                       "of"
                       "open"
                       "or"
                       "private"
                       "rec"
                       "sig"
                       "struct"
                       "then"
                       "to"
                       "true"
                       "try"
                       "type"
                       "val"
                       "virtual"
                       "when"
                       "while"
                       "with" |]


    let mutable symmap: Map<symbol, string> = Map.empty

    let mutable toplevel_transformer: Doc list = []
    let mutable currentPos = analyzer.currentPos

    let mutable lexerMaps: list<string * Doc> = []

    let global_scope =
        [ for k in analyzer.Sigma.GlobalVariables -> k.Key, var_renamer k.Key ]

    (* valid ocaml identifier segment *)
    let ocamlVarIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    let test =
                        isLower c || isUnicode c || c = '_'
                    if i = 0 then
                        test
                    else
                        test || isDigit c),
                (fun i c ->
                    if isDigit c then
                        $"_X{i}_"
                    elif isUpper c then
                        string(System.Char.ToLowerInvariant c)
                    else
                        $"_{int c}_")
            )
            .WithNameEnv { usedNames = Set.ofList (List.map snd global_scope) }

    let sedlexIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    if i = 0 then
                        isUpper c
                    else
                        isUpper c || c = '_' || isDigit c),
                (fun i (c: char) ->
                    if isLower c then
                        string (System.Char.ToUpperInvariant c)
                    elif i = 0 then
                        string (maskChar (int 'A') (int 'Z') (int c)) + "_"
                    else
                        "_" + string (maskChar (int 'A') (int 'Z') (int c)) + "_")
            ).WithNameEnv { usedNames = Set.ofArray [| "EOF" |] }

    let menhirIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    if i = 0 then
                        isLower c
                    else
                        isLower c || c = '_' || isDigit c),
                (fun _ (c: char) ->
                    if isUpper c then
                        string (System.Char.ToLowerInvariant c)
                    else
                        "_"
                        + string (maskChar (int 'a') (int 'z') (int c))
                        + "_")
            )
            .WithNameEnv { usedNames = Set.ofArray [| "start" |] }


    let mangle = mangle abandoned_names

    let typeof_symbol =
        function
        | Term _ -> TConst_token
        | Nonterm s -> analyzer.Omega.[s]
        | _ -> invalidOp "macro not processed"

    let _name_of_literal_term (str_literal: string) =
        mangle sedlexIdentDescr ("\"" + str_literal + "\"")

    let _name_of_named_term (name: string) = mangle sedlexIdentDescr name

    let _name_of_nonterm (name: string) = mangle menhirIdentDescr name

    let cg_symbol (x: symbol) =
        match Map.tryFind x symmap with
        | Some v -> v
        | None ->
            match x with
            | Term (define, is_literal) ->

                if is_literal then
                    _name_of_literal_term define
                else
                    _name_of_named_term define
            | Nonterm s -> _name_of_nonterm s
            | _ -> invalidOp "macro not processed"
            |> fun valid_py_ident ->
                symmap <- Map.add x valid_py_ident symmap
                valid_py_ident

    let name_of_nonterm n = cg_symbol (Nonterm n)
    let name_of_named_term n = cg_symbol (Term(n, false))
    let name_of_literal_term s = cg_symbol (Term(s, true))

    let mkActionName ntname idx = sprintf "%s_%i" ntname idx

    let defineOCamlLetIn name value body =
        vsep [
            word "let" + name + word "=" + value + word "in"
            body
        ]
        
    let defineOCamlFunc anns body =
        parens(
        vsep [ word "fun"
                 + parens (seplist (word ", ") anns)
                 * word "->"
               body >>> 4 ])

    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value) :: tl when key' = key -> Some value
        | _ :: tl -> tryLookup key tl
    
    let rec _cg_type (t: monot) =
        match t with
        | monot.TConst n -> type_renamer n
        | monot.TVar a -> "'" + a
        | monot.TRef a -> raise <| UnsolvedTypeVariable
        | monot.TFun(args, r) ->
            args
            |> List.map (fun (_, b) -> _cg_type b)
            |> String.concat ", "
            |> fun it -> 
                "(" + it + ") -> " + _cg_type r
        
        | monot.TApp(TTuple, args) ->
            args
            |> List.map _cg_type 
            |> String.concat " * "
            |> fun it -> "(" + it + ")"
        | monot.TApp(f, args) ->
            args
            |> List.map _cg_type 
            |> String.concat ", "
            |> fun it -> "(" + it + ") " + _cg_type f

    let cg_type (t: monot) = _cg_type  (t.Prune())
    
    let rec cg_expr (scope: list<string * string>) (curr_expr: expr) : Doc =
        let inline (!) x = cg_expr scope x
        match curr_expr.node with
        | node.EApp (f, args) ->
            let f' = !f
            let args' = List.map (fun x -> cg_expr scope x) args
            f' * parens (seplist (word ", ") args')
        | node.EVar (var, _) ->
            match tryLookup var scope with
            | None -> raise (UnboundVariable(var))
            | Some v -> word v
        | node.EBool true -> word "true"
        | node.EBool false -> word "false"
        | node.EField (e, s) ->
            let e' = !e
            (e' + word ":" + word (cg_type curr_expr.t)) * word "." * word s
        | node.EInt i -> word (sprintf "%d" i)
        | node.EFlt f -> word (sprintf "%f" f)
        (* XXX: multiline string support? *)
        | node.EStr s -> word (escapeString s)
        | node.EFun (args, body) ->

            let scope' =
                [ for (arg, _) in args -> arg, mangle ocamlVarIdentDescr arg ]
                @ scope
            
            let code = cg_expr scope' body
            defineOCamlFunc (List.map (fun (a, b) -> word (a + ":" + cg_type b)) args) code
        | node.ELet (n, value, body) ->
            let value' = !value
            let m_name = mangle ocamlVarIdentDescr n
            let scope' = (n, m_name) :: scope
            defineOCamlLetIn (word m_name * word ":" * word (cg_type curr_expr.t)) value' (cg_expr scope' body)
        | node.EList elts ->
            bracket(seplist (word ";") (List.map (fun elt -> cg_expr scope elt) elts))
        | node.ESlot i -> word $"${i}"
        | node.ETuple elts ->
            parens(seplist (word ", ") (List.map (fun elt -> cg_expr scope elt) elts))

    let rec cg_prod (prod: production) =
        seplist (word " ") (List.map (cg_symbol >> word) prod.symbols)
        + word "{"
        + (vsep [
              empty
              cg_expr global_scope prod.action >>> 4
              word "}" 
           ] >>> 12)

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        let ntname = cg_symbol (Nonterm lhs)

        [ for (pos, production) in define do
              currentPos <- pos
              yield cg_prod production ]
        |> List.mapi (fun i e -> (if i = 0 then word ":" else word "|") + e)
        |> vsep
        |> align
        |> fun body -> word ntname + body

    let rec mk_lexer (def: lexerule) : string =
        let (!) = mk_lexer

        match def with
        | lexerule.LStr s -> escapeString s
        | lexerule.LGroup (LGroup e) 
        | lexerule.LGroup e ->  "(" + !e + ")"
        | lexerule.LNot e -> $"Compl({(!e)})" 
        | lexerule.LNumber -> "('0' .. '9')"
        | lexerule.LPlus e -> $"Plus({(!e)})"
        | lexerule.LStar e -> $"Star({(!e)})"
        | lexerule.LWildcard -> "any"
        | lexerule.LRef s ->
            match List.tryLookup s lexerMaps with
            | Some _ -> "rule_" + (name_of_named_term s)
            | None -> raise <| UnboundLexer(s)
        | lexerule.LSeq xs -> List.map mk_lexer xs |> Array.ofList |> String.concat ", "
        | lexerule.LRange (l, r) -> $"({l} .. {r})"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr xs -> List.map mk_lexer xs |> Array.ofList |> String.concat " | "
        | lexerule.LOptional e -> $"Opt({!e})"

    let rec mk_lexer_debug (def: lexerule) : string =
        let (!) = mk_lexer_debug

        match def with
        | lexerule.LStr s -> $"pstring({escapeString (s)})"
        | lexerule.LGroup e -> !e
        | lexerule.LNot e -> $"pnot({(!e)})"
        | lexerule.LNumber -> $"pnumber"
        | lexerule.LPlus e -> $"pplus({(!e)})"
        | lexerule.LStar e -> $"pstar({(!e)})"
        | lexerule.LWildcard -> "pany"
        | lexerule.LRef s -> s
        | lexerule.LSeq xs ->
            List.map mk_lexer_debug xs
            |> Seq.ofList
            |> String.concat ", "
            |> fun seq -> $"pseq([{seq}])"
        | lexerule.LRange (l, r) -> $"pinterval({l}, {r})"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr (hd :: tl) -> List.fold (fun a b -> $"por({a}, {b})") (!hd) (List.map mk_lexer_debug tl)
        | lexerule.LOptional e -> $"popt{(!e)}"


    let rec cg_stmt stmt =
        match stmt with
        | definition.Defrule decl ->
            currentPos <- decl.pos
            cg_ruledef decl.lhs decl.define
        | definition.Deflexer decl ->
            currentPos <- decl.pos
#if DEBUG
            printfn "%s = %s" decl.lhs (mk_lexer_debug decl.define)
#endif
            lexerMaps <- (decl.lhs, word (mk_lexer decl.define)) :: lexerMaps
            empty
        | definition.Defignore decl ->
            currentPos <- decl.pos
            empty (* generated later *)
        // vsep [
        //     for each in decl.ignoreList do
        //         yield word "%ignore" + word (name_of_named_term each)
        // ]
        | definition.Declvar decl ->
            importVarNames <- var_renamer decl.ident :: importVarNames
            empty
        | definition.Decltype decl ->
            importTypeNames <- type_renamer decl.ident :: importTypeNames
            empty
        | definition.Defmacro _ -> invalidOp "macro not processed"


    Array.map cg_stmt stmts
    |> List.ofArray
    |> vsep
    |> fun file_grammar ->

        (* _lexer.ml  and _parser.ml(y) is generated by tbnf *)
        let filename_lexer = sprintf "%s_lexer" langName
        let filename_parser = sprintf "%s_parser" langName
        
        (* _require.ml is provided by user *)
        let filename_require = sprintf "%s_require" langName
        let var_tokenizer = mangle ocamlVarIdentDescr "tokenizer"
        let var_lexbuf = mangle ocamlVarIdentDescr "lexbuf"

        let mutable tokenNames = []

        let ReferencedNamedTokens =
            Array.ofSeq analyzer.ReferencedNamedTokens

        Array.sortInPlaceBy (fun k -> Array.findIndex ((=) k) analyzer.TokenFragments) ReferencedNamedTokens
#if DEBUG
        printfn "referenced named tokens: %A" ReferencedNamedTokens
#endif
        
        let mutable lexical_rule_defs = []
        let mutable tokenizer_cases = []
        for (k, v) in lexerMaps do
            if Set.contains k analyzer.IgnoreSet then
#if DEBUG
                printfn "discarding %s" k
#endif
                let lexical_rule_name = "rule_" + name_of_named_term k
                let lexical_rule_def =
                    word "let" + word (lexical_rule_name) + word "=" +
                        bracket(word "%sedlex.regexp?" + v)
                lexical_rule_defs <- lexical_rule_def :: lexical_rule_defs

                let tokenizer_case =
                    word "|" + word lexical_rule_name + word $"-> {var_tokenizer} {var_lexbuf}" 
                tokenizer_cases <- tokenizer_case :: tokenizer_cases
            else
                let tokenName =  name_of_named_term k
                let lexical_rule_name = "rule_" + tokenName

                let lexical_rule_def =
                    word "let" + word (lexical_rule_name) + word "=" +
                        bracket(word "%sedlex.regexp?" + v)
                lexical_rule_defs <- lexical_rule_def :: lexical_rule_defs
                
                if Array.contains k ReferencedNamedTokens then
                    let tokenizer_case =
                        word "|" + word lexical_rule_name + word $"-> {tokenName} (mktoken {var_lexbuf})" 
                    
                    tokenizer_cases <- tokenizer_case :: tokenizer_cases
                    tokenNames <- tokenName :: tokenNames
#if DEBUG
        printfn "literal tokens %A" analyzer.LiteralTokens
#endif
        for k in Array.sort (Array.ofSeq analyzer.LiteralTokens) do
            let v = word (mk_lexer (LStr (k)))

            let tokenName = name_of_literal_term k
            let lexical_rule_name = "rule_" + tokenName
            let lexical_rule_def =
                word "let" + word (lexical_rule_name) + word "=" +
                    bracket(word "%sedlex.regexp?" + v)
            lexical_rule_defs <- lexical_rule_def :: lexical_rule_defs
            
            let tokenizer_case =
                word "|" + word lexical_rule_name + word $"-> {tokenName} (mktoken {var_lexbuf})" 
            
            tokenizer_cases <- tokenizer_case :: tokenizer_cases
            tokenNames <- tokenName :: tokenNames

        tokenizer_cases <-
            (word $"| _ -> _unknown_token {var_lexbuf}")
            :: (word "|" + word "eof ->" + word "EOF")
            :: tokenizer_cases

        let tokenNames = List.rev tokenNames
        let tokenizer_cases = List.rev tokenizer_cases
        
        let custom_token_t =  "tbnf_token"
        let file_lexer = filename_lexer + ".ml", vsep [
            word rts_file_string
            empty
            word $"type token ="
            vsep [
                for tkn in tokenNames do
                    yield word "|" + word tkn + word "of" + word custom_token_t
                yield word "| EOF"
            ]
            empty
            vsep lexical_rule_defs
            empty
            vsep [
                word "let rec" + word var_tokenizer + word var_lexbuf + word "="
                align <| indent 4 (vsep (
                    word $"match%%sedlex {var_lexbuf} with" :: tokenizer_cases
                ))
            ]
        ]

        match Map.tryFind "start" analyzer.Omega with
        | None -> raise <| UnboundNonterminal "start"
        | Some start_t ->
        let start_name = name_of_nonterm "start"
        let start_t = cg_type <| start_t.Prune()
        let file_grammar = filename_parser + ".mly", vsep [
            yield word "%{"
            yield word $"open {capitalized filename_require};;"
            yield word $"open {capitalized filename_lexer};;"
            yield word "%}"
            for tokenName in tokenNames do
                yield word $"%%token<tbnf_token> {tokenName}"
            yield word "%token EOF"
            yield word $"%%start <{start_t}> start"
            yield word "%%"
            yield empty
            yield word (sprintf "start : %s EOF { $1 }"  start_name)
            yield file_grammar
        ]
        [| file_grammar
           file_lexer |]
