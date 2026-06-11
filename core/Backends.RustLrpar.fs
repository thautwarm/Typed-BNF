module tbnf.Backends.RustLrpar

open System
open System.Text
open Fable.Sedlex.PrettyDoc
open tbnf.Grammar
open tbnf.Analysis
open tbnf.Utils
open tbnf.Exceptions
open tbnf.Backends.Common
open tbnf.Backends.Common.NameMangling

let RustKeywords =
    [| "as"
       "async"
       "await"
       "box"
       "break"
       "const"
       "continue"
       "crate"
       "dyn"
       "else"
       "enum"
       "extern"
       "false"
       "fn"
       "for"
       "if"
       "impl"
       "in"
       "let"
       "loop"
       "match"
       "mod"
       "move"
       "mut"
       "pub"
       "ref"
       "return"
       "self"
       "Self"
       "static"
       "struct"
       "super"
       "trait"
       "true"
       "type"
       "union"
       "unsafe"
       "use"
       "where"
       "while"
       "abstract"
       "become"
       "do"
       "final"
       "macro"
       "override"
       "priv"
       "typeof"
       "unsized"
       "virtual"
       "yield"
       "try" |]

let private docFromString (content: string) =
    let content = content.Replace("\r\n", "\n").TrimEnd('\n')

    if content = "" then
        empty
    else
        content.Split('\n') |> Array.toList |> List.map word |> vsep

let private snakeName (name: string) =
    let sb = StringBuilder()

    let appendUnderscore () =
        if sb.Length > 0 && sb.[sb.Length - 1] <> '_' then
            ignore (sb.Append('_'))

    for i = 0 to name.Length - 1 do
        let c = name.[i]

        if isUpper c then
            if i > 0 then
                appendUnderscore ()

            ignore (sb.Append(Char.ToLowerInvariant c))
        elif isLower c || isDigit c then
            ignore (sb.Append c)
        else
            appendUnderscore ()

    let s = sb.ToString().Trim('_')
    if s = "" then "tbnf_lang" else s

let private rustRegexChar (c: char) =
    match c with
    | '\\' -> "\\\\"
    | '\t' -> "\\t"
    | '\n' -> "\\n"
    | '\r' -> "\\r"
    | ' ' -> "[ ]"
    | '.'
    | '+'
    | '*'
    | '?'
    | '^'
    | '$'
    | '('
    | ')'
    | '['
    | ']'
    | '{'
    | '}'
    | '|'
    | '/'
    | '<'
    | '>' -> "\\" + string c
    | _ -> string c

let private rustRegexClassChar (c: char) =
    match c with
    | '\\' -> "\\\\"
    | '\t' -> "\\t"
    | '\n' -> "\\n"
    | '\r' -> "\\r"
    | ']'
    | '^'
    | '-' -> "\\" + string c
    | _ -> string c

let private rustString (s: string) = escapeString s

