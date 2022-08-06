module tbnf.Backends.JuliaFFF

open Fable.Sedlex.PrettyDoc
open Fable.Sedlex.Compiler
open Fable.Sedlex.CodeGen.Julia
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Utils
open tbnf.Exceptions
open tbnf.Backends.Common
open tbnf.Backends.Common.DocBuilder
open tbnf.Backends.Common.NameMangling


// https://github.com/thautwarm/frontend-for-free/blob/91862a8a2e99edf1b62f469feb8e6e4030b7cdcf/src/RBNF/Constructs.hs#L48
type FFFSpec =
    | FFFCTerm of string
    | FFFCNonTerm of string
    | FFFCSeq of list<FFFSpec>
    | FFFCAlt of list<FFFSpec>
    | FFFCOpt of FFFSpec
    | FFFCBind of string * FFFSpec


type FFFMLang =
    | FFFMTerm of string
    | FFFMApp of FFFMLang * list<FFFMLang>
    | FFFMSlot of int

let _name_of_literal_term (str_literal: string, is_lit: bool) =
    let c = if is_lit then "L" else "N"
    sprintf "%s %s" c str_literal

let name_of_nonterm n = n
let name_of_named_term n = _name_of_literal_term (n, false)
let name_of_literal_term s = _name_of_literal_term (s, true)
let name_of_term (n, b) = _name_of_literal_term (n, b)


let rec dumpFFFC (c: FFFSpec) =
    match c with
    | FFFCTerm (s) -> parens (word "CTerm" + word (escapeString s))
    | FFFCNonTerm s -> parens (word "CNonTerm" + word (escapeString s))
    | FFFCOpt c -> parens (word "COpt" + parens (dumpFFFC c))
    | FFFCBind (s, c) ->
        parens (
            word "CBind"
            + word (escapeString s)
            + parens (dumpFFFC c)
        )
    | FFFCSeq l ->
        parens (
            word "CSeq"
            + bracket (seplist (word ", ") (List.map dumpFFFC l))
        )
    | FFFCAlt l ->
        parens (
            word "CAlt"
            + bracket (seplist (word ", ") (List.map dumpFFFC l))
        )

let rec dumpFFFMLang (c: FFFMLang) =
    match c with
    | FFFMTerm s -> parens (word "MTerm" + word (escapeString s))
    | FFFMApp (c, l) ->
        parens (
            word "MApp"
            + dumpFFFMLang c
            + bracket (seplist (word ", ") (List.map dumpFFFMLang l))
        )
    | FFFMSlot i -> parens (word "MSlot" + pretty i)

type FFFProd = string * FFFSpec * option<FFFMLang>

let dumpFFFProd =
    fun (s, c, m) ->
        let maybe f =
            function
            | None -> word "Nothing"
            | Some arg -> word "Just" + f arg

        [ word (escapeString s)
          dumpFFFC c
          maybe (fun ml -> parens (dumpFFFMLang ml)) m ]
        |> seplist (word ",")
        |> parens

let dumpFFFGrammar (prods: FFFProd list) =
    prods
    |> List.map dumpFFFProd
    |> vsep
    |> indent 4
    |> bracket

let apply_typestr (t: string) (args: string list) =
    if List.isEmpty args then
        t
    else
        let uniontypes = String.concat ", " args
        $"{t}{{{uniontypes}}}"

let apply_str (t: string) (args: string list) =
    let args = String.concat ", " args
    $"{t}({args})"

let terminals (prods: FFFProd list) : string list =
    let productions = prods |> List.map (fun (s, c, m) -> c)

    let uniqueList xs =
        List.fold
            (fun acc x ->
                if List.contains x acc then
                    acc
                else
                    List.append acc [ x ])
            []
            xs

    let rec terminalsOf c =
        match c with
        | FFFCTerm (s) -> [ s ]
        | FFFCSeq xs -> List.collect terminalsOf xs
        | FFFCAlt xs -> List.collect terminalsOf xs
        | FFFCOpt c -> terminalsOf c
        | FFFCBind (s, c) -> terminalsOf c
        | FFFCNonTerm _ -> []

    uniqueList <| List.collect terminalsOf productions

