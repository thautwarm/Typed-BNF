module tbnf.Backends.PureBNF

open Fable.CodeGen
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Exceptions
open tbnf.Backends.Common
open tbnf.Backends.Common.NameMangling


let angled x = word "<" * x * word ">"

let codegen
    (analyzer: Analyzer)
    (_: CodeGenOptions)
    (langName: string)
    (stmts: definition array)
    =
    let var_renamer = id
    let rename_ctor = id
    let rename_var = id
    let rename_field = id
    let type_renamer = id

    let typeParameter_mangling x = "_GEN_" + x

    let mutable importVarNames = []
    let mutable importTypeNames = []

    let abandoned_names = Set.empty

    let mutable symmap: Map<symbol, string> = Map.empty

    let mutable lexerMaps: list<string * lexerule> = []

    let global_scope =
        [ for k in analyzer.Sigma.GlobalVariables -> k.Key, var_renamer k.Key ]

    (* valid ocaml identifier segment *)
    let csharpIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    let test =
                        isLower c || isUpper c || isUnicode c || c = '_'

                    if i = 0 then
                        test
                    else
                        test || isDigit c),
                (fun i c ->
                    if isDigit c then
                        $"_X{i}_"
                    else
                        $"_{int c}_")
            )
            .WithNameEnv { usedNames = Set.ofList (List.map snd global_scope) }

    let mangle = mangle abandoned_names

    let typeof_symbol =
        function
        | Term _ -> TConst_token
        | Nonterm s -> analyzer.Omega.[s]
        | _ -> invalidOp "macro not processed"

    let _name_of_named_term (name: string) = name

    let _name_of_nonterm (name: string) = "<" + name + ">"

    let cg_symbol (x: symbol) =
        match x with
        | Term(x, isLit) ->
            if isLit then escapeStringSingleQuoted x
            else _name_of_named_term x
        | Nonterm x -> _name_of_nonterm x
        | Macrocall _ -> invalidOp "macro not processed"

    let name_of_nonterm n = cg_symbol (Nonterm n)
    let name_of_named_term n = cg_symbol (Term(n, false))


    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value) :: tl when key' = key -> Some value
        | _ :: tl -> tryLookup key tl

    let rec _cg_type (t: monot) =
        match t with
        | monot.TConst n -> type_renamer n
        | monot.TVar a -> typeParameter_mangling a
        | monot.TRef _ -> raise <| UnsolvedTypeVariable
        | monot.TFun (args, r) ->
            args
            |> List.map (fun (s, b) -> s + ":" + _cg_type b)
            |> String.concat ", "
            |> fun it -> it + " => " + _cg_type r

        | monot.TApp (TTuple, []) -> invalidOp "[]"
        | monot.TApp (TTuple, args) ->
            args
            |> List.map _cg_type
            |> String.concat ", "
            |> fun it -> "[" + it + "]"
        | monot.TApp (f, args) ->
            args
            |> List.map _cg_type
            |> String.concat ", "
            |> fun it -> _cg_type f + "<" + it + ">"

    let cg_type (t: monot) = _cg_type (t.Prune())

    let slotName (actionName: string) (i: int) = $"{actionName}__{i}"
    let resultName = "result"

    let rec cg_prod (prod: production) =
        prod.symbols
        |> List.map (word << cg_symbol)
        |> seplist (word " ")

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        let ntname = cg_symbol (Nonterm lhs)
        let mutable idx = 0

        [ for (pos, production) in define do
              analyzer.Sigma.SetCurrentPos pos
              analyzer.Sigma.SetCurrentDefinitionBranch idx
              idx <- idx + 1
              yield cg_prod production
              idx <- idx + 1 ]
        |> List.mapi (fun i e -> (if i = 0 then word ":" else word "|") + e)
        |> vsep
        |> align
        |> fun body -> vsep [ word ntname + word "=" + (body >>> 4) ]

    let rec mk_lexer (def: lexerule) : string =
        let inline (!) def = mk_lexer def

        match def with
        | lexerule.LStr s -> escapeStringSingleQuoted s
        | lexerule.LGroup e -> "(" + !e + ")"
        | lexerule.LNot e -> $"~{(!e)}"
        | lexerule.LNumber -> "[0-9]"
        | lexerule.LPlus e -> $"{!e}+"
        | lexerule.LStar e -> $"{!e}*"
        | lexerule.LWildcard -> "."
        | lexerule.LRef s ->
            match List.tryLookup s lexerMaps with
            | Some _ -> name_of_named_term s
            | None -> raise <| UnboundLexer(s)
        | lexerule.LSeq xs ->
            List.map mk_lexer xs
            |> Array.ofList
            |> String.concat " "
        | lexerule.LRange (l, r) ->
            $"[{iToU4(l)}-{iToU4(r)}]"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr xs ->
            List.map mk_lexer xs
            |> Array.ofList
            |> String.concat " | "
        | lexerule.LOptional e -> $"{!e}?"

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
        | definition.Defrule decl ->
            [cg_ruledef decl.lhs decl.define]
        | definition.Deflexer decl ->
