module tbnf.Backends.CSharpAntlr

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


let CSharpKeywords =
    [| "__arglist"
       "__makeref"
       "__reftype"
       "__refvalue"
       "abstract"
       "as"
       "base"
       "bool"
       "break"
       "byte"
       "case"
       "catch"
       "char"
       "checked"
       "class"
       "const"
       "continue"
       "decimal"
       "default"
       "delegate"
       "do"
       "double"
       "else"
       "enum"
       "event"
       "explicit"
       "extern"
       "false"
       "finally"
       "fixed"
       "float"
       "for"
       "foreach"
       "goto"
       "if"
       "implicit"
       "in"
       "int"
       "interface"
       "internal"
       "is"
       "lock"
       "long"
       "namespace"
       "new"
       "null"
       "object"
       "operator"
       "out"
       "override"
       "params"
       "private"
       "protected"
       "public"
       "readonly"
       "ref"
       "return"
       "sbyte"
       "sealed"
       "short"
       "sizeof"
       "stackalloc"
       "static"
       "string"
       "struct"
       "switch"
       "this"
       "throw"
       "true"
       "try"
       "typeof"
       "uint"
       "ulong"
       "unchecked"
       "unsafe"
       "ushort"
       "using"
       "virtual"
       "volatile"
       "void"
       "while" |]