let codegen (analyzer: Analyzer) (cg_options: CodeGenOptions) (langName: string) (stmts: definition array) =

    let rename_var = Option.defaultValue id cg_options.rename_var
    let rename_ctor = Option.defaultValue id cg_options.rename_ctor
    let rename_field = Option.defaultValue id cg_options.rename_field
    let rename_type = Option.defaultValue id cg_options.rename_type
    let rename_typevar x = $"_T_{x}"
    let rename_forwardref x = $"_FR_{x}" // FR = Forward Reference

    let export_Parser = "parser"
    let export_Grammar = "grammar"

    let export_names =
        Set.ofArray [| export_Parser
                       export_Grammar |]

    let name_requirement = "requirement"
    let name_fr_func = "forward_resolve"
    let name_fr_type = "ForwardResolvedField"
    let name_call_fff = "load_fff"

    let abandoned_names =
        Set.ofArray [| name_requirement
                       name_fr_func
                       name_fr_type
                       "perform_lex!"
                       "lexall"
                       "Union"
                       "begin"
                       "while"
                       "if"
                       "for"
                       "try"
                       "return"
                       "break"
                       "continue"
                       "function"
                       "macro"
                       "quote"
                       "let"
                       "local"
                       "global"
                       "const"
                       "do"
                       "struct"
                       "module"
                       "baremodule"
                       "using"
                       "import"
                       "export"
                       "end"
                       "else"
                       "elseif"
                       "catch"
                       "finally"
                       "true"
                       "false" |]

    let mutable semantic_actions: Doc list = [] // generated at the end of constructor file
    let mutable lexerMaps: Map<string, Automata.regexp> = Map.empty // generated in lexer file
    let mutable grammar: FFFProd list = [] // generated in parser file
    let mutable namesToRequire = [] // generated in constructor file


    let global_scope =
        [ for k in analyzer.Sigma.GlobalVariables ->
              if analyzer.Sigma.IsGlobalVariableConstructor k.Key then
                  k.Key, rename_ctor k.Key
              else
                  k.Key, rename_var k.Key ]

    (* valid python identifier segment *)
    let juliaIdentifierDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    let test = isLower c || isUnicode c || isUpper c || c = '_'

                    if i = 0 then
                        test
                    else
                        test || isDigit c),
                (fun i c ->
                    if isDigit c then
                        $"_{i * int c + 7}_"
                    else
                        $"_{int c}_")
            )
            .WithNameEnv { usedNames = Set.ofList (List.map snd global_scope) }

    let mangle = mangle (Set.union abandoned_names export_names)

    let push_semantic_actions a =
        semantic_actions <- a :: empty :: semantic_actions

    let typeof_symbol =
        function
        | Term _ -> TConst_token
        | Nonterm s -> analyzer.Omega.[s]
        | _ -> invalidOp "macro not processed"


    let _name_of_named_term (name: string) = name

    let _name_of_nonterm (name: string) = name

    let cg_symbol (x: symbol) : FFFSpec =
        match x with
        | Term (define, is_literal) -> FFFCTerm <| name_of_term (define, is_literal)
        | Nonterm (name) -> FFFCNonTerm <| _name_of_nonterm name
        | _ -> invalidOp "macro not processed"

    let mkActionName ntname idx = sprintf "%s_%i" ntname idx

    let defineJlFunc fname args body =
        vsep [ word "begin"
               word "function"
               + fname * parens (seplist (word ", ") args)
               body >>> 4
               word "end"
               word "end" ]

    let defineJlFuncNoExpr fname args body =
        vsep [ word "function"
               + fname * parens (seplist (word ", ") args)
               body >>> 4
               word "end" ]

    let TREE_NAME = "__tbnf_SLOTS"

    let rec cg_expr (actionName: string) (scope: list<string * string>) (expr: expr) : Doc =
        let inline (!) x = cg_expr actionName scope x

        analyzer.Sigma.WithExpr expr
        <| fun () ->
            match expr.node with
            | node.EApp (f, args) ->
                let f' = !f
                let args' = [ for arg in args -> !arg ]
                f' * parens (seplist (word ", ") args')
            | node.EVar (var, _) ->
                match List.tryLookup var scope with
                | None -> raise (UnboundVariable(var))
                | Some v -> word v
            | node.EBool true -> word "true"
            | node.EBool false -> word "false"
            | node.EField (e, s) ->
                let e' = !e
                e' * word "." * word (rename_field s)
            | node.EInt i -> word (sprintf "%d" i)
            | node.EFlt f -> word (sprintf "%f" f)
            (* XXX: multiline string support? *)
            | node.EStr s -> word (escapeString s)
            | node.EFun (args, body) ->
                let args = List.map fst args

                let scope' =
                    [ for arg in args -> arg, mangle juliaIdentifierDescr arg ]
                    @ scope

                let body = cg_expr actionName scope' body
                let func_name = mangle juliaIdentifierDescr "lambda"
                defineJlFunc (word func_name) (List.map word args) body
            | node.ELet (n, value, body) ->
                let value' = !value
                let m_name = mangle juliaIdentifierDescr n
                let scope' = (n, m_name) :: scope

                vsep [ word "let" + word m_name + word "=" + value'
                       cg_expr actionName scope' body >>> 4
                       word "end" ]
            | node.EList elts ->
                let elts' = [ for elt in elts -> !elt ]
                bracket (seplist (word ", ") elts')
            | node.ESlot i -> word (sprintf "%s[%d]" TREE_NAME (i - 1))
            | node.ETuple elts ->
                let elts' = [ for elt in elts -> !elt ]

                match elts' with
                | [] -> parens (empty)
                | [ elt ] -> parens (elt + word ",")
                | _ -> parens (seplist (word ", ") elts')

    let rec cg_prod (prod: production) = List.map cg_symbol prod.symbols

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        // let spec = cg_symbol (Nonterm lhs)
        let mutable idx = 0

        [ for (pos, production) in define do
              analyzer.Sigma.SetCurrentPos pos
              analyzer.Sigma.SetCurrentDefinitionBranch idx
              let actionName = mkActionName lhs idx
              let specs = cg_prod production

              let mlang =
                  FFFMApp(
                      FFFMTerm actionName,
                      [ for i = 1 to List.length specs do
                            yield FFFMSlot i ]
                  )

              let spec =
                  match specs with
                  | [ x ] -> x
                  | _ -> FFFCSeq specs

              let returned = cg_expr actionName global_scope production.action

              push_semantic_actions
              <| defineJlFunc
                  (word actionName)
                  [ for i = 1 to List.length specs do
                        yield word <| sprintf "%s_%d" TREE_NAME i ]
                  returned

              idx <- idx + 1
              yield (lhs, spec, Some mlang) ]

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
        | lexerule.LSeq xs -> List.map mk_lexer xs |> Array.ofList |> pseq
        | lexerule.LRange (l, r) -> pinterval l r
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr (hd :: tl) -> List.fold (por) (!hd) (List.map mk_lexer tl)
        | lexerule.LOptional e -> popt (!e)

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



    let rec cg_stmt (stmt: definition) =
        analyzer.Sigma.SetCurrentDefinition stmt

        match stmt with
        | definition.Defrule decl -> grammar <- grammar @ cg_ruledef decl.lhs decl.define
        | definition.Deflexer decl ->
#if DEBUG
            printfn "%s = %s" decl.lhs (mk_lexer_debug decl.define)
#endif
            lexerMaps <- Map.add decl.lhs (mk_lexer decl.define) lexerMaps
        | definition.Defignore decl -> ()
        // vsep [
        //     for each in decl.ignoreList do
        //         yield word "%ignore" + word (name_of_named_term each)
        // ]
        | definition.Declvar decl ->
            namesToRequire <- rename_var decl.ident :: namesToRequire
            ()
        | definition.Declctor decl -> ()
        | definition.Decltype decl ->
            if decl.external then
                namesToRequire <- rename_type decl.ident :: namesToRequire

            ()
        | definition.Defmacro _ -> invalidOp "macro not processed"

    let filename_lexer = sprintf "%s.lexer.jl" langName
    let filename_parser = sprintf "%s.parser.jl" langName
    let filename_fff = sprintf "%s.fff" langName
    let filename_constructors = sprintf "%s.constructors.jl" langName

    let rec _cg_type (t: monot) =
        match t with
        | monot.TConst n -> rename_type n
        | monot.TVar n -> rename_typevar n
        | monot.TRef _ -> raise <| UnsolvedTypeVariable
        | monot.TFun (args, r) -> "Function"
        | monot.TApp (TTuple, []) -> invalidOp "0-element tuple type detected"
        | monot.TApp (f, args) ->
            args
            |> List.map _cg_type
            |> String.concat ", "
            |> fun it -> _cg_type f + "{" + it + "}"

    let rec _cg_type_backref (possibleBackrefNames: Map<string, string>) (t: monot) : string option =
        match t with
        | monot.TConst n ->
            let n = rename_type n

            if Map.containsKey n possibleBackrefNames then
                None
            else
                Some n
        | monot.TVar n -> Some <| rename_typevar n
        | monot.TRef _ -> raise <| UnsolvedTypeVariable
        | monot.TFun (args, r) -> Some <| "Function"
        | monot.TApp (TTuple, []) -> invalidOp "0-element tuple type detected"
        | monot.TApp (f, args) ->
            match _cg_type_backref possibleBackrefNames f with
            | None -> None
            | Some tf ->
                match mapMOptions (_cg_type_backref possibleBackrefNames) args with
                | None -> None
                | Some targs -> Some(apply_typestr tf targs)


    let cg_type (t: monot) = _cg_type (t.Prune())
    let possibleBackrefNames: Map<string, string> ref = ref Map.empty

    let cg_type_backref (t: monot) =
        _cg_type_backref possibleBackrefNames.Value t


    tbnf.ErrorReport.withErrorHandler analyzer.Sigma.GetErrorTrace
    <| fun () ->

        Array.iter cg_stmt stmts
        // grammar
        // |> fun file_grammar ->
        // data classes generator
        let file_constructors =
            filename_constructors,
            vsep [
                   // generate ADTs
                   if not (List.isEmpty namesToRequire) then
                       yield word ($"using FrontendForFreeParsing: {name_requirement}, {name_fr_type}")
                       yield word ($"import FrontendForFreeParsing: {name_fr_func}")

                       for name in namesToRequire do
                           yield word $"export {name}"
                           yield word $"const {name} = {name_requirement}(Val(:{langName}), Val(:{name}))"

                   let definePossibleBackref (typename: string) =
                       possibleBackrefNames.Value <-
                           Map.add typename (rename_forwardref typename) possibleBackrefNames.Value

                   let adtCases = analyzer.Sigma.GetADTCases()

                   for (typename, cases) in adtCases do
                       definePossibleBackref (rename_type typename)

                       for KeyValue (ctorName, _) in cases do
                           definePossibleBackref (rename_ctor ctorName)

                   for (typename, _) in analyzer.Sigma.GetRecordTypes() do
                       definePossibleBackref (rename_type typename)

                   yield empty
                   // an array of (typename, underlying typename, type parameters)
                   let forwardWrapped = ResizeArray<Doc list>()

                   for (typename, cases) in adtCases do
                       let typename' = rename_type typename
                       let mutable ctorNames: string list = []

                       for (ctorName, fields) in Map.toArray cases do
                           let ctorName = rename_ctor ctorName
                           ctorNames <- ctorName :: ctorNames
                           yield word $"export {ctorName}"

                           if List.length fields = 0 then
                               yield word $"struct {ctorName} end"
                           else
                               yield word $"struct {ctorName}"

                               let tryDirectFieldDefs =
                                   fields
                                   |> mapMOptions (fun (field, t) ->
                                       match cg_type_backref t with
                                       | None -> None
                                       | Some ft -> Some(word $"{rename_field field}::{ft}"))

                               match tryDirectFieldDefs with
                               | None ->
                                   let backdef =
                                       [ yield word $"struct {rename_forwardref ctorName}"
                                         for (field, t) in fields do
                                             let field = rename_field field
                                             yield word $"{field}::{t}" >>> 4
                                         yield word "end"
                                         yield
                                             word (
                                                 $"Base.getproperty(this::{ctorName}, name::Symbol) = "
                                                 + $"getfield(getfield(this, :_unbox) :: {rename_forwardref ctorName}, name)"
                                             ) ]

                                   forwardWrapped.Add(backdef)
                                   yield word "_unbox::Any"
                                   let args = List.map (fst >> rename_var >> word) fields

                                   yield
                                       defineJlFuncNoExpr
                                           (word ctorName)
                                           args
                                           (word (rename_forwardref ctorName)
                                            * parens (seplist (word ",") args))
                               | Some fieldefs -> yield vsep fieldefs >>> 4

                               yield word "end"

                           yield empty
                           possibleBackrefNames.Value <- Map.remove ctorName possibleBackrefNames.Value

                       let caseunion = apply_typestr "Union" ctorNames
                       yield word $"export {typename'}"
                       yield word $"const {typename'} = {caseunion}"
                       possibleBackrefNames.Value <- Map.remove typename' possibleBackrefNames.Value
                       yield empty

                   // generate records
                   for (typename, shape) in analyzer.Sigma.GetRecordTypes() do
                       let varname = rename_var typename
                       let typename = rename_type typename

                       let typehead =
                           if List.isEmpty shape.parameters then
                               typename
                           else
                               apply_typestr typename (List.map rename_typevar shape.parameters)

                       // TODO: generic type variables
                       yield word $"export {typename}"

                       if List.isEmpty shape.fields then
                           yield word $"struct {typehead} end"
                       else
                           yield word $"struct {typehead}"

                           let tryDirectFieldDefs =
                               shape.fields
                               |> mapMOptions (fun (field, t) ->
                                   match cg_type_backref t with
                                   | None -> None
                                   | Some ft -> Some(word $"{rename_field field}::{ft}"))

                           match tryDirectFieldDefs with
                           | None ->
                               let backdef =
                                   [ let underlying_typehead =
                                         if List.isEmpty shape.parameters then
                                             typename
                                         else
                                             apply_typestr typename (List.map rename_typevar shape.parameters)

                                     yield word $"struct {underlying_typehead}"

                                     for (field, t) in shape.fields do
                                         let field = rename_field field
                                         yield word $"{field}::{cg_type t}" >>> 4

                                     yield word "end"

                                     yield
                                         word (
                                             $"Base.getproperty(this::{typename}, name::Symbol) = "
                                             + $"getfield(getfield(this, :_unbox) :: {rename_forwardref typename}, name)"
                                         ) ]

                               forwardWrapped.Add(backdef)
                               yield word "_unbox::Any"
                               let args = List.map (fst >> rename_var >> word) shape.fields

                               yield
                                   defineJlFuncNoExpr
                                       (word typename)
                                       args
                                       (word (rename_forwardref typename)
                                        * parens (seplist (word ",") args))
                           | Some fieldefs -> yield vsep fieldefs >>> 4

                           yield word "end"

                           if typename <> varname then
                               yield word $"const {varname} = {typename}"

                       yield empty

                   for each in forwardWrapped do
                       yield empty
                       yield! each

                   yield empty
                   yield! semantic_actions ]

        // lexer generator

        let mutable lexerInfo = []

        let tokenOrder = Array.ofList (terminals grammar)

        for k in Array.sort (Array.ofSeq analyzer.LiteralTokens) do
            let v = pstring (k)
            let token_id = Array.findIndex ((=) (name_of_literal_term k)) tokenOrder
            lexerInfo <- (v, Tokenize token_id) :: lexerInfo

        for k in analyzer.ReferencedNamedTokens do
            let v = lexerMaps.[k]

            if Set.contains k analyzer.IgnoreSet then
#if DEBUG
                printfn "discarding %s" k
#endif
                lexerInfo <- (v, Discard) :: lexerInfo
            else
                let token_id = Array.findIndex ((=) (name_of_named_term k)) tokenOrder
                lexerInfo <- (v, Tokenize token_id) :: lexerInfo
#if DEBUG
        printfn "literal tokens %A" analyzer.LiteralTokens
#endif

        lexerInfo <-
            (pany, Tokenize(Array.length tokenOrder))
            :: lexerInfo

        let lexerInfo =
            (peof, Tokenize -1) :: lexerInfo
            |> List.rev
            |> Array.ofList

        let file_grammar: Filename (* string *)  * Doc =
            (filename_fff, dumpFFFGrammar grammar)

        let file_lexer =
            lexerInfo |> Fable.Sedlex.Compiler.build
            <| "the last branch must be a catch-all error case!"
            |> Fable.Sedlex.CodeGen.Julia.codegen_julia "using Sedlex"

        let file_lexer = (filename_lexer, file_lexer)

        let file_parser =
            filename_parser,
            vsep [ yield word $"using FrontendForFreeParsing: {name_call_fff}, {name_requirement}"
                   yield word "export is_eof_token"
                   yield word "export LexerBuffer"
                   yield word "export Token"
                   yield empty


                   // include datatype constructors
                   yield word $"include({escapeString filename_constructors})"
                   // include lexers
                   yield word $"module LexerInternal"
                   yield word $"include({escapeString filename_lexer})"
                   yield word $"end"
                   yield word $"{name_call_fff}((@__MODULE__), :{langName})" // call fff to load parser code and do codegen

                   yield word $"is_eof_token(token::Sedlex.Token) = token.token_id == -1"
                   yield word $"const LexerBuffer = Sedlex.lexbuf"
                   yield word $"const Token = Sedlex.Token"
                   yield word $"@inline perform_lex!(f, x::LexerBuffer) = LexerInternal.lex(f, x, is_eof_token)"
                   yield word $"@inline _construct_token(args) = Token(args...)"
                   yield
                       vsep [ word "function lexall(x::String)"
                              vsep [ word "buf = Sedlex.from_ustring(x)"
                                     word "tokens = Token[]"
                                     word "while true"
                                     vsep [ word "local token = perform_lex!(_construct_token, buf)"
                                            word "token === nothing && continue"
                                            word "is_eof_token(token) && break"
                                            word "push!(tokens, token)" ]
                                     word "end"
                                     word "return rbnf_named_parse_start(nothing, tokens)" ]
                              word "end" ] ]

        [| file_constructors
           file_grammar
           file_lexer
           file_parser |]
