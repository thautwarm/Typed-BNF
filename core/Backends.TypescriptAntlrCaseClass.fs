module tbnf.Backends.TypescriptAntlrCaseClass

open Fable.Sedlex.PrettyDoc
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Exceptions
open tbnf.Backends.Common
open tbnf.Backends.Common.DocBuilder
open tbnf.Backends.Common.NameMangling


// https://github.com/Microsoft/TypeScript/issues/2536
let TypeScriptKeywords =
    [| "break"
       "case"
       "catch"
       "class"
       "const"
       "continue"
       "debugger"
       "default"
       "delete"
       "do"
       "else"
       "enum"
       "export"
       "extends"
       "false"
       "finally"
       "for"
       "function"
       "if"
       "import"
       "in"
       "instanceof"
       "new"
       "null"
       "return"
       "super"
       "switch"
       "this"
       "throw"
       "true"
       "try"
       "typeof"
       "var"
       "void"
       "while"
       "with"
       "lexer"
       "parser"
       "abstract"
       "arguments"
       "await"
       "boolean"
       "break" |]

let angled x = word "<" * x * word ">"

let codegen (analyzer: Analyzer) (cg_options: CodeGenOptions) (langName: string) (stmts: definition array) =
    let rename_ctor = Option.defaultValue id cg_options.rename_ctor
    let rename_var = Option.defaultValue id cg_options.rename_var
    let rename_field = Option.defaultValue id cg_options.rename_field
    let rename_type = Option.defaultValue id cg_options.rename_type

    let typeParameter_mangling x = "_GEN_" + x

    let mutable importVarNames = []
    let mutable importTypeNames = []

    let abandoned_names = Set.ofArray <| Array.append [| "result" |] TypeScriptKeywords

    let mutable symmap: Map<symbol, string> = Map.empty

    let mutable lexerMaps: list<string * lexerule> = []


    let mutable usedFunctionTypes = Set.empty<int>

    let FuncTypeName = "_FunctionT"

    let genFuncTypeDef (narg: int) =
        let parameters1 =
            [ for i = 1 to narg do
                  $"A{i}" ]
            |> String.concat ", "

        let parameters2 =
            [ for i = 1 to narg - 1 do
                  $"arg{i}: A{i}" ]
            |> String.concat ", "

        $"type {FuncTypeName}{narg}<{parameters1}> = ({parameters2}) => A{narg}"

    let global_scope =
        [ for k in analyzer.Sigma.GlobalVariables -> k.Key, rename_var k.Key ]

    (* valid ocaml identifier segment *)
    let csharpIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    let test = isLower c || isUpper c || isUnicode c || c = '_'

                    if i = 0 then test else test || isDigit c),
                (fun i c -> if isDigit c then $"_X{i}_" else $"_{int c}_")
            )
            .WithNameEnv
            { usedNames = Set.ofList (List.map snd global_scope) }

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
                        string (maskChar (int 'A') (int 'Z') (int c)) + "_"
                    else
                        "_" + string (maskChar (int 'A') (int 'Z') (int c)) + "_")
            )
            .WithNameEnv
            { usedNames = Set.ofArray [| "EOF" |] }

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
                        "_" + string (maskChar (int 'a') (int 'z') (int c)) + "_")
            )
            .WithNameEnv
            { usedNames = Set.ofArray [| "start" |] }


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
            | Term(define, is_literal) ->
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

    let mkActionName ntname idx = $"{ntname}_{idx}"

    let defineTSFunc anns body =
        parens (
            vsep
                [ word "function" + parens (seplist (word ", ") anns) * word "{"
                  body >>> 4
                  word "}" ]
        )

    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value) :: tl when key' = key -> Some value
        | _ :: tl -> tryLookup key tl

    let rec _cg_type (is_in_g4: bool) (t: monot) =
        match t with
        | monot.TConst n -> rename_type n
        | monot.TVar a -> typeParameter_mangling a
        | monot.TRef _ -> raise <| UnsolvedTypeVariable
        | monot.TFun(args, r) ->
            let args = List.map (fun (s, t) -> s, _cg_type is_in_g4 t) args
            let r = _cg_type is_in_g4 r

            if not is_in_g4 then
                args
                |> List.map (fun (s, b) -> s + ":" + b)
                |> String.concat ", "
                |> fun it -> $"({it}) => {r}"
            else
                let args = List.map snd args @ [ r ]
                let argcount = List.length args

                if Set.contains (argcount) usedFunctionTypes then
                    ()
                else
                    usedFunctionTypes <- Set.add argcount usedFunctionTypes

                args |> String.concat ", " |> (fun it -> $"{FuncTypeName}{argcount}<{it}>")


        | monot.TApp(TTuple, []) -> invalidOp "[]"
        | monot.TApp(TTuple, args) ->
            args
            |> List.map (_cg_type is_in_g4)
            |> String.concat ", "
            |> fun it -> "[" + it + "]"
        | monot.TApp(f, args) ->
            args
            |> List.map (_cg_type is_in_g4)
            |> String.concat ", "
            |> fun it -> _cg_type is_in_g4 f + "<" + it + ">"

    let cg_type (t: monot) = _cg_type false (t.Prune())
    let cg_type_in_g4 (t: monot) = _cg_type true (t.Prune())

    let slotName (actionName: string) (i: int) = $"{actionName}__{i}"
    let resultName = "result"

    let cg_expr (isTerminal: bool array) (actionName: string) (scope: list<string * string>) (curr_expr: expr) =
        analyzer.Sigma.WithExpr curr_expr
        <| fun () ->
            let mutable usedSlots = Set.empty

            let rec cg_expr (scope: list<string * string>) (curr_expr: expr) : block<Doc> =
                let inline (!) x = cg_expr scope x

                cg {
                    match curr_expr.node with
                    | node.EApp(f, args) ->
                        let! f' = !f

                        let! args' =
                            cg {
                                for arg in args do
                                    let! arg' = !arg
                                    return angled (word (cg_type arg.t)) + arg'
                            }

                        let t_repr = cg_type curr_expr.t
                        return word $"<{t_repr}>" + f' * parens (seplist (word ", ") args')
                    | node.EVar(var, specializations) ->
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
                    | node.EField(e, s) ->
                        let! e' = !e
                        return e' * word "." * word s
                    | node.EInt i -> return word (i.ToString())
                    | node.EFlt f -> return word (f.ToString("G", System.Globalization.CultureInfo.InvariantCulture))
                    (* XXX: multiline string support? *)
                    | node.EStr s -> return word (escapeString s)
                    | node.EFun(args, body) ->

                        let scope' = [ for (arg, _) in args -> arg, mangle csharpIdentDescr arg ] @ scope

                        let (returned, code) = runCG <| cg_expr scope' body

                        return
                            defineTSFunc (List.map (fun (a, b) -> word (cg_type b + " " + a)) args)
                            <| vsep [ vsep code; word "return" + returned * word ";" ]

                    | node.ELet(n, value, body) ->
                        let! value' = !value
                        let m_name = mangle csharpIdentDescr n
                        let scope' = (n, m_name) :: scope

                        yield
                            word "let"
                            + word m_name
                            + word ":"
                            + word (cg_type value.t)
                            + word "="
                            + value' * word ";"

                        return! cg_expr scope' body
                    // defineOCamlLetIn (word m_name) value' (cg_expr scope' body)
                    | node.EList elts ->
                        let! elts' =
                            cg {
                                for elt in elts do
                                    return! !elt
                            }

                        return
                            word $"<{cg_type curr_expr.t}>" * word "["
                            + (seplist (word ",") elts')
                            + word "]"
                    | node.ESlot i ->
                        let n = slotName actionName i
                        usedSlots <- Set.add i usedSlots
                        let v = word $"localContext._{n}"
                        return if isTerminal.[i - 1] then v else v * word ".result"
                    | node.ETuple elts ->
                        let! elts' =
                            cg {
                                for elt in elts do
                                    return! !elt
                            }

                        return word $"<{cg_type curr_expr.t}>" * bracket (seplist (word ", ") (elts'))
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
            + (vsep
                [ empty
                  vsep [ vsep code; word ("$" + resultName) + word "=" + returned * word ";" ]
                  >>> 4
                  word "}" ]
               >>> 12)

    let rec cg_ruledef (lhs: string) (define: list<position * production>) =
        let ntname = cg_symbol (Nonterm lhs)
        let t = typeof_symbol (Nonterm lhs)
        let mutable idx = 0

        [ for (pos, production) in define do
              let actionName = mkActionName ntname idx
              analyzer.Sigma.SetCurrentPos pos
              analyzer.Sigma.SetCurrentDefinitionBranch idx
              idx <- idx + 1
              yield cg_prod actionName production
              idx <- idx + 1 ]
        |> List.mapi (fun i e -> (if i = 0 then word ":" else word "|") + e)
        |> vsep
        |> align
        |> fun body ->
            vsep
                [ word ntname
                  + word "returns"
                  + bracket (word (cg_type_in_g4 t) + word resultName)
                  body >>> 4
                  word ";" ]

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
        | lexerule.LSeq xs -> List.map mk_lexer xs |> Array.ofList |> String.concat " "
        | lexerule.LRange(l, r) -> $"[{iToU4 (l)}-{iToU4 (r)}]"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr xs -> List.map mk_lexer xs |> Array.ofList |> String.concat " | "
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
        | lexerule.LRange(l, r) -> $"pinterval({l}, {r})"
        | lexerule.LOr [] -> invalidOp "impossible: alternatives cannot be empty."
        | lexerule.LOr(hd :: tl) -> List.fold (fun a b -> $"por({a}, {b})") (!hd) (List.map mk_lexer_debug tl)
        | lexerule.LOptional e -> $"popt{(!e)}"


    let rec cg_stmt (stmt: definition) =
        analyzer.Sigma.SetCurrentDefinition stmt

        match stmt with
        | definition.Defrule decl -> cg_ruledef decl.lhs decl.define
        | definition.Deflexer decl ->
#if DEBUG
            printfn "%s = %s" decl.lhs (mk_lexer_debug decl.define)
#endif
            lexerMaps <- (decl.lhs, decl.define) :: lexerMaps

            empty
        | definition.Defignore decl -> vsep [] (* generated later *)
        | definition.Declctor decl -> vsep []
        | definition.Declvar decl ->
            importVarNames <- rename_var decl.ident :: importVarNames
            vsep []
        | definition.Decltype decl ->
            if decl.external then
                importTypeNames <- rename_type decl.ident :: importTypeNames

            vsep []
        | definition.Defmacro _ -> invalidOp "macro not processed"


    let rec simplify_lexerule x =
        match x with
        | lexerule.LNumber
        | lexerule.LWildcard
        | lexerule.LRange _
        | lexerule.LRef _
        | lexerule.LStr _ -> x
        | lexerule.LGroup e -> _must_be_atom_rule e
        | lexerule.LNot(x) -> LNot(_must_be_atom_rule x)
        | lexerule.LOptional x -> LOptional(_must_be_atom_rule x)
        | lexerule.LPlus x -> LPlus(_must_be_atom_rule x)
        | lexerule.LStar x -> LStar(_must_be_atom_rule x)
        | lexerule.LOr args -> LOr(List.map _must_be_atom_rule args)
        | lexerule.LSeq args -> LSeq(List.map _must_be_atom_rule args)

    and _must_be_atom_rule x =
        match x with
        | lexerule.LNumber
        | lexerule.LWildcard
        | lexerule.LRange _
        | lexerule.LRef _
        | lexerule.LStr _ -> x
        | lexerule.LNot x -> LNot(_must_be_atom_rule x)
        | lexerule.LOptional x -> LOptional(_must_be_atom_rule x)
        | lexerule.LPlus x -> LPlus(_must_be_atom_rule x)
        | lexerule.LStar x -> LStar(_must_be_atom_rule x)
        | lexerule.LOr args -> LGroup(LOr(List.map _must_be_atom_rule args))
        | lexerule.LSeq args -> LGroup(LSeq(List.map _must_be_atom_rule args))
        | LGroup x -> _must_be_atom_rule x


    tbnf.ErrorReport.withErrorHandler analyzer.Sigma.GetErrorTrace
    <| fun () ->

        let define_record (case_name: string, ctor_name: string, fields: (Doc * Doc) seq) =
            [ let func_params =
                  parens (seplist (word ",") [ for (fname, t) in fields -> fname * word ": " * t ])

              yield word $"export class {case_name}"
              yield word "{"
              yield word $"public readonly ['$tag'] = '{case_name}';" >>> 4

              yield
                  vsep
                      [ for (fname, t) in fields do
                            yield (fname * word ": " * t)
                        yield word "public constructor" * func_params
                        yield word "{"
                        yield
                            vsep
                                [ for (fname, t) in fields do
                                      yield (word "this." * fname * word " = " * fname) ]
                            >>> 4
                        yield word "}" ]
                  >>> 4

              yield word "}"
              yield empty

              // generate a function named ${ctor_name} to invoke the constructor
              yield word $"export function {ctor_name}" * func_params
              yield word "{"

              yield
                  (word $"return new {case_name}"
                   * parens (seplist (word ",") [ for (fname, t) in fields -> fname ]))
                  >>> 4

              yield word "}" ]


        // antlr grammar generator
        let isLOr =
            function
            | LOr _ -> true
            | _ -> false

        let parensIfLOr x =
            if isLOr x then
                parens (word (mk_lexer x))
            else
                word (mk_lexer x)

        match Map.tryFind "start" analyzer.Omega with
        | None -> raise <| UnboundNonterminal "start"
        | Some start_t ->
            Array.map cg_stmt stmts
            |> List.ofArray
            |> vsep
            |> fun file_grammar ->
                let lexerDefs =
                    [ for (k, v) in List.rev lexerMaps do
                          let v = simplify_lexerule v
                          let n = name_of_named_term k

                          if Set.contains k analyzer.IgnoreSet then
                              yield word n + word ":" + parensIfLOr v + word "-> channel(HIDDEN);"
                          elif Set.contains k analyzer.ReferencedNamedTokens then
                              yield word n + word ":" + word (mk_lexer v) + word ";"
                          else
                              yield word "fragment" + word n + word ":" + parensIfLOr v + word ";" ]

                let start_mangled = name_of_nonterm "start"
                let import_names = importTypeNames @ importVarNames
                let inner_names = ResizeArray<string>()

                let file_constructors =
                    $"{langName}Constructor.ts",
                    vsep
                        [ yield word "import * as antlr from 'antlr4ng';"
                          let import_names = String.concat ", " import_names
                          yield word $"import {{ {import_names} }} from './{langName}Require';"
                          yield word $"export * from './{langName}Require'"

                          let adtCases = analyzer.Sigma.GetADTCases()
                          yield empty

                          for (typename, cases) in adtCases do
                              let union_names = ResizeArray<string>()

                              for (ctor_name, fields) in Map.toArray cases do
                                  let fields =
                                      List.map (fun (fname, t) -> word (rename_field fname), word (cg_type t)) fields

                                  let case_name = rename_type ctor_name
                                  let ctor_name' = rename_ctor ctor_name
                                  union_names.Add case_name
                                  inner_names.Add ctor_name'
                                  yield! define_record (case_name, ctor_name', fields)

                              let typename' = rename_type typename
                              let union_names = String.concat " | " union_names
                              yield word $"export type {typename'} = {union_names}"
                              inner_names.Add typename'

                          for (typename, shape) in analyzer.Sigma.GetRecordTypes() do
                              let typename' = rename_type typename
                              let varname = rename_ctor typename
                              inner_names.Add typename'
                              inner_names.Add varname

                              let tparams =
                                  if List.isEmpty shape.parameters then
                                      ""
                                  else
                                      shape.parameters
                                      |> List.map typeParameter_mangling
                                      |> String.concat ", "
                                      |> fun tparams -> "<" + tparams + ">"

                              let fields =
                                  [ for (fname, t) in shape.fields -> word (rename_field fname), word (cg_type t) ]

                              yield! define_record (typename' + tparams, varname + tparams, fields) ]

                let file_antlr =
                    langName + ".g4",
                    vsep
                        [ yield word $"grammar {langName};"
                          yield word "@parser::header {"
                          if not (List.isEmpty import_names) then
                              let all_import_names = (List.ofSeq inner_names @ import_names) |> String.concat ", "
                              let require_name = escapeString $"./{langName}Constructor"
                              yield word $"import {{ {all_import_names} }} from {require_name}"
                          // generated parser by antlr4ng already imports antlr4ng:
                          // // yield word $"import * as antlr from 'antlr4ng'"
                          for each in usedFunctionTypes do
                              yield word (genFuncTypeDef each)
                          yield word "}"
                          yield
                              word
                                  $"start returns [result: {cg_type start_t}]: v={start_mangled} EOF {{ $result = localContext._v.result; }};"
                          yield file_grammar
                          yield! lexerDefs ]

                [| file_antlr; file_constructors |]
