module tbnf.Backends.PythonLark
open Fable.CodeGen
open Fable.Sedlex.Compiler
open Fable.Sedlex.CodeGen.Python
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Utils.NameMangling
open tbnf.Utils.DocBuilder
open tbnf.Exceptions
open tbnf.Backends.Common

let codegen (analyzer: Analyzer) 
            { variable_renamer = renamer;  lang = langName }
            (stmts: definition array) =
    
    let PythonPackage_Sedlex = "_tbnf.FableSedlex"
    let mutable importNames = []

    let export_Parser = "parser"
    let export_Grammar = "grammar"
    let export_names = Set.ofArray [|export_Parser; export_Grammar|]

    let abandoned_names = Set.ofArray [|
        "False"
        "None"
        "True"
        "and"
        "as"
        "assert"
        "async"
        "await"
        "break"
        "class"
        "continue"
        "def"
        "del"
        "elif"
        "else"
        "except"
        "finally"
        "for"
        "from"
        "global"
        "if"
        "import"
        "in"
        "is"
        "lambda"
        "nonlocal"
        "not"
        "or"
        "pass"
        "raise"
        "return"
        "try"
        "while"
        "with"
        "yield"
        "match"
        "case"
    |]


    let mutable symmap : Map<symbol, string> = Map.empty    
    
    let mutable toplevel_transformer : Doc list = []
    let mutable currentPos = analyzer.currentPos

    let mutable lexerMaps : Map<string, Automata.regexp> = Map.empty

    let mutable larkDeclsForNamedTerminals : list<string> = []

    let global_scope = [ for k in analyzer.Sigma.GlobalVariables -> k.Key, renamer k.Key ]

    (* valid python identifier segment *)
    let pythonIdentifierDescr =
            IdentifierDescriptor.Create(
                 (fun i c ->
                     let test = isLower c || isUnicode c || isUpper c || c = '_'
                     if i = 0 then test
                     else test || isDigit c),
                 (fun i c ->
                     if isDigit c then $"_{i * int c + 7}_"
                     else $"_{int c}_")
            ).WithNameEnv { usedNames = Set.ofList (List.map snd global_scope) }

    let larkLexerIdentifierDescr =
            IdentifierDescriptor.Create(
                 (fun i c ->
                     if i = 0 then isUpper c
                     else isUpper c || c = '_' || isDigit c),
                 (fun _ (c: char) ->
                     if isLower c then
                        string(System.Char.ToUpperInvariant c)
                     else "_" + string(maskChar (int 'A') (int 'Z') (int c)) + "_")
            ).WithNameEnv { usedNames = Set.ofArray [| "UNKNOWN" |] }

    let larkParserIdentifierDescr =
            IdentifierDescriptor.Create(
                 (fun i c ->
                     if i = 0 then isLower c
                     else isLower c || c = '_' || isDigit c),
                 (fun _ (c: char) ->
                     if isUpper c then
                        string(System.Char.ToLowerInvariant c)
                     else "_" + string(maskChar (int 'a') (int 'z') (int c)) + "_")
            ).WithNameEnv { usedNames = Set.ofArray [| "start" |] }

    
    let mangle = mangle (Set.union abandoned_names export_names)


    let push_transformer a =
       toplevel_transformer <- a :: empty :: toplevel_transformer

    let typeof_symbol =
        function
        | Term _ -> TConst_token
        | Nonterm s -> analyzer.Omega.[s]
        | _ -> invalidOp "macro not processed"

    let _name_of_literal_term (str_literal: string) =
        mangle larkLexerIdentifierDescr ("\"" + str_literal + "\"")

    let _name_of_named_term (name: string) =
        mangle larkLexerIdentifierDescr name

    let _name_of_nonterm (name: string) =
        mangle larkParserIdentifierDescr name

    let cg_symbol (x: symbol) =
        match Map.tryFind x symmap with
        | Some v -> v
        | None ->
        match x with
        | Term(define, is_literal) ->

            if is_literal then
                _name_of_literal_term define
            elif define = "EOF" then "EOF"
            else _name_of_named_term define
        | Nonterm "start" -> "start"
        | Nonterm s -> _name_of_nonterm s
        | _ -> invalidOp "macro not processed"
        |> fun valid_py_ident ->
        symmap <- Map.add x valid_py_ident symmap
        valid_py_ident

    let name_of_nonterm n = cg_symbol (Nonterm n)
    let name_of_named_term n = cg_symbol (Term(n, false))
    let name_of_literal_term s = cg_symbol (Term(s, true))

    let mkActionName ntname idx = sprintf "%s_%i" ntname idx

    let definePyFunc fname args body =
        vsep [
            word "def" + fname * parens(seplist (word ", ") args) * word ":"
            body >>> 4
        ]

    let TREE_NAME = "__tbnf_COMPONENTS"
    let rec cg_expr (actionName: string) (scope: list<string * string>) (expr: expr): block<Doc> =
        let inline (!) x = cg_expr actionName scope x
        cg {
            match expr.node with
            | node.EApp(f, args) ->
                let! f' = !f
                let! args' = cg { for arg in args do return! !arg}
                return f' * parens(seplist (word ", ") args')
            | node.EVar(var, _) ->
                match List.tryLookup var scope with
                | None -> return raise (UnboundVariable(var))
                | Some v -> return word v
            | node.EBool true -> return word "True"
            | node.EBool false -> return word "False"
            | node.EField(e, s) ->
                let! e' = !e
                return e' * word "." * word s
            | node.EInt i -> return word (sprintf "%d" i)
            | node.EFlt f -> return word (sprintf "%f" f)
            (* XXX: multiline string support? *)
            | node.EStr s -> return word (escapeString s)
            | node.EFun(args, body) ->
                let args = List.map fst args
                let scope' = [for arg in args -> arg, mangle pythonIdentifierDescr arg] @ scope
                let (returned, code) = runCG <| cg_expr actionName scope' body
                let func_name = mangle pythonIdentifierDescr "lambda"
                yield definePyFunc (word func_name) (List.map word args) <|
                    vsep [
                       vsep code
                       word "return" + returned
                    ]
                return word func_name
            | node.ELet(n, value, body) ->
                let! value' = !value
                let m_name = mangle pythonIdentifierDescr n
                let scope' = (n, m_name) :: scope
                yield word m_name + word "=" + value'
                return! cg_expr actionName scope' body
            | node.EList elts ->
                let! elts' = cg { for elt in elts do return! !elt }
                return bracket(seplist (word ", ") elts')
            | node.ESlot i ->
                return word (sprintf "%s[%d]" TREE_NAME (i - 1))
            | node.ETuple elts ->
                let! elts' = cg { for elt in elts do return! !elt }
                match elts' with
                | [] -> return parens(empty)
                | [elt] -> return parens(elt + word ",")
                | _ -> return parens(seplist (word ", ") elts')
        }

    let rec cg_prod (actionName) (prod: production) =
        seplist (word " ") (List.map (cg_symbol>>word) prod.symbols) + word "->" + word actionName

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        let ntname = cg_symbol (Nonterm lhs)
        let mutable idx = 0
        [ for (pos, production) in define do
            currentPos <- pos
            let actionName = mkActionName ntname idx
            yield cg_prod actionName production
            let returned, body = runCG <| cg_expr actionName global_scope production.action
            push_transformer <|
                definePyFunc
                    (word actionName) [word "self"; word TREE_NAME]
                    (vsep [vsep body; word "return" + returned] )
            idx <- idx + 1
        ]
        |> List.mapi (
            fun i e ->
               (if i = 0 then word ":" else word "|") + e)
        |> vsep
        |> align
        |> fun body ->
            word ntname + body

    let rec mk_lexer (def: lexerule) : Automata.regexp =
        let (!) = mk_lexer
        match def with
        | lexerule.LStr s -> pstring s
        | lexerule.LGroup e -> !e
        | lexerule.LNot e -> pcompl (!e)
        | lexerule.LNumber -> pinterval (int '0') (int '9')
        | lexerule.LPlus e -> pplus (!e)
        | lexerule.LStar e -> pstar (!e)
        | lexerule.LWildcard -> pany
        | lexerule.LRef s ->
            match Map.tryFind s lexerMaps with
            | Some v -> v
            | None -> raise <| UnboundLexer(s)
        | lexerule.LSeq xs ->
            List.map mk_lexer xs
            |> Array.ofList
            |> pseq
        | lexerule.LRange(l, r) -> pinterval l r
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr (hd::tl) -> List.fold (por) (!hd) (List.map mk_lexer tl)
        | lexerule.LOptional e -> popt (!e)
    
    let rec mk_lexer_debug (def: lexerule) : string =
        let (!) = mk_lexer_debug
        match def with
        | lexerule.LStr s -> $"pstring({escapeString(s)})"
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
        | lexerule.LRange(l, r) -> $"pinterval({l}, {r})"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr (hd::tl) -> List.fold (fun a b -> $"por({a}, {b})") (!hd) (List.map mk_lexer_debug tl)
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
            lexerMaps <- Map.add decl.lhs (mk_lexer decl.define) lexerMaps
            if Set.contains decl.lhs analyzer.ReferencedNamedTokens then
                let tname = name_of_named_term decl.lhs
                larkDeclsForNamedTerminals <- tname :: larkDeclsForNamedTerminals
            empty
        | definition.Defignore decl ->
            currentPos <- decl.pos
            empty (* generated later *)
            // vsep [
            //     for each in decl.ignoreList do
            //         yield word "%ignore" + word (name_of_named_term each)
            // ]
        | definition.Declvar decl ->
            importNames <- renamer decl.ident :: importNames
            empty
        | definition.Decltype _ -> empty
        | definition.Defmacro _ -> invalidOp "macro not processed"


    Array.map cg_stmt stmts
    |> List.ofArray
    |> vsep
    |> fun file_grammar ->

    let filename_lexer = sprintf "%s_lexer" langName
    let filename_require = sprintf "%s_require" langName
    let filename_python = sprintf "%s_parser" langName

    let var_tokenmaps = mangle pythonIdentifierDescr "tokenmaps"
    let classvar_LarkLexer = mangle pythonIdentifierDescr "Lexer"
    let classvar_SedlexLexer = mangle pythonIdentifierDescr "Sedlex"
    let classvar_LarkToken = mangle pythonIdentifierDescr "Token"
    let var_iseof = mangle pythonIdentifierDescr "is_eof"
    let var_construct_token = mangle pythonIdentifierDescr "construct_token"
    let var_lexall = mangle pythonIdentifierDescr "lexall"
    let var_from_ustring = mangle pythonIdentifierDescr "from_ustring"
    let classvar_LarkTransformer = mangle pythonIdentifierDescr "Transformer"
    let classvar_RBNFTransformer = mangle pythonIdentifierDescr "RBNFTransformer"
    let classvar_LarkBuilder = mangle pythonIdentifierDescr "Lark"


    let mutable lexerInfo = []
    let mutable tokenNames = []
    let mutable idx = 0
    let mutable token_id = 0
    let ReferencedNamedTokens = Array.ofSeq analyzer.ReferencedNamedTokens
    Array.sortInPlaceBy
        (fun k -> Array.findIndex ((=) k) analyzer.TokenFragments)
        ReferencedNamedTokens
#if DEBUG
    printfn "referenced named tokens: %A" ReferencedNamedTokens
#endif

    for k in ReferencedNamedTokens do
        let v = lexerMaps.[k]
        if Set.contains k analyzer.IgnoreSet then
#if DEBUG
            printfn "discarding %s" k
#endif
            lexerInfo <- (v, Discard) :: lexerInfo
        else
#if DEBUG
            printfn "tokenizing %s to %d" k token_id
#endif
            lexerInfo <- (v, Tokenize token_id) :: lexerInfo
            tokenNames <- name_of_named_term k :: tokenNames
            token_id <- token_id + 1
        idx <- idx + 1
#if DEBUG
    printfn "literal tokens %A" analyzer.LiteralTokens
#endif
    for k in Array.sort (Array.ofSeq analyzer.LiteralTokens) do
        let v = pstring(k)
        lexerInfo <- (v, Tokenize token_id) :: lexerInfo
        tokenNames <- name_of_literal_term k :: tokenNames
        token_id <- token_id + 1
        idx <- idx + 1
    
    lexerInfo <- (pany, Tokenize token_id) :: lexerInfo
    tokenNames <- "UNKNOWN" :: tokenNames
    let tokenNames = List.rev tokenNames

    let lexerInfo = (peof, Tokenize -1)  :: lexerInfo
                    |> List.rev
                    |> Array.ofList

    let file_grammar: Filename(* string *) * Doc =
        (langName + ".lark", vsep [ file_grammar; word "%declare" + seplist (word " ") (List.map word tokenNames)])

    let file_lexer =
            lexerInfo
            |> Fable.Sedlex.Compiler.build <| "the last branch must be a catch-all error case!"
            |> Fable.Sedlex.CodeGen.Python.codegen_python PythonPackage_Sedlex

    let file_lexer = (filename_lexer + ".py", file_lexer)

    let file_python = vsep [
        yield word "from __future__ import annotations"
        if not (List.isEmpty importNames) then
                let names = parens(seplist (word ",") (List.map word importNames))
                yield word ($"from .{filename_require} import") + names
                yield word ($"from .{filename_lexer} import lexall as {var_lexall}")
                yield word $"from lark.lexer import Lexer as {classvar_LarkLexer }"
                yield word $"from lark import Token as {classvar_LarkToken}"
                yield word $"from lark import Transformer as {classvar_LarkTransformer}"
                yield word $"from lark import Lark as {classvar_LarkBuilder}"
                yield word $"from {PythonPackage_Sedlex}.sedlex import from_ustring as {var_from_ustring}"

                ()
        yield empty
        yield word var_tokenmaps + word "=" + bracket(seplist (word ", ") (List.map (escapeString >> word) tokenNames))
        yield empty
        yield definePyFunc (word var_construct_token) [word "token_id"; word "lexeme"; word "line"; word "col"; word "span"; word "offset"; word "file"] <|
            vsep [
                word $"if token_id == -1: return {classvar_LarkToken}(\"EOF\", \"\")"
                word $"return {classvar_LarkToken}({var_tokenmaps}[token_id], lexeme, offset, line, col, None, None, span + offset)"
            ]
        yield empty
        yield definePyFunc (word var_iseof) [word "token"] <|
                (word "return token.type == \"EOF\"")
        yield word $"class {classvar_SedlexLexer}({classvar_LarkLexer}):"
        yield vsep [
            definePyFunc (word "__init__") [word "self"; word "lex_conf"] (word "pass")
            definePyFunc (word "lex") [word "self"; word "raw_string"] <|
                vsep [
                    word "lexbuf" + word "=" + word $"{var_from_ustring}(raw_string)"
                    (word $"return {var_lexall}(lexbuf, {var_construct_token}, {var_iseof})")
                ]
        ] >>> 4
        yield empty

        yield word $"class {classvar_RBNFTransformer}({classvar_LarkTransformer}):"
        yield vsep toplevel_transformer >>> 4
        yield word "pass" >>> 4

        yield empty

        yield word $"with (__import__('pathlib').Path(__file__).parent /'{langName}.lark').open(encoding='utf8') as __0123fx9:"
        yield word export_Grammar + word "= __0123fx9.read()" >>> 4
        yield empty
        yield word export_Parser + word "=" + word classvar_LarkBuilder * parens (
            seplist (word ", ") [
                word export_Grammar
                word "start='start'"
                word "parser='lalr'"
                word $"lexer={classvar_SedlexLexer}"
                word $"transformer={classvar_RBNFTransformer}()"
                word "keep_all_tokens=True"
            ]
        )
    ]
    let file_python = (filename_python + ".py", file_python)
    [|file_grammar; file_lexer; file_python|]
