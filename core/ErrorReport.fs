(* this module implements how errors are rendered in Typed BNF *)
module tbnf.ErrorReport

open tbnf.Exceptions
open tbnf.Grammar
open tbnf.Inspect

let renderTypeKind (i: int) =
    if i = 0 then
        "type"
    else
        List.replicate i "_" |> String.concat ", " |> (fun s -> $"type<{s}>")

let errorToReadableString (exc: exn) =
    let mutable covered = true

    let msg =
        match exc with
        | IllFormedType(t1, t2) ->
            let t1 = t1.Prune() |> inspectMonoType
            let t2 = t2.Prune() |> inspectMonoType
            $"recursive types are invalid: {t1} ~ {t2}"
        | TypeMismatch(t1, t2) ->
            let t1 = t1.Prune() |> inspectMonoType
            let t2 = t2.Prune() |> inspectMonoType
            $"type mismatch: {t1} ~ {t2}"
        | TypeUnexpected(got, expected) ->
            let got = got.Prune() |> inspectMonoType
            let expected = expected.Prune() |> inspectMonoType
            $"expected {got} ~ {expected}"
        | InvalidTypeApplication(t) ->
            let t = t.Prune() |> inspectMonoType
            $"invalid type application: {t}"
        | InvalidKind args ->
            let name = args.name
            let expect = args.expect
            let expectKindRepr = renderTypeKind expect
            let got = args.got
            let gotKindRepr = renderTypeKind got
            $"invalid kind: type constructor '{name}' expects kind {expect} ({expectKindRepr}) but got kind {got} ('{gotKindRepr}')"
        | NoField(t, field) ->
            let t = t.Prune() |> inspectMonoType
            $"no field '{field}' in type {t}"
        | CannotInferField(t) ->
            let t = t.Prune() |> inspectMonoType
            $"cannot infer field type for type {t}, please give annotations."
        | NoBaseName(t) ->
            let t = t.Prune() |> inspectMonoType
            $"type {t} has no object base name, and might not take fields."
        | NameError(name, NameErrorScope.TYPE, NameErrorKind.Duplicate) -> $"duplicate type variable '{name}'"
        | NameError(name, NameErrorScope.TYPE, NameErrorKind.Unbound) -> $"unbound type variable '{name}'"
        | NameError(name, NameErrorScope.VAR, NameErrorKind.Duplicate) -> $"duplicate variable '{name}'"
        | NameError(name, NameErrorScope.VAR, NameErrorKind.Unbound) -> $"unbound variable '{name}'"
        | NameError(name, NameErrorScope.NONTERM, NameErrorKind.Duplicate) -> $"duplicate nonterminal '{name}'"
        | NameError(name, NameErrorScope.NONTERM, NameErrorKind.Unbound) -> $"unbound nonterminal '{name}'"
        | NameError(name, NameErrorScope.LEXER, NameErrorKind.Duplicate) -> $"duplicate lexical rule '{name}'"
        | NameError(name, NameErrorScope.LEXER, NameErrorKind.Unbound) -> $"unbound lexical rule '{name}'"
        | ComponentAccessingOutOfBound(i, maxsize) ->
            let repr_i =
                match i with
                | 1 -> "1-st"
                | 2 -> "2-nd"
                | 3 -> "3-rd"
                | _ -> $"{i}-th"

            $"{repr_i} semantic value is out of bound (maxsize: {maxsize})"
        | MacroResolveError(name) -> $"cannot resolve macro '{name}'"
        | UnsolvedTypeVariable -> $"find unsolved type variable"
        | NotGlobalVariable(name) -> $"'{name}' is not global when checking if it is a constructor."
        | InvalidConstructorDefinination(ctorName, cause) ->
            match cause with
            | CauseExternalType(typename) -> $"constructor '{ctorName}' is defined for external type '{typename}'"
            | CauseRecordType(typename) -> $"constructor '{ctorName}' is defined for record type '{typename}'"
            | CauseGenericADTType(typename, parameters) ->
                let repr_parameters = parameters |> String.concat ", "
                let typename = $"{typename}<{repr_parameters}>"
                $"GADT constructor is not supported in Typed BNF, but '{ctorName}' is meant to be a GADT constructor for type '{typename}'"
            | CauseDuplicateConstructorName -> $"duplicate constructor name '{ctorName}'"
            | CauseInvalidConstructorType(t) ->
                let t = t.Prune() |> inspectMonoType
                $"invalid constructor type '{t}', expect a function type!"
        | MultipleEpsilonRules(name) -> $"multiple epsilon rules found for '{name}'"
        | e ->
            covered <- false
            $"uncognised error ({e.ToString()})"

    covered, msg

let exitFunc: (int -> unit) ref = ref (fun _ -> failwith "exit function not set")

let setExitFunc (f: int -> unit) = exitFunc.Value <- f

let withErrorHandler<'a> (getErrorTrace: unit -> ErrorTrace) (action: unit -> 'a) =
    try
        action ()
    with exc ->
        let errorCovered, errorMsg = errorToReadableString exc
        let errorTrace = getErrorTrace ()
        let currentPostion = errorTrace.currentPos
        let currentDef = errorTrace.whichDef
        let currentDefBranch = errorTrace.branch

        let exprStack =
            List.tryHead errorTrace.exprStack
            |> Option.map Inspect.showExpr
            |> function
                | None -> ""
                | Some str -> $"  in '{str}'\n"

        let stackTrace =
            let file = currentPostion.filename
            let line = currentPostion.line
            let col = currentPostion.col

            let (indicator, repr) =
                match currentDef with
                | definition.Defrule decl ->
                    let prod = snd decl.define.[currentDefBranch]
                    let str_Action = Inspect.showExpr prod.action

                    let str_Symbols =
                        prod.symbols |> List.map (fun x -> x.Inspect()) |> String.concat " "

                    decl.lhs, ($"{decl.lhs}: {str_Symbols} {{ {str_Action} }}")
                | definition.Defmacro decl ->
                    let prod = snd decl.define.[currentDefBranch]
                    let str_Params = decl.parameters |> String.concat ", "

                    let str_Symbols =
                        prod.symbols |> List.map (fun x -> x.Inspect()) |> String.concat " "

                    let str_Action = Inspect.showExpr prod.action
                    decl.lhs, $"{decl.lhs}({str_Params}) : {str_Symbols} {{ {str_Action} }}"
                | definition.Decltype def -> $"type declaration for {def.ident}", ""
                | definition.Declvar def -> $"variable declaration for {def.ident}", ""
                | definition.Declctor def -> $"constructor declaration for {def.ident}", ""
                | definition.Deflexer def -> $"lexer declaration for {def.lhs}", ""
                | definition.Defignore def -> $"ignore declaration for {def.ignoreList}", ""

            if repr = "" then
                $"File '{file}', line {line}, character {col}\n"
                + $"  at '{indicator}'\n"
                + $"  {errorMsg}\n"
            else
                $"File '{file}', line {line}, character {col}\n"
                + $"  at rule '{indicator}':\n  '{repr}'\n"
                + exprStack
                + $"  {errorMsg}\n"

        if errorCovered then
            printfn "%s" stackTrace
            (!exitFunc) 1
            failwith "exit function not set"
        else
            failwith stackTrace