let codegen (analyzer: Analyzer) (cg_options: CodeGenOptions) (langName: string) (stmts: definition array) =
    let rename_ctor = Option.defaultValue id cg_options.rename_ctor
    let rename_var = Option.defaultValue id cg_options.rename_var
    let rename_field = Option.defaultValue id cg_options.rename_field
    let rename_type = Option.defaultValue id cg_options.rename_type

    let abandoned_names = Set.ofArray RustKeywords

    let rustIdentDescr usedNames =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    let ident = isLower c || isUpper c || c = '_'
                    if i = 0 then ident else ident || isDigit c),
                (fun i c ->
                    if i = 0 && isDigit c then
                        "_" + string c
                    else
                        "_" + (int c).ToString("X") + "_")
            )
            .WithNameEnv
            { usedNames = usedNames }

    let tokenIdentDescr =
        IdentifierDescriptor
            .Create(
                (fun i c ->
                    if i = 0 then
                        isUpper c
                    else
                        isUpper c || c = '_' || isDigit c),
                (fun i c ->
                    if isLower c then
                        string (Char.ToUpperInvariant c)
                    elif i = 0 then
                        "T_" + (int c).ToString("X")
                    else
                        "_" + (int c).ToString("X") + "_")
            )
            .WithNameEnv
            { usedNames = Set.ofList [ "EOF" ] }

    let mangleRust = mangle abandoned_names
    let valueIdentDescr = rustIdentDescr Set.empty
    let typeIdentDescr = rustIdentDescr Set.empty
    let fieldIdentDescr = rustIdentDescr Set.empty

    let moduleStem = snakeName langName |> fun s -> mangleRust (rustIdentDescr Set.empty) s
    let lexerFile = moduleStem + ".l"
    let parserFile = moduleStem + ".y"
    let lexerModule = moduleStem + "_l"
    let parserModule = moduleStem + "_y"
    let crateName = moduleStem.Replace('-', '_')

    let mutable typeNameMap: Map<string, string> = Map.empty
    let mutable valueNameMap: Map<string, string> = Map.empty
    let mutable ctorNameMap: Map<string, string> = Map.empty
    let mutable fieldNameMap: Map<string, string> = Map.empty
    let mutable symmap: Map<symbol, string> = Map.empty
    let mutable literalTokenNames: Map<string, string> = Map.empty
    let mutable lexerMaps: Map<string, lexerule> = Map.empty

    let typeParamName (name: string) =
        let raw = "Tbnf" + capitalized name
        let chars = raw.ToCharArray()

        for i = 0 to chars.Length - 1 do
            let c = chars.[i]
            let valid =
                if i = 0 then
                    isLower c || isUpper c || c = '_'
                else
                    isLower c || isUpper c || isDigit c || c = '_'

            if not valid then
                chars.[i] <- '_'

        let s = String(chars)
        if Set.contains s abandoned_names then s + "_" else s

    let rustTypeName name =
        match Map.tryFind name typeNameMap with
        | Some n -> n
        | None ->
            let n = rename_type name |> mangleRust typeIdentDescr
            typeNameMap <- Map.add name n typeNameMap
            n

    let rustValueNameWith renamer name =
        match Map.tryFind name valueNameMap with
        | Some n -> n
        | None ->
            let n = renamer name |> mangleRust valueIdentDescr
            valueNameMap <- Map.add name n valueNameMap
            n

    let rustValueName name = rustValueNameWith rename_var name

    let rustCtorName name =
        match Map.tryFind name ctorNameMap with
        | Some n -> n
        | None ->
            let n = rename_ctor name |> mangleRust typeIdentDescr
            ctorNameMap <- Map.add name n ctorNameMap
            n

    let rustCtorFunctionName name = rustValueNameWith rename_ctor name

    let rustFieldName name =
        match Map.tryFind name fieldNameMap with
        | Some n -> n
        | None ->
            let n = rename_field name |> mangleRust fieldIdentDescr
            fieldNameMap <- Map.add name n fieldNameMap
            n

    let namedTokenName name = mangle (Set.ofList [ "EOF" ]) tokenIdentDescr name

    let literalTokenName lit =
        match Map.tryFind lit literalTokenNames with
        | Some n -> n
        | None ->
            let n = namedTokenName ("T_LIT_" + string literalTokenNames.Count)
            literalTokenNames <- Map.add lit n literalTokenNames
            n

    let cgSymbol sym =
        match Map.tryFind sym symmap with
        | Some n -> n
        | None ->
            let n =
                match sym with
                | Term(define, true) -> literalTokenName define
                | Term(define, false) -> namedTokenName define
                | Nonterm name -> rustValueName name
                | Macrocall _ -> invalidOp "macro not processed"

            symmap <- Map.add sym n symmap
            n

    let recordTypes = analyzer.Sigma.GetRecordTypes()
    let recordTypeNames = recordTypes |> List.map fst |> Set.ofList
    let adtCases = analyzer.Sigma.GetADTCases()
    let adtCtorNames =
        adtCases
        |> List.collect (fun (_, cases) -> cases |> Map.toList |> List.map fst)
        |> Set.ofList

    let externalTypes =
        stmts
        |> Array.choose (function
            | Decltype decl when decl.external -> Some(decl.ident, decl.parameters, decl.fields)
            | _ -> None)
        |> Array.toList

    let externalVars =
        stmts
        |> Array.choose (function
            | Declvar decl -> Some(decl.ident, decl.t)
            | _ -> None)
        |> Array.toList

    let externalVarNames = externalVars |> List.map fst |> Set.ofList

    let generatedTypeShapes =
        [ for typename, shape in recordTypes do
              yield typename, (shape.parameters, shape.fields |> List.map snd)
          for typename, cases in adtCases do
              yield
                  typename,
                  ([],
                   cases
                   |> Map.toList
                   |> List.collect (fun (_, fields) -> fields |> List.map snd))
          for typename, parameters, fields in externalTypes do
              if not (List.isEmpty fields) then
                  yield typename, (parameters, fields |> List.map (fun (_, t, _) -> t))
              elif not (List.isEmpty parameters) then
                  // An opaque Rust extern type such as maybe<a> may be implemented by
                  // the user as an enum/struct that stores its type parameter. Treat
                  // parameters as potential unboxed storage so recursive positions
                  // crossing extern generics are boxed conservatively.
                  yield typename, (parameters, parameters |> List.map TVar) ]
        |> Map.ofList

    let rec substTypeVariables (env: Map<string, monot>) (t: monot) =
        match t.Prune() with
        | TVar a ->
            match Map.tryFind a env with
            | Some t -> t
            | None -> TVar a
        | TApp(f, args) -> TApp(substTypeVariables env f, args |> List.map (substTypeVariables env))
        | TFun(args, ret) ->
            TFun(args |> List.map (fun (name, t) -> name, substTypeVariables env t), substTypeVariables env ret)
        | t -> t

    let rec typeCanReachThroughUnboxedStorage (target: string) (seen: Set<string>) (env: Map<string, monot>) (t: monot) =
        let t = substTypeVariables env t

        match t.Prune() with
        | TConst n -> typeNameCanReachThroughUnboxedStorage target seen n []
        | TApp(TConst "list", [ _ ]) ->
            // Vec<T> already gives Rust the required indirection for recursive element types.
            false
        | TApp(TConst "tuple", args) ->
            args
            |> List.exists (typeCanReachThroughUnboxedStorage target seen env)
        | TApp(TConst n, args) -> typeNameCanReachThroughUnboxedStorage target seen n args
        | TApp(f, args) ->
            typeCanReachThroughUnboxedStorage target seen env f
            || (args |> List.exists (typeCanReachThroughUnboxedStorage target seen env))
        | TFun _ ->
            // Function values are emitted behind Box<dyn Fn...>.
            false
        | TVar _
        | TRef _ -> false

    and typeNameCanReachThroughUnboxedStorage target seen typename args =
        if typename = target then
            true
        elif Set.contains typename seen then
            false
        else
            match Map.tryFind typename generatedTypeShapes with
            | None -> false
            | Some(parameters, fields) ->
                let env =
                    List.zip parameters args
                    |> Map.ofList

                fields
                |> List.exists (typeCanReachThroughUnboxedStorage target (Set.add typename seen) env)

    let shouldBoxStored (owner: string) (t: monot) =
        typeCanReachThroughUnboxedStorage owner Set.empty Map.empty t

    let topTypeName (t: monot) =
        match t.Prune() with
        | TConst n -> Some n
        | TApp(TConst n, _) -> Some n
        | _ -> None

    let rec cgType (t: monot) =
        match t.Prune() with
        | TConst "int" -> "i64"
        | TConst "float" -> "f64"
        | TConst "bool" -> "bool"
        | TConst "str" -> "String"
        | TConst "token" -> "TbnfToken"
        | TConst n -> rustTypeName n
        | TVar a -> typeParamName a
        | TRef _ -> raise UnsolvedTypeVariable
        | TFun(args, r) ->
            let args = args |> List.map (snd >> cgType) |> String.concat ", "
            $"Box<dyn Fn({args}) -> {cgType r}>"
        | TApp(TConst "list", [ arg ]) -> $"Vec<{cgType arg}>"
        | TApp(TConst "tuple", []) -> "()"
        | TApp(TConst "tuple", [ arg ]) -> $"({cgType arg},)"
        | TApp(TConst "tuple", args) -> args |> List.map cgType |> String.concat ", " |> fun s -> $"({s})"
        | TApp(f, args) ->
            let f = cgType f
            let args = args |> List.map cgType |> String.concat ", "
            $"{f}<{args}>"

    let rec cgStoredType owner (t: monot) =
        if shouldBoxStored owner t then
            $"Box<{cgType t}>"
        else
            cgType t

    let boxIfStored owner (t: monot) (expr: string) =
        if shouldBoxStored owner t then
            $"Box::new({expr})"
        else
            expr

    let rec cgLexerRule (def: lexerule) : string =
        let atom def =
            match def with
            | LNumber
            | LWildcard
            | LStr _
            | LRange _
            | LRef _
            | LNot _ -> cgLexerRule def
            | _ -> "(" + cgLexerRule def + ")"

        match def with
        | LNumber -> "[0-9]"
        | LWildcard -> "."
        | LStr s -> s |> Seq.map rustRegexChar |> String.concat ""
        | LRange(l, r) -> $"[{rustRegexClassChar (char l)}-{rustRegexClassChar (char r)}]"
        | LRef s ->
            match Map.tryFind s lexerMaps with
            | Some rule -> atom rule
            | None -> raise <| UnboundLexer s
        | LGroup e -> "(" + cgLexerRule e + ")"
        | LSeq xs -> xs |> List.map atom |> String.concat ""
        | LOr xs -> xs |> List.map atom |> String.concat "|"
        | LPlus e -> atom e + "+"
        | LStar e -> atom e + "*"
        | LOptional e -> atom e + "?"
        | LNot(LStr s) when s.Length = 1 -> $"[^{rustRegexClassChar s.[0]}]"
        | LNot(LRange(l, r)) -> $"[^{rustRegexClassChar (char l)}-{rustRegexClassChar (char r)}]"
        | LNot other -> invalidOp ($"rust-lrpar backend can only negate single-character lexer atoms for now: {other}")

    let isAdtCtor name = Set.contains name adtCtorNames
    let isRecordCtor name = Set.contains name recordTypeNames
    let isExternalValue name = Set.contains name externalVarNames

    let globalName name =
        if isAdtCtor name then rustCtorFunctionName name
        else rustValueName name

    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value) :: tl when key' = key -> Some value
        | _ :: tl -> tryLookup key tl

    let slotExpr (isTerminal: bool array) i =
        if isTerminal.[i - 1] then
            $"tbnf_token($lexer, ${i}.map_err(|_| TbnfError::InsertedToken)?)"
        else
            $"${i}?"

    let rec cgExpr (asCallee: bool) (isTerminal: bool array) (scope: list<string * string>) (curr: expr) : string list * string =
        analyzer.Sigma.WithExpr curr <| fun () ->
            match curr.node with
            | EInt i -> [], string i
            | EFlt f -> [], f.ToString("G", Globalization.CultureInfo.InvariantCulture)
            | EBool true -> [], "true"
            | EBool false -> [], "false"
            | EStr s -> [], $"String::from({rustString s})"
            | ESlot i -> [], slotExpr isTerminal i
            | EVar(var, specializations) ->
                match tryLookup var scope with
                | Some v -> [], v
                | None ->
                    if not (analyzer.Sigma.GlobalVariables.ContainsKey var) then
                        raise <| UnboundVariable var

                    let name = globalName var

                    let specs =
                        specializations.Value
                        |> List.map (fun t -> t.Prune() |> cgType)

                    let name =
                        if List.isEmpty specs then
                            name
                        else
                            name + "::<" + String.concat ", " specs + ">"

                    if asCallee then
                        [], name
                    else
                        match curr.t.Prune() with
                        | TFun(args, _) when isExternalValue var && not (isAdtCtor var) && not (isRecordCtor var) ->
                            let fnType = cgType curr.t
                            let lambdaArgs =
                                args
                                |> List.mapi (fun i (_, t) -> $"arg{i}: {cgType t}")

                            let callArgs =
                                args
                                |> List.mapi (fun i _ -> $"&(arg{i})")

                            let lambdaArgs = String.concat ", " lambdaArgs
                            let callArgs = String.concat ", " callArgs
                            [], $"Box::new(move |{lambdaArgs}| {name}({callArgs})) as {fnType}"
                        | TFun _ ->
                            let fnType = cgType curr.t
                            [], $"Box::new({name}) as {fnType}"
                        | _ -> [], name
            | EField(value, field) ->
                let stmts, value' = cgExpr false isTerminal scope value
                let fieldExpr = $"({value'}).{rustFieldName field}"

                match topTypeName value.t with
                | Some owner when shouldBoxStored owner curr.t -> stmts, $"*({fieldExpr})"
                | _ -> stmts, fieldExpr
            | ETuple elts ->
                let stmts, exprs =
                    (([], []), elts)
                    ||> List.fold (fun (stmts, exprs) e ->
                        let s, e' = cgExpr false isTerminal scope e
                        stmts @ s, exprs @ [ e' ])

                match exprs with
                | [] -> stmts, "()"
                | [ e ] -> stmts, $"({e},)"
                | _ -> stmts, "(" + String.concat ", " exprs + ")"
            | EList elts ->
                let stmts, exprs =
                    (([], []), elts)
                    ||> List.fold (fun (stmts, exprs) e ->
                        let s, e' = cgExpr false isTerminal scope e
                        stmts @ s, exprs @ [ e' ])

                stmts, "vec![" + String.concat ", " exprs + "]"
            | ELet(name, value, body) ->
                let valueStmts, valueExpr = cgExpr false isTerminal scope value
                let localName = mangleRust valueIdentDescr name
                let scope' = (name, localName) :: scope
                let bodyStmts, bodyExpr = cgExpr false isTerminal scope' body
                valueStmts @ [ $"let {localName} = {valueExpr};" ] @ bodyStmts, bodyExpr
            | EFun(args, body) ->
                let localScope =
                    args
                    |> List.map (fun (arg, t) -> arg, mangleRust valueIdentDescr arg, t)

                let scope' = (localScope |> List.map (fun (a, b, _) -> a, b)) @ scope
                let bodyStmts, bodyExpr = cgExpr false isTerminal scope' body

                let argsDoc =
                    localScope
                    |> List.map (fun (_, mangled, t) -> $"{mangled}: {cgType t}")
                    |> String.concat ", "

                let bodyDoc = String.concat " " (bodyStmts @ [ bodyExpr ])
                [], $"Box::new(move |{argsDoc}| {{ {bodyDoc} }}) as {cgType curr.t}"
            | EApp(f, args) ->
                let fStmts, fExpr = cgExpr true isTerminal scope f

                let argStmts, argExprs =
                    (([], []), args)
                    ||> List.fold (fun (stmts, exprs) arg ->
                        let s, e = cgExpr false isTerminal scope arg
                        stmts @ s, exprs @ [ e ])

                let isExternCall =
                    match f.node with
                    | EVar(var, _) -> isExternalValue var && not (isAdtCtor var) && not (isRecordCtor var)
                    | _ -> false

                let args =
                    if isExternCall then
                        argExprs |> List.map (fun e -> "&(" + e + ")")
                    else
                        argExprs

                let joinedArgs = String.concat ", " args
                fStmts @ argStmts, $"{fExpr}({joinedArgs})"

    let cgAction isTerminal expr =
        let stmts, returned = cgExpr false isTerminal [] expr
        let lines = stmts @ [ $"Ok({returned})" ]
        "{ " + String.concat " " lines + " }"

    let cgProd prod =
        let isTerminal =
            [| for sym in prod.symbols ->
                   match sym with
                   | Term _ -> true
                   | _ -> false |]

        let rhs =
            prod.symbols
            |> List.map (fun sym ->
                let n = cgSymbol sym

                match sym with
                | Term _ -> "'" + n + "'"
                | Nonterm _ -> n
                | Macrocall _ -> invalidOp "macro not processed")
        let rhs = if List.isEmpty rhs then "/* empty */" else String.concat " " rhs
        rhs + " " + cgAction isTerminal prod.action

    let cgRule lhs define =
        let ntname = cgSymbol (Nonterm lhs)
        let t = analyzer.Omega.[lhs].Prune() |> cgType

        let alternatives =
            define
            |> List.mapi (fun i (pos, prod) ->
                analyzer.Sigma.SetCurrentPos pos
                analyzer.Sigma.SetCurrentDefinitionBranch i
                "    " + cgProd prod)
            |> String.concat "\n  |\n"

        $"{ntname} -> Result<{t}, TbnfError>:\n{alternatives}\n  ;"

    let fieldDecl owner (field, t) =
        $"    pub {rustFieldName field}: {cgStoredType owner t},"

    let ctorArgDecl (idx: int) (field, t) =
        let name =
            match field with
            | "" -> "arg" + string idx
            | f -> rustFieldName f

        name, $"{name}: {cgType t}"

    let genRecord (typename, shape: Shape) =
        let typeName = rustTypeName typename
        let tparams = shape.parameters |> List.map typeParamName
        let genericDecl = if List.isEmpty tparams then "" else "<" + String.concat ", " tparams + ">"
        let fields = shape.fields |> List.map (fieldDecl typename) |> String.concat "\n"
        let fields = if fields = "" then "    _private: ()," else fields

        let ctorArgs =
            shape.fields |> List.mapi (fun i f -> ctorArgDecl i f)

        let ctorParams = ctorArgs |> List.map snd |> String.concat ", "
        let ctorName = rustValueName typename
        let ctorFields =
            ctorArgs
            |> List.zip shape.fields
            |> List.map (fun ((field, t), (argName, _)) ->
                $"        {rustFieldName field}: {boxIfStored typename t argName},")
            |> String.concat "\n"

        let ctorFields = if ctorFields = "" then "        _private: ()," else ctorFields

        $"#[allow(non_camel_case_types)]\n#[derive(Clone, Debug, PartialEq)]\npub struct {typeName}{genericDecl} {{\n{fields}\n}}\n\n#[allow(non_snake_case)]\npub fn {ctorName}{genericDecl}({ctorParams}) -> {typeName}{genericDecl} {{\n    {typeName} {{\n{ctorFields}\n    }}\n}}"

    let genAdt (typename, cases: Map<string, (string * monot) list>) =
        let typeName = rustTypeName typename

        let variants =
            cases
            |> Map.toList
            |> List.map (fun (ctor, fields) ->
                let ctorName = rustCtorName ctor
                match fields with
                | [] -> $"    {ctorName},"
                | _ ->
                    let ts = fields |> List.map (snd >> cgStoredType typename) |> String.concat ", "
                    $"    {ctorName}({ts}),")
            |> String.concat "\n"

        let funcs =
            cases
            |> Map.toList
            |> List.map (fun (ctor, fields) ->
                let ctorName = rustCtorName ctor
                let funcName = rustCtorFunctionName ctor
                let args = fields |> List.mapi (fun i f -> ctorArgDecl i f)
                let pars = args |> List.map snd |> String.concat ", "
                let callArgs =
                    fields
                    |> List.zip args
                    |> List.map (fun ((argName, _), (_, t)) -> boxIfStored typename t argName)
                    |> String.concat ", "

                match fields with
                | [] -> $"#[allow(non_snake_case)]\npub fn {funcName}() -> {typeName} {{ {typeName}::{ctorName} }}"
                | _ -> $"#[allow(non_snake_case)]\npub fn {funcName}({pars}) -> {typeName} {{ {typeName}::{ctorName}({callArgs}) }}")
            |> String.concat "\n\n"

        $"#[allow(non_camel_case_types)]\n#[derive(Clone, Debug, PartialEq)]\npub enum {typeName} {{\n{variants}\n}}\n\n{funcs}"

    let genExternalType (typename, parameters, fields: (string * monot * position) list) =
        let typeName = rustTypeName typename
        let tparams = parameters |> List.map typeParamName
        let genericDecl = if List.isEmpty tparams then "" else "<" + String.concat ", " tparams + ">"

        if List.isEmpty fields then
            let phantom =
                match tparams with
                | [] -> ""
                | _ -> "(pub std::marker::PhantomData<(" + String.concat ", " tparams + ",)>)"

            $"#[allow(non_camel_case_types)]\n#[derive(Clone, Debug, PartialEq)]\npub struct {typeName}{genericDecl}{phantom};"
        else
            let fields =
                fields
                |> List.map (fun (field, t, _) -> $"    pub {rustFieldName field}: {cgType t},")
                |> String.concat "\n"

            $"#[allow(non_camel_case_types)]\n#[derive(Clone, Debug, PartialEq)]\npub struct {typeName}{genericDecl} {{\n{fields}\n}}"

    let genExternVar (name, t: polyt) =
        let vars, body =
            match t with
            | Mono t -> [], t
            | Poly(vars, t) -> vars, t

        match body.Prune() with
        | TFun(args, ret) ->
            let genericDecl =
                if List.isEmpty vars then
                    ""
                else
                    vars
                    |> List.map typeParamName
                    |> String.concat ", "
                    |> fun s -> "<" + s + ">"

            let pars =
                args
                |> List.mapi (fun i (_, t) -> $"arg{i}: &{cgType t}")
                |> String.concat ", "

            $"#[allow(non_snake_case, unused_variables)]\npub fn {rustValueName name}{genericDecl}({pars}) -> {cgType ret} {{\n    unimplemented!(\"external function `{name}` must be provided by the user\")\n}}"
        | _ ->
            $"// external value `{name}` has non-function type `{cgType body}` and must be provided manually"

    let runtimeCode =
        [ "#[derive(Clone, Debug, PartialEq)]"
          "pub struct TbnfToken {"
          "    pub text: String,"
          "    pub start: usize,"
          "    pub end: usize,"
          "}"
          ""
          "#[derive(Clone, Debug, PartialEq)]"
          "pub enum TbnfError {"
          "    InsertedToken,"
          "}"
          ""
          "#[allow(dead_code)]"
          "fn tbnf_token<'input>(lexer: &dyn lrpar::NonStreamingLexer<'input, lrlex::DefaultLexerTypes>, lexeme: lrlex::DefaultLexeme) -> TbnfToken {"
          "    let span = lexeme.span();"
          "    TbnfToken {"
          "        text: lexer.span_str(span).to_string(),"
          "        start: span.start(),"
          "        end: span.end(),"
          "    }"
          "}" ]
        |> String.concat "\n"

    let yHeader =
        [ "%grmtools{yacckind: Grmtools}"
          "%start start"
          "%%" ]
        |> String.concat "\n"

    let grammarRules =
        stmts
        |> Array.choose (function
            | Defrule decl -> Some(cgRule decl.lhs decl.define)
            | _ -> None)
        |> String.concat "\n\n"

    let typeDefinitions =
        [ yield runtimeCode
          yield "#[allow(unused_imports)]"
          yield "use crate::externs::*;"
          for adt in adtCases do
              yield genAdt adt
          for record in recordTypes do
              yield genRecord record ]
        |> String.concat "\n\n"

    let parserContent = yHeader + "\n" + grammarRules + "\n%%\n" + typeDefinitions + "\n"

    // Collect lexer definitions after grammar generation, because cgSymbol discovers literal tokens lazily.
    for stmt in stmts do
        match stmt with
        | Deflexer decl -> lexerMaps <- Map.add decl.lhs decl.define lexerMaps
        | _ -> ()

    let lexerLines = ResizeArray<string>()
    lexerLines.Add "%%"

    for KeyValue(lit, tokenName) in literalTokenNames do
        lexerLines.Add(cgLexerRule (LStr lit) + " \"" + tokenName + "\"")

    for tokenName in analyzer.TokenFragments do
        if Set.contains tokenName analyzer.ReferencedNamedTokens && not (Set.contains tokenName analyzer.IgnoreSet) then
            match Map.tryFind tokenName lexerMaps with
            | Some rule -> lexerLines.Add(cgLexerRule rule + " \"" + cgSymbol (Term(tokenName, false)) + "\"")
            | None -> raise <| UnboundLexer tokenName

    for tokenName in analyzer.IgnoreSet do
        match Map.tryFind tokenName lexerMaps with
        | Some rule -> lexerLines.Add(cgLexerRule rule + " ;")
        | None -> raise <| UnboundLexer tokenName

    let lexerContent = String.concat "\n" (Seq.toList lexerLines) + "\n"

    let startType =
        match Map.tryFind "start" analyzer.Omega with
        | None -> raise <| UnboundNonterminal "start"
        | Some t -> cgType (t.Prune())

    let cargoToml =
        $"[package]\nname = \"{crateName}\"\nversion = \"0.1.0\"\nedition = \"2021\"\n\n[build-dependencies]\ncfgrammar = \"0.14.2\"\nlrlex = \"0.14.2\"\nlrpar = \"0.14.2\"\n\n[dependencies]\ncfgrammar = \"0.14.2\"\nlrlex = \"0.14.2\"\nlrpar = \"0.14.2\"\n\n[lib]\nname = \"{crateName}\"\npath = \"src/lib.rs\"\n"

    let buildRs =
        $"use cfgrammar::yacc::YaccKind;\nuse lrlex::CTLexerBuilder;\n\nfn main() {{\n    CTLexerBuilder::new()\n        .lrpar_config(|ctp| {{\n            ctp.yacckind(YaccKind::Grmtools)\n                .grammar_in_src_dir(\"{parserFile}\")\n                .unwrap()\n        }})\n        .lexer_in_src_dir(\"{lexerFile}\")\n        .unwrap()\n        .build()\n        .unwrap();\n}}\n"

    let libRs =
        $"pub mod externs;\n\nuse lrlex::lrlex_mod;\nuse lrpar::lrpar_mod;\n\nlrlex_mod!(\"{lexerFile}\");\nlrpar_mod!(\"{parserFile}\");\n\n#[allow(unused_imports)]\npub use externs::*;\npub use {parserModule}::*;\n\n#[derive(Debug)]\npub enum ParseFailure {{\n    Syntax(Vec<String>),\n    Action({parserModule}::TbnfError),\n    NoParse,\n}}\n\npub fn parse(input: &str) -> Result<{startType}, ParseFailure> {{\n    let lexerdef = {lexerModule}::lexerdef();\n    let lexer = lexerdef.lexer(input);\n    let (result, errors) = {parserModule}::parse(&lexer);\n\n    if !errors.is_empty() {{\n        return Err(ParseFailure::Syntax(errors.into_iter().map(|e| format!(\"{{:?}}\", e)).collect()));\n    }}\n\n    match result {{\n        Some(Ok(value)) => Ok(value),\n        Some(Err(error)) => Err(ParseFailure::Action(error)),\n        None => Err(ParseFailure::NoParse),\n    }}\n}}\n"

    let mainRs =
        $"use std::io::Read;\n\nfn main() {{\n    let mut input = String::new();\n    std::io::stdin().read_to_string(&mut input).unwrap();\n\n    match {crateName}::parse(&input) {{\n        Ok(value) => println!(\"{{:#?}}\", value),\n        Err(error) => {{\n            eprintln!(\"{{:#?}}\", error);\n            std::process::exit(1);\n        }}\n    }}\n}}\n"

    let externsRs =
        [ yield "#![allow(non_snake_case, non_camel_case_types, dead_code, unused_imports)]"
          yield $"use crate::{parserModule}::*;"
          yield ""
          for externalType in externalTypes do
              yield genExternalType externalType
              yield ""
          for externalVar in externalVars do
              yield genExternVar externalVar
              yield "" ]
        |> String.concat "\n"

    [| "Cargo.toml", docFromString cargoToml
       "build.rs", docFromString buildRs
       "src/lib.rs", docFromString libRs
       "src/main.rs", docFromString mainRs
       "src/externs.rs", docFromString externsRs
       "src/" + lexerFile, docFromString lexerContent
       "src/" + parserFile, docFromString parserContent |]
