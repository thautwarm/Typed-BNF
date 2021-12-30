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
            { renamer = renamer;  lang = langName }
            (stmts: definition array) =

    (* valid python identifier segment *)
    let pythonIdentifierDescr =
            emptyIdentifierDescriptor
                    .SupportDigit
                    .SupportLowerAscii
                    .SupportUpperAscii
                    .SupportUnderscore
                    .SupportNoPrefixDigits
                    .SupportUnicode

    let larkLexerIdentifierDescr =
            emptyIdentifierDescriptor
                .SupportUnderscore
                .SupportUpperAscii
                .SupportNoPrefixDigits
                .SupportDigit

    let larkParserIdentifierDescr =
            emptyIdentifierDescriptor
                .SupportUnderscore
                .SupportLowerAscii
                .SupportNoPrefixDigits
                .SupportDigit

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
    (* map an identifier to a fixed valid python identifier *)
    let idEnv = IdHelper.newIdEnv()
    let genId s = IdHelper.getId idEnv s


    let mutable toplevel_transformer : Doc list = []
    let mutable currentPos = analyzer.currentPos

    let mutable lexerMaps : Map<string, Automata.regexp> = Map.empty

    let mutable larkDeclsForNamedTerminals : list<string> = []

    let global_scope = [ for k in analyzer.Sigma.GlobalVariables -> k.Key, renamer k.Key ]

    let nameEnv = { usedNames = Set.ofList (List.map snd global_scope) }
    let mangle = mangle (Set.union abandoned_names export_names) nameEnv


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
        | Term def ->

            if def.is_literal then
                _name_of_literal_term def.define
            else _name_of_named_term def.define
        | Nonterm s -> _name_of_nonterm s
        | _ -> invalidOp "macro not processed"
        |> fun valid_py_ident ->
        symmap <- Map.add x valid_py_ident symmap
        valid_py_ident

    let name_of_nonterm n = cg_symbol (Nonterm n)
    let name_of_named_term n = cg_symbol (Term {| define = n; is_literal = false |})
    let name_of_literal_term s = cg_symbol (Term {| define = s; is_literal = true |})

    let mkActionName ntname idx = sprintf "%s_%i" ntname idx

    let definePyFunc fname args body =
        vsep [
            word "def" + fname * seplist (word ", ") args * word ":"
            body >>> 4
        ]

    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value)::tl when key' = key -> Some value
        | _::tl -> tryLookup key tl

    let TREE_NAME = "__tbnf_COMPONENTS"
    let rec cg_expr (actionName: string) (scope: list<string * string>) (expr: expr): block<Doc> =
        let (!) = cg_expr actionName scope
        cg {
            match expr.node with
            | node.EApp(f, args) ->
                let! f' = !f
                let! args' = cg { for arg in args do return! !arg}
                return f' * parens(seplist (word ", ") args')
            | node.EVar(var, _) ->
                match tryLookup var scope with
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
                yield vsep [
                   word "def" + word func_name * parens(seplist (word ",") (List.map word args)) * word ":";
                   vsep [
                       vsep code
                       word "return" + returned
                   ] >>> 4
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
                return bracket(seplist (word ",") elts')
            | node.ESlot i ->
                return word (sprintf "%s[%d]" TREE_NAME (i - 1))
            | node.ETuple elts ->
                let! elts' = cg { for elt in elts do return! !elt }
                match elts' with
                | [] -> return parens(empty)
                | [_] -> return parens(seplist (word ",") elts' + word ",")
                | _ -> return parens(seplist (word ",") elts')
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
        | lexerule.LGroup e -> !e
        | lexerule.LNot e -> pcompl (!e)
        | lexerule.LNumber -> pinterval (int '0') (int '9')
        | lexerule.LOneOrMore e -> pplus (!e)
        | lexerule.LZeroOrMore e -> pstar (!e)
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


    let rec cg_stmt stmt =
        match stmt with
        | definition.Defrule decl ->
            currentPos <- decl.pos
            cg_ruledef decl.lhs decl.define
        | definition.Deflexer decl ->
            currentPos <- decl.pos
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


    let file_grammar = Array.map cg_stmt stmts
                       |> List.ofArray
                       |> vsep
    let file_grammar: Filename(* string *) * Doc =
        (langName + ".lark", file_grammar)

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

    for k in ReferencedNamedTokens do
        let v = lexerMaps.[k]
        if Set.contains k analyzer.IgnoreSet then
            lexerInfo <- (idx, k, v, Discard) :: lexerInfo
        else
            lexerInfo <- (idx, k, v, Tokenize token_id) :: lexerInfo
            tokenNames <- k :: tokenNames
            token_id <- token_id + 1
        idx <- idx + 1
    let lexerInfo = Array.ofList lexerInfo
    let tokenNames = List.map (name_of_named_term >> escapeString >> word) tokenNames

    let file_lexer =
            lexerInfo
            |> Array.map (fun (_, _, k, d) -> k, d)
            |> Fable.Sedlex.Compiler.build <| "the last branch must be a catch-all error case!"
            |> Fable.Sedlex.CodeGen.Python.codegen_python

    let file_lexer = (filename_lexer, file_lexer)

    let file_python = vsep [
        yield word "from __future__ import annotations"
        if List.isEmpty importNames then
                let names = parens(seplist (word ",") (List.map word importNames))
                yield word ($"from .{filename_require} import") + names
                yield word ($"from .{filename_lexer} import lexall as {var_lexall}")
                yield word $"from lark.lexer import Lexer as {classvar_LarkLexer }"
                yield word $"from lark import Token as {classvar_LarkToken}"
                yield word $"from lark import Transformer as {classvar_LarkTransformer}"
                yield word $"from lark import Lark as {classvar_LarkBuilder}"

                ()
        yield empty
        yield word var_tokenmaps + word "=" + bracket(seplist (word ", ") (tokenNames))
        yield empty
        yield definePyFunc (word var_construct_token) [word "token_id"; word "lexeme"; word "line"; word "col"; word "span"; word "offset"; word "file"] <|
            vsep [
                word $"if token_id == -1: return {classvar_LarkToken}(\"<EOF>\", \"\")"
                word $"return {classvar_LarkToken}({var_tokenmaps}[token_id], lexeme, offset, line, col, None, None, span + offset)"
            ]
        yield empty
        yield definePyFunc (word var_iseof) [word "token"] (word "return token.type == \"<EOF>\"")
        yield word $"class {classvar_SedlexLexer}({classvar_LarkLexer}):"
        yield vsep [
            definePyFunc (word "lex") [word "self"; word "raw_string"] <|
                (word $"return {var_lexall}(raw_string, {var_construct_token}, {var_iseof})") >>> 4
        ] >>> 4
        yield empty

        yield word $"class {classvar_RBNFTransformer}({classvar_LarkTransformer}):"
        yield vsep toplevel_transformer >>> 4
        yield word "pass" >>> 4

        yield empty

        yield word "with __import__('pathlib').Path(__file__).parent.open(encoding='utf8') as __0123fx9:"
        yield word export_Grammar + word "= __0123fx9.read()"
        yield empty
        yield word export_Parser + word "=" + word classvar_LarkBuilder * parens (
            seplist (word ", ") [
                word export_Grammar
                word "start = 'start'"
                word "parser = 'lalr'"
                word $"lexer = {classvar_SedlexLexer}"
                word $"transformer={classvar_RBNFTransformer}()"
            ]
        )
    ]
    let file_python = (filename_python, file_python)
    [|file_grammar; file_lexer; file_python|]