let codegen
    (analyzer: Analyzer)
    (cg_options: CodeGenOptions)
    (langName: string)
    (stmts: definition array)
    =
    let var_renamer = Option.defaultValue id cg_options.rename_var
    let rename_ctor = Option.defaultValue id cg_options.rename_ctor
    let rename_var = Option.defaultValue id cg_options.rename_var
    let rename_field = Option.defaultValue id cg_options.rename_field
    let type_renamer = Option.defaultValue id cg_options.rename_type

    let typeParameter_mangling x = "_GEN_" + x

    let mutable importVarNames = []
    let mutable importTypeNames = []

    let abandoned_names =
        Set.ofArray
        <| Array.append [| "result" |] CSharpKeywords

    let mutable symmap: Map<symbol, string> = Map.empty

    let mutable toplevel_transformer: Doc list = []
    let mutable currentPos = analyzer.currentPos

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

    let antlrLexerIdentDescr =
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
                        string (maskChar (int 'A') (int 'Z') (int c))
                        + "_"
                    else
                        "_"
                        + string (maskChar (int 'A') (int 'Z') (int c))
                        + "_")
            )
            .WithNameEnv { usedNames = Set.ofArray [| "EOF" |] }

    let antlrGrammarIdentDescr =
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

    let _name_of_named_term (name: string) = mangle antlrLexerIdentDescr name

    let _name_of_nonterm (name: string) = mangle antlrGrammarIdentDescr name

    let cg_symbol (x: symbol) =
        match Map.tryFind x symmap with
        | Some v -> v
        | None ->
            match x with
            | Term (define, is_literal) ->
                if is_literal then

                    escapeStringSingleQuoted define
                else
                    _name_of_named_term define
            | Nonterm s -> _name_of_nonterm s
            | _ -> invalidOp "macro not processed"
            |> fun valid_py_ident ->
                symmap <- Map.add x valid_py_ident symmap
                valid_py_ident

    let name_of_nonterm n = cg_symbol (Nonterm n)
    let name_of_named_term n = cg_symbol (Term(n, false))

    let mkActionName ntname idx = sprintf "%s_%i" ntname idx

    let defineCSharpFunc anns body =
        parens (
            vsep [ parens (seplist (word ", ") anns) * word "=>"
                   body >>> 4 ]
        )

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
            |> List.map (fun (_, b) -> _cg_type b)
            |> (fun args -> args @ [ _cg_type r ])
            |> String.concat ", "
            |> fun it -> "System.Func<" + it + ">"

        | monot.TApp (TTuple, []) -> invalidOp "0-element tuple type detected"
        | monot.TApp (TTuple, args) ->
            args
            |> List.map _cg_type
            |> String.concat ", "
            |> fun it -> "(" + it + ")"
        | monot.TApp (f, args) ->
            args
            |> List.map _cg_type
            |> String.concat ", "
            |> fun it -> _cg_type f + "<" + it + ">"

    let cg_type (t: monot) = _cg_type (t.Prune())

    let slotName (actionName: string) (i: int) = $"{actionName}__{i}"
    let resultName = "result"

    let cg_expr (isTerminal: bool array) (actionName: string) (scope: list<string * string>) (curr_expr: expr) =
        let mutable usedSlots = Set.empty

        let rec cg_expr (scope: list<string * string>) (curr_expr: expr) : block<Doc> =
            let inline (!) x = cg_expr scope x

            cg {
                match curr_expr.node with
                | node.EApp (f, args) ->
                    let! f' = !f

                    let! args' =
                        cg {
                            for arg in args do
                                let! arg' = !arg
                                return parens (word (cg_type arg.t)) + arg'
                        }
                    let t_repr = cg_type curr_expr.t
                    return word $"({t_repr})" + f' * parens (seplist (word ", ") args')
                | node.EVar (var, specializations) ->
                    match tryLookup var scope with
                    | None -> return raise (UnboundVariable(var))
                    | Some v ->
                        let var =
                            if specializations.Value.Length = 0 then
                                word v
                            else
                                specializations.Value
                                |> List.map (fun t -> t.Prune())
                                |> List.map (cg_type >> word)
                                |> seplist (word ", ")
                                |> (fun typeArgs -> word v * word "<" * typeArgs * word ">")
                        return var
                        // let t = curr_expr.t.Prune()
                        // match t with
                        // | TFun(args, ret_t) ->
                        //     let args = parens(seplist (word ",") (List.map (fst >> mangle csharpIdentDescr >> word) args))
                        //     return word "(" + args + word "=>" + parens(word (cg_type ret_t)) + parens(var + args) * word ")";
                        // | _ -> return var

                | node.EBool true -> return word "true"
                | node.EBool false -> return word "false"
                | node.EField (e, s) ->
                    let! e' = !e
                    return e' * word "." * word s
                | node.EInt i -> return word (sprintf "%d" i)
                | node.EFlt f -> return word (sprintf "%f" f)
                (* XXX: multiline string support? *)
                | node.EStr s -> return word (escapeString s)
                | node.EFun (args, body) ->

                    let scope' =
                        [ for (arg, _) in args -> arg, mangle csharpIdentDescr arg ]
                        @ scope

                    let (returned, code) = runCG <| cg_expr scope' body

                    return
                        defineCSharpFunc (List.map (fun (a, b) -> word (cg_type b + " " + a)) args)
                        <| vsep [ vsep code
                                  word "return" + returned * word ";" ]

                | node.ELet (n, value, body) ->
                    let! value' = !value
                    let m_name = mangle csharpIdentDescr n
                    let scope' = (n, m_name) :: scope
                    yield word m_name + word "=" + value' * word ";"
                    return! cg_expr scope' body
                // defineOCamlLetIn (word m_name) value' (cg_expr scope' body)
                | node.EList elts ->
                    let! elts' =
                        cg {
                            for elt in elts do
                                return! !elt
                        }

                    return
                        word "new"
                        + word (cg_type curr_expr.t)
                        + word "{"
                        + (seplist (word ",") elts')
                        + word "}"
                | node.ESlot i ->
                    let n = slotName actionName i
                    usedSlots <- Set.add i usedSlots
                    let v = word $"_localctx.{n}"
                    return
                        if isTerminal.[i - 1] then v
                        else v * word ".result"
                | node.ETuple elts ->
                    let! elts' =
                        cg {
                            for elt in elts do
                                return! !elt
                        }

                    return parens (seplist (word ", ") (elts'))
            }

        let snd = runCG (cg_expr scope curr_expr)
        usedSlots, snd

    let rec cg_prod (actionName: string) (prod: production) =
        let isTerminal =
            [| for sym in prod.symbols ->
                match sym with
                | Term _ -> true
                | _ -> false |]
        let usedSlots, (returned, code) =
            cg_expr isTerminal actionName global_scope prod.action

        prod.symbols
        |> List.mapi (fun i s ->
            let i = i + 1
            let sym = word (cg_symbol s)

            if Set.contains i usedSlots then
                word (slotName actionName i) * word "=" * sym
            else
                sym)
        |> seplist (word " ")
        |> fun it ->
            it
            + word "{"
            + (vsep [ empty
                      vsep [ vsep code
                             word ("$" + resultName) + word "=" + returned * word ";" ]
                      >>> 4
                      word "}" ]
               >>> 12)

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        let ntname = cg_symbol (Nonterm lhs)
        let t = typeof_symbol (Nonterm lhs)
        let mutable idx = 0

        [ for (pos, production) in define do
              let actionName = mkActionName ntname idx
              currentPos <- pos
              yield cg_prod actionName production
              idx <- idx + 1 ]
        |> List.mapi (fun i e -> (if i = 0 then word ":" else word "|") + e)
        |> vsep
        |> align
        |> fun body -> vsep [
            word ntname + word "returns" +
                bracket(word (cg_type t) + word resultName)
            body >>> 4
            word ";"
        ]

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
            lexerMaps <-
                (decl.lhs, decl.define)
                :: lexerMaps

            empty
        | definition.Defignore decl ->
            currentPos <- decl.pos
            vsep [] (* generated later *)
        | definition.Declctor decl ->
            currentPos <- decl.pos
            vsep []
        | definition.Declvar decl ->
            importVarNames <- var_renamer decl.ident :: importVarNames
            vsep []
        | definition.Decltype decl ->
            importTypeNames <- type_renamer decl.ident :: importTypeNames
            vsep []
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

    let mutable docCtorWrapFuncs = []

    let file_constructors = $"{langName}.Constructor." + ".cs", vsep [

            yield word $"using Antlr4.Runtime;"
            yield word "using System.Collections.Generic;"
            yield word "using System;"

            // generate ADTs
            let adtCases = analyzer.Sigma.GetADTCases()
            yield empty

            yield word $"namespace {langName}{{"

            for (typename, cases) in adtCases do
                let typename' = type_renamer typename
                yield word $"public partial interface {typename'} {{  }}"
                for (ctorName, fields) in Map.toArray cases do // TODO: give a proper error when cases are empty
                    // mangling
                    let fields = List.map (fun (fname, t) -> word (rename_field fname), word (cg_type t)) fields
                    let ctorName' = rename_ctor ctorName

                    let func_params = parens(seplist (word ",") [for (fname, t) in fields -> t + fname])
                    yield word $"public partial record {ctorName'}" * func_params + word $": {typename'};"
                    // for later wrap
                    let ret_t = word typename'
                    docCtorWrapFuncs <- ("", rename_ctor ctorName, ctorName', fields, ret_t) :: docCtorWrapFuncs
                yield empty

            // generate records

            for (typename, shape) in  analyzer.Sigma.GetRecordTypes() do
                let typename' = type_renamer typename
                let varname = rename_var typename
                let tparams, ret_t =
                    if List.isEmpty shape.parameters then
                        "", word typename'
                    else
                        let tparams =
                            shape.parameters
                            |> List.map (fun s -> typeParameter_mangling s)
                            |> String.concat ", "
                            |> fun tparams -> "<" + tparams + ">"
                        tparams, word $"{typename'}<{tparams}>"

                let fields = [for (fname, t) in shape.fields -> word (rename_field fname), word (cg_type t)]
                let func_params = parens(seplist (word ",") [for (fname, t) in fields -> t + fname])
                yield word $"public partial record {typename'}" * word tparams * func_params * word ";"
                docCtorWrapFuncs <- (tparams, varname, typename', fields, ret_t) :: docCtorWrapFuncs
            yield word "}" // close namespace
        ]

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
    |> vsep
    |> fun file_grammar ->
        let lexerDefs = [
            for (k, v) in  List.rev lexerMaps do
                let v = simplify_lexerule v
                let n = name_of_named_term k
                if Set.contains k analyzer.IgnoreSet then
                    yield word n + word ":" + parensIfLOr v + word "-> skip;"
                elif Set.contains k analyzer.ReferencedNamedTokens then
                    yield word n + word ":" + word (mk_lexer v) + word ";"
                else
                    yield word "fragment" + word n + word ":" + parensIfLOr v + word ";"
        ]
        let start_mangled = name_of_nonterm "start"
        let file_antlr =
                langName + ".g4",
                vsep [
                    yield word $"grammar {langName};"
                    yield word "options { language = CSharp; }"
                    yield word "@members {"

                    for (tparams, function_name, ctor_name, fields, ret_t) in docCtorWrapFuncs do
                        let func_params = parens(seplist (word ",") (List.map (fun (fname, t) -> t + fname) fields))
                        let args = parens(seplist (word ",") (List.map (fun (fname, _) -> fname) fields))

                        yield vsep [
                             yield word "public static" + ret_t + word function_name + word tparams * func_params
                             yield word "{"
                             yield vsep [
                                    word "return" + parens(ret_t) + word "new" + word ctor_name * args * word ";"
                             ] >>> 4
                             yield word "}"
                        ]

                    yield word "}"

                    yield word (sprintf "start returns [%s result]: v=%s EOF { $result = _localctx.v.result; };" (cg_type
                    start_t) start_mangled)
                    yield file_grammar
                    yield! lexerDefs
                ]
        [| file_antlr; file_constructors |]
