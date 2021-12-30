module tbnf.Grammar


type Cell<'a when 'a: not struct and 'a: equality>() =
    let _null = Unchecked.defaultof<'a>
    let mutable _cell = _null

    member this.Set a = _cell <- a
    member this.Get = _cell
    member this.IsNull = (_cell = _null)

type position =
    { line: int
      col: int
      filename: string }

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
    | TFun of monot list * monot
    | TVar of string

    member this.FindAnyChildren(predicate: monot -> bool) =
        predicate this
        || match this with
           | TConst _
           | TVar _
           | TRef _ -> false
           | TApp (f, args) -> predicate f || List.exists predicate args
           | TFun (args, ret) -> List.exists predicate args || predicate ret

    member this.TransformChildren((!): monot -> monot) =
        match this with
        | TConst _
        | TVar _
        | TRef _ as a -> a
        | TApp (f, args) -> TApp(!f, List.map (!) args)
        | TFun (args, ret) -> TFun(List.map (!) args, !ret)

    member this.ApplyToChildren((!): monot -> unit) =
        match this with
        | TConst _
        | TVar _
        | TRef _ -> !this
        | TApp (f, args) ->
            !f
            List.iter (!) args
        | TFun (args, ret) ->
            List.iter (!) args
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
    | Term of {| define: string; is_literal: bool |}
    | Nonterm of string
    | Macrocall of string * symbol list

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
    | Decltype of
        {| ident: string
           kind: int
           pos: position |}
    | Defignore of {| pos: position; ignoreList : string list |}

and lexerule =
    | LNumber | LWildcard
    | LSeq of lexerule list
    | LOr of lexerule list
    | LNot of lexerule
    | LOneOrMore of lexerule
    | LZeroOrMore of lexerule
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

let TTuple xs = TApp(TConst_tuple, xs)
let TList a = TApp(TConst_list, [a])

