(* for Python/JavaScript accessing *)
module tbnf.APIs

open tbnf.Grammar

[<CompiledName("MK_" + nameof (Cell))>]
let MK_cell () = Cell()

[<CompiledName("MK_" + nameof (position))>]
let MK_position (line, col, filename) =
    { line = line
      col = col
      filename = filename }

[<CompiledName("MK_" + nameof (EApp))>]
let MK_EApp f args = EApp(f, List.ofArray args)

[<CompiledName("MK_" + nameof (ETuple))>]
let MK_ETuple args = ETuple(List.ofArray args)

[<CompiledName("MK_" + nameof (EList))>]
let MK_EList args = EList(List.ofArray args)

[<CompiledName("MK_" + nameof (ELet))>]
let MK_ELet name value body = ELet(name, value, body)

[<CompiledName("MK_" + nameof (EFun))>]
let MK_EFun args body = EFun(List.ofArray args, body)

[<CompiledName("MK_" + nameof (EVar))>]
let MK_EVar n = EVar(n, ref [])

[<CompiledName("MK_" + nameof (ESlot))>]
let MK_ESlot i = ESlot(i)

[<CompiledName("MK_" + nameof (EInt))>]
let MK_EInt i = EInt i

[<CompiledName("MK_" + nameof (EStr))>]
let MK_EStr s = EStr s

[<CompiledName("MK_" + nameof (EFlt))>]
let MK_EFlt s = EFlt s

[<CompiledName("MK_" + nameof (EBool))>]
let MK_EBool b = EBool b

[<CompiledName("MK_" + nameof (EField))>]
let MK_EField value field = EField(value, field)

[<CompiledName("MK_" + nameof (expr))>]
let MK_Expr node pos =
    { node = node
      pos = pos
      t = TConst "bot" }

[<CompiledName("MK_" + nameof (TConst))>]
let MK_TConst n = TConst n

[<CompiledName("MK_" + nameof (TApp))>]
let MK_TApp f args = TApp(f, List.ofArray args)

[<CompiledName("MK_" + nameof (TFun))>]
let MK_TFun args ret = TFun(List.ofArray args, ret)

[<CompiledName("MK_" + nameof (TVar))>]
let MK_TVar n = TVar n

[<CompiledName("MK_" + nameof (TTuple))>]
let MK_TTuple xs =
    if Array.length xs = 1 then
        xs.[0]
    else
        TTuple(List.ofArray xs)

[<CompiledName("MK_" + nameof (TList))>]
let MK_TList a = TList a

[<CompiledName("MK_" + nameof (LStr))>]
let MK_LStr s = LStr s

[<CompiledName("MK_" + nameof (LNumber))>]
let MK_LNumber = LNumber

[<CompiledName("MK_" + nameof (LWildcard))>]
let MK_LWildcard = LWildcard

[<CompiledName("MK_" + nameof (LSeq))>]
let MK_LSeq xs =
    match xs with
    | [|x|] -> x
    | _ -> LSeq(Array.toList xs)

[<CompiledName("MK_" + nameof (LOr))>]
let MK_LOr xs = 
    match xs with
    | [|x|] -> x
    | _ -> LOr(Array.toList xs)

[<CompiledName("MK_" + nameof (LNot))>]
let MK_LNot x = LNot x

[<CompiledName("MK_" + nameof (LPlus))>]
let MK_LPlus x = LPlus x

[<CompiledName("MK_" + nameof (LStar))>]
let MK_LStar x = LStar x

[<CompiledName("MK_" + nameof (LOptional))>]
let MK_LOptional x = LOptional x

[<CompiledName("MK_" + nameof (LGroup))>]
let MK_LGroup x = LGroup x

[<CompiledName("MK_" + nameof (LRange))>]
let MK_LRange x y = LRange(x, y)

[<CompiledName("MK_" + nameof (LRef))>]
let MK_LRef x = LRef x

[<CompiledName("MK_" + nameof (Defignore))>]
let MK_Defignore ignoreList pos =
    Defignore
        {| ignoreList = Array.toList ignoreList
           pos = pos |}

[<CompiledName("MK_" + nameof (Defmacro))>]
let MK_Defmacro (lhs: string) (parameters: string array) (define: (position * production) array) (pos: position) =
    Defmacro
        {| lhs = lhs
           parameters = List.ofArray parameters
           define = List.ofArray define
           pos = pos |}

[<CompiledName("MK_" + nameof (Defrule))>]
let MK_Defrule lhs define pos =
    Defrule
        {| lhs = lhs
           define = List.ofArray define
           pos = pos |}

[<CompiledName("MK_" + nameof (Deflexer))>]
let MK_Deflexer lhs define pos =
    Deflexer
        {| lhs = lhs
           define = define
           pos = pos |}

[<CompiledName("MK_" + nameof (Declvar))>]
let MK_Declvar ident t pos =
    Declvar {| ident = ident; t = t; pos = pos |}

[<CompiledName("MK_" + nameof (Declctor))>]
let MK_Declctor ident t pos =
    Declctor {| ident = ident; t = t; pos = pos |}

[<CompiledName("MK_" + nameof (Decltype))>]
let MK_Decltype external hasFields ident parameters fields pos =
    Decltype
        {| external = external
           hasFields = hasFields
           ident = ident
           parameters = Array.toList parameters
           fields = Array.toList fields
           pos = pos |}

[<CompiledName("MK_" + nameof (production))>]
let MK_production symbols action =
    { symbols = List.ofArray symbols
      action = action }

[<CompiledName("MK_" + nameof (Term))>]
let MK_Term define is_literal =
    Term(define, is_literal)

[<CompiledName("MK_" + nameof (Nonterm))>]
let MK_Nonterm define = Nonterm define

[<CompiledName("MK_" + nameof (Macrocall))>]
let MK_Macrocall n syms position = Macrocall(n, Array.toList syms, position)

[<CompiledName("MK_" + nameof (Poly))>]
let MK_Poly bounds monot = Poly(Array.toList bounds, monot)

[<CompiledName("MK_" + nameof (Mono))>]
let MK_Mono (monot) = Mono monot

[<CompiledName("processPolyType")>]
let processPolyType t =
    match t with
    | Mono _ -> t
    | Poly(bounds, monot) ->
        let ty_arguments = Map.ofList [for k in bounds -> k, TVar k]
        Poly(bounds, monot.SubstGen ty_arguments)

let build_analyzer stmts = Analysis.build_analyzer stmts
