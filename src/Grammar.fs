﻿module tbnf.Grammar
open tbnf.Utils

type Cell<'a when 'a: not struct>() =
    let mutable _cell: 'a = Unchecked.defaultof<'a>

    member this.Set a = _cell <- a
    member this.Get = _cell
    member this.IsNull = obj.ReferenceEquals(_cell, Unchecked.defaultof<'a>)

    override __.ToString() =
        if __.IsNull then "<null>"
        else __.Get.ToString()

type position =
    { line: int
      col: int
      filename: string }
    with static member Fake = { line = 0; col = 0; filename = "" }

and node =
    | EApp of expr * expr list
    | ETuple of expr list
    | EList of expr list
    | EField of expr * string
    | ELet of string * expr * expr
    | EFun of (string * monot) list * expr
    | EVar of string * monot list ref
    | ESlot of int

    | EInt of int
    | EStr of string
    | EFlt of float
    | EBool of bool


and expr =
    { node: node
      pos: position
      t: monot }

    static member WithNode expr node = { expr with node = node }

    member this.TransformChildren (!) =
        expr.WithNode this
        <| match this.node with
           | EApp (f, args) -> EApp(!f, List.map (!) args)
           | ETuple elts -> ETuple <| List.map (!) elts
           | EList elts -> EList <| List.map (!) elts
           | EField (value, attr) -> EField(!value, attr)
           | ELet (n, value, body) -> ELet(n, !value, !body)
           | EFun (args, body) -> EFun(args, body)
           | ESlot _
           | EVar _
           | EStr _
           | EInt _
           | EFlt _
           | EBool _ as a -> a

    member x.DeepCopy() =
        let rec transformer (x: expr) =
            match x.node with
            | EVar (s, r) -> expr.WithNode x <| EVar(s, ref r.Value)
            | _ -> x.TransformChildren transformer

        transformer x

and monot =
    | TRef of Cell<monot>
    | TConst of string
    | TApp of monot * monot list
    | TFun of (string * monot) list * monot
    | TVar of string


    member this.FindAnyChildren(predicate: monot -> bool) =

        match this with
           | TConst _
           | TVar _
           | TRef _ -> false
           | TApp (f, args) -> predicate f || List.exists predicate args
           | TFun (args, ret) -> List.exists (fun (_, b) -> predicate b) args || predicate ret

    member this.TransformChildren(ap: monot -> monot) =
        match this with
        | TConst _
        | TVar _
        | TRef _ as a -> a
        | TApp (f, args) -> TApp(ap f, List.map ap args)
        | TFun (args, ret) -> TFun(List.map (fun ab -> fst ab, ap (snd ab)) args, ap ret)

    member this.SubstGen(ty_arguments: Map<string, monot>) =
        let rec findAndSubst (t) =
            match t with
            | TConst x when Map.containsKey x ty_arguments -> ty_arguments.[x]
            | _ -> t.TransformChildren findAndSubst
        findAndSubst this

    member this.ApplyToChildren((!): monot -> unit) =
        match this with
        | TConst _
        | TVar _
        | TRef _ -> ()
        | TApp (f, args) ->
            !f
            List.iter (!) args
        | TFun (args, ret) ->
            List.iter (fun (_, b) -> !b) args
            !ret

    member this.Prune() =
        let rec prune t =
            match t with
            | TRef a when a.IsNull -> t
            | TRef a ->
                let r = prune a.Get
                a.Set r
                r
            | a -> a.TransformChildren prune

        prune this

and polyt =
    | Poly of string list * monot
    | Mono of monot

and production = { symbols: symbol list; mutable action: expr }

and symbol =
    (* parsing symbol *)
    | Term of string * bool
    | Nonterm of string
    | Macrocall of string * symbol list * position
    member this.Inspect() =
        match this with
        | Term (s, true) -> escapeString s
        | Term(s, false) -> "<" + s + ">"
        | Nonterm n -> n
        | Macrocall(n, syms, _) ->
            syms
            |> List.map (fun x -> x.Inspect())
            |> String.concat ", "
            |> fun it -> n + "(" + it + ")"

and definition =
    | Defmacro of
        {| lhs: string
           parameters: string list
           define: (position * production) list
           pos: position |}
    | Defrule of
        {| lhs: string
           define: (position * production) list
           pos: position |}
    | Deflexer of
        {| lhs: string
           define: lexerule
           pos: position |}
    | Declvar of
        {| ident: string
           t: polyt
           pos: position |}
    | Declctor of
        {| ident: string
           t: monot
           pos: position |}
    | Decltype of
        {| external: bool
           hasFields: bool
           ident: string
           parameters: string list
           fields: (string * monot * position) list
           pos: position |}
    | Defignore of {| pos: position; ignoreList : string list |}
    member this.Position =
        match this with
        | Defmacro def -> def.pos
        | Defrule def -> def.pos
        | Deflexer def -> def.pos
        | Declvar def -> def.pos
        | Declctor def -> def.pos
        | Decltype def -> def.pos
        | Defignore def -> def.pos

    member this.Inspect() =
        match this with
        | Defrule decl ->
             decl.define
             |> List.map (fun (_, prod) ->
                 prod.symbols
                 |> List.map (fun x -> x.Inspect())
                 |> String.concat " ")
              |> String.concat "\n| "
              |> fun define -> decl.lhs + " :\n " + define
        | _ -> "omit"
            // decl.lhs + ":" +

and lexerule =
    | LNumber | LWildcard
    | LSeq of lexerule list
    | LStr of string
    | LOr of lexerule list
    | LNot of lexerule
    | LPlus of lexerule // one or more
    | LStar of lexerule // zero or more
    | LOptional of lexerule
    | LGroup of lexerule
    | LRange of int * int
    | LRef of string

let TConst_token = TConst "token"
let TConst_tuple = TConst "tuple"
let TConst_list = TConst "list"
let TConst_int = TConst "int"
let TConst_float = TConst "float"
let TConst_str = TConst "str"
let TConst_bool = TConst "bool"

let _predefined_typenames =
    [| "token", 0; "tuple", -1; "list", 1; "int", 0; "float", 0; "str", 0; "bool", 0 |]

let TTuple xs = TApp(TConst_tuple, xs)
let TList a = TApp(TConst_list, [a])


let (|TTuple|_|) x =
    match x with
    | TConst "tuple" -> Some ()
    | _ -> None

let processPolyType (bounds: string seq) (monot: monot) =
    let ty_arguments = Map.ofList [for k in bounds -> k, TVar k]
    monot.SubstGen ty_arguments
