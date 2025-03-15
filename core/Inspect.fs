module tbnf.Inspect

open Grammar
open Utils

let rec inspectMonoType (t: monot) =
    match t with
    | TRef x -> x.ToString()
    | TConst s -> s
    | TApp(TTuple, args) -> "(" + String.concat " * " (List.map inspectMonoType args) + ")"
    | TApp(f, args) ->
        inspectMonoType f
        + "<"
        + String.concat ", " (List.map inspectMonoType args)
        + ">"
    | TFun(fargs, ret) ->
        fargs
        |> List.map (fun (name, t) -> name + ": " + inspectMonoType t)
        |> String.concat ", "
        |> fun parameters -> "(" + parameters + ") ->" + inspectMonoType ret
    | TVar x -> "'" + x


let rec showExpr (e: expr) : string =
    match e.node with
    | node.EApp(f, args) -> showExpr f + "(" + String.concat ", " (List.map showExpr args) + ")"
    | node.EVar(x, { contents = [] }) -> x
    | node.EVar(x, { contents = ts }) -> x + "<" + String.concat ", " (List.map inspectMonoType ts) + ">"
    | node.EBool(b) -> if b then "true" else "false"
    | node.EFlt(f) -> f.ToString()
    | node.EInt(i) -> i.ToString()
    | node.ETuple(es) -> "(" + String.concat ", " (List.map showExpr es) + ")"
    | node.EList(es) -> "[" + String.concat ", " (List.map showExpr es) + "]"
    | node.EField(e, attr) -> showExpr e + "." + attr
    | node.ESlot(i) -> "$" + i.ToString()
    | node.ELet(n, e, b) -> "let " + n + " = " + showExpr e + " in " + showExpr b
    | node.EFun(args, b) ->
        "fun "
        + String.concat " " (List.map (fun (name, t) -> "(" + name + ": " + inspectMonoType t + ")") args)
        + " -> "
        + showExpr b
    | node.EStr(s) -> escapeString s
