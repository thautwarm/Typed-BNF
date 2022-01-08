module tbnf.Inspect
open Grammar
let rec inspectMonoType (t: monot) =
    match t with
    | TRef x -> x.ToString()
    | TConst s -> s
    | TApp(TTuple, args) ->
        "(" + String.concat " * " (List.map inspectMonoType args) + ")"
    | TApp(f, args) ->
        inspectMonoType f +
        "<" + String.concat ", " (List.map inspectMonoType args) + ">"
    | TFun(fargs, ret) ->
        fargs
        |> List.map (fun (name, t) ->
            name + ": " + inspectMonoType t)
        |> String.concat ", "
        |> fun parameters ->
            "(" + parameters + ") ->" + inspectMonoType t
    | TVar x -> "'" + x


let rec showExpr (e: expr): string =
    match e.node with
    | node.EApp(f, args) ->
        failwith ""