#if DEBUG
            printfn "%s = %s" decl.lhs (mk_lexer_debug decl.define)
#endif
            lexerMaps <-
                (decl.lhs, decl.define)
                :: lexerMaps

            []
        | definition.Defignore decl ->
            []
        | definition.Declctor decl ->
            []
        | definition.Declvar decl ->
            importVarNames <- var_renamer decl.ident :: importVarNames
            []
        | definition.Decltype decl ->
            if decl.external then
                importTypeNames <- type_renamer decl.ident :: importTypeNames
            []
        | definition.Defmacro _ -> invalidOp "macro not processed"


    let rec simplify_lexerule x =
        match x with
        | lexerule.LNumber | lexerule.LWildcard | lexerule.LRange _ | lexerule.LRef _ | lexerule.LStr _ -> x
        | lexerule.LGroup e -> _must_be_atom_rule e
        | lexerule.LNot(x) -> LNot(_must_be_atom_rule x)
        | lexerule.LOptional x -> LOptional (_must_be_atom_rule x)
        | lexerule.LPlus x -> LPlus (_must_be_atom_rule x)
        | lexerule.LStar x -> LStar (_must_be_atom_rule x)
        | lexerule.LOr args -> LOr (List.map _must_be_atom_rule args)
        | lexerule.LSeq args -> LSeq (List.map _must_be_atom_rule args)

    and _must_be_atom_rule x =
        match x with
        | lexerule.LNumber | lexerule.LWildcard | lexerule.LRange _ | lexerule.LRef _ | lexerule.LStr _ -> x
        | lexerule.LNot x -> LNot (_must_be_atom_rule x)
        | lexerule.LOptional x -> LOptional (_must_be_atom_rule x)
        | lexerule.LPlus x -> LPlus (_must_be_atom_rule x)
        | lexerule.LStar x -> LStar (_must_be_atom_rule x)
        | lexerule.LOr args -> LGroup (LOr (List.map _must_be_atom_rule args))
        | lexerule.LSeq args -> LGroup (LSeq (List.map _must_be_atom_rule args))
        | LGroup x -> _must_be_atom_rule x


    tbnf.ErrorReport.withErrorHandler analyzer.Sigma.GetErrorTrace <| fun () ->
    // antlr grammar generator
    let isLOr = function LOr _ -> true | _ -> false
    let parensIfLOr x =
        if isLOr x then
            parens(word (mk_lexer x))
        else word(mk_lexer x)

    match Map.tryFind "start" analyzer.Omega with
    | None -> raise <| UnboundNonterminal "start"
    | Some start_t ->
    Array.map cg_stmt stmts
    |> List.ofArray
    |> List.collect id
    |> vsep
    |> fun file_grammar ->
        let lexerDefs = [
            for (k, v) in  List.rev lexerMaps do
                let v = simplify_lexerule v
                let n = name_of_named_term k
                if Set.contains k analyzer.IgnoreSet then
                    yield word n + word ":" + parensIfLOr v + word "-> channel(HIDDEN);"
                elif Set.contains k analyzer.ReferencedNamedTokens then
                    yield word n + word ":" + word (mk_lexer v) + word ";"
                else
                    yield word "fragment" + word n + word ":" + parensIfLOr v + word ";"
        ]
        let file_bnf =
                langName + ".bnf",
                vsep [
                    yield file_grammar
                    yield! lexerDefs
                ]
        [| file_bnf |]
