(* for Python/JavaScript accessing *)
module tbnf.APIs

open tbnf.Grammar

[<CompiledName("mk_" + nameof (Cell))>]
let mk_cell () = Cell()

[<CompiledName("mk_" + nameof (position))>]
let mk_position (line, col, filename) =
    { line = line
      col = col
      filename = filename }

[<CompiledName("mk_" + nameof (EApp))>]
let mk_EApp f args = EApp(f, List.ofArray args)

[<CompiledName("mk_" + nameof (ETuple))>]
let mk_ETuple args = ETuple(List.ofArray args)

[<CompiledName("mk_" + nameof (EList))>]
let mk_EList args = EList(List.ofArray args)

[<CompiledName("mk_" + nameof (ELet))>]
let mk_ELet name value body = ELet(name, value, body)

[<CompiledName("mk_" + nameof (EFun))>]
let mk_EFun args body = EFun(List.ofArray args, body)

[<CompiledName("mk_" + nameof (EVar))>]
let mk_EVar n = EVar(n, ref [])

[<CompiledName("mk_" + nameof (ESlot))>]
let mk_ESlot i = ESlot(i)

[<CompiledName("mk_" + nameof (EInt))>]
let mk_EInt i = EInt i

[<CompiledName("mk_" + nameof (EStr))>]
let mk_EStr s = EStr s

[<CompiledName("mk_" + nameof (EFlt))>]
let mk_EFlt s = EFlt s

[<CompiledName("mk_" + nameof (EBool))>]
let mk_EBool b = EBool b

[<CompiledName("mk_" + nameof (EField))>]
let mk_EField value field = EField(value, field)

[<CompiledName("mk_" + nameof (expr))>]
let mk_Expr node pos =
    { node = node
      pos = pos
      t = TConst "bot" }

[<CompiledName("mk_" + nameof (TConst))>]
let mk_TConst n = TConst n

[<CompiledName("mk_" + nameof (TApp))>]
let mk_TApp f args = TApp(f, List.ofArray args)

[<CompiledName("mk_" + nameof (TFun))>]
let mk_TFun args ret = TFun(List.ofArray args, ret)

[<CompiledName("mk_" + nameof (TVar))>]
let mk_TVar n = TVar n

[<CompiledName("mk_" + nameof (TTuple))>]
let mk_TTuple xs =
    if Array.length xs = 1 then
        xs.[0]
    else
        TTuple(List.ofArray xs)

[<CompiledName("mk_" + nameof (TList))>]
let mk_TList a = TList a

[<CompiledName("mk_" + nameof (LStr))>]
let mk_LStr s = LStr s

[<CompiledName("mk_" + nameof (LNumber))>]
let mk_LNumber = LNumber

[<CompiledName("mk_" + nameof (LWildcard))>]
let mk_LWildcard = LWildcard

[<CompiledName("mk_" + nameof (LSeq))>]
let mk_LSeq xs =
    match xs with
    | [|x|] -> x
    | _ -> LSeq(Array.toList xs)

[<CompiledName("mk_" + nameof (LOr))>]
let mk_LOr xs = 
    match xs with
    | [|x|] -> x
    | _ -> LOr(Array.toList xs)

[<CompiledName("mk_" + nameof (LNot))>]
let mk_LNot x = LNot x

[<CompiledName("mk_" + nameof (LPlus))>]
let mk_LPlus x = LPlus x

[<CompiledName("mk_" + nameof (LStar))>]
let mk_LStar x = LStar x

[<CompiledName("mk_" + nameof (LOptional))>]
let mk_LOptional x = LOptional x

[<CompiledName("mk_" + nameof (LGroup))>]
let mk_LGroup x = LGroup x

[<CompiledName("mk_" + nameof (LRange))>]
let mk_LRange x y = LRange(x, y)

[<CompiledName("mk_" + nameof (LRef))>]
let mk_LRef x = LRef x

[<CompiledName("mk_" + nameof (Defignore))>]
let mk_Defignore ignoreList pos =
    Defignore
        {| ignoreList = Array.toList ignoreList
           pos = pos |}

[<CompiledName("mk_" + nameof (Defmacro))>]
let mk_Defmacro (lhs: string) (parameters: string array) (define: (position * production) array) (pos: position) =
    Defmacro
        {| lhs = lhs
           parameters = List.ofArray parameters
           define = List.ofArray define
           pos = pos |}

[<CompiledName("mk_" + nameof (Defrule))>]
let mk_Defrule lhs define pos =
    Defrule
        {| lhs = lhs
           define = List.ofArray define
           pos = pos |}

[<CompiledName("mk_" + nameof (Deflexer))>]
let mk_Deflexer lhs define pos =
    Deflexer
        {| lhs = lhs
           define = define
           pos = pos |}

[<CompiledName("mk_" + nameof (Declvar))>]
let mk_Declvar ident t pos =
    Declvar {| ident = ident; t = t; pos = pos |}

[<CompiledName("mk_" + nameof (Declctor))>]
let mk_Declctor ident t pos =
    Declctor {| ident = ident; t = t; pos = pos |}

[<CompiledName("mk_" + nameof (Decltype))>]
let mk_Decltype external hasFields ident parameters fields pos =
    Decltype
        {| external = external
           hasFields = hasFields
           ident = ident
           parameters = Array.toList parameters
           fields = Array.toList fields
           pos = pos |}

[<CompiledName("mk_" + nameof (production))>]
let mk_production symbols action =
    { symbols = List.ofArray symbols
      action = action }

[<CompiledName("mk_" + nameof (Term))>]
let mk_Term define is_literal =
    Term(define, is_literal)

[<CompiledName("mk_" + nameof (Nonterm))>]
let mk_Nonterm define = Nonterm define

[<CompiledName("mk_" + nameof (Macrocall))>]
let mk_Macrocall n syms position = Macrocall(n, Array.toList syms, position)

[<CompiledName("mk_" + nameof (Poly))>]
let mk_Poly (bounds, monot) = Poly(Array.toList bounds, monot)

[<CompiledName("mk_" + nameof (Mono))>]
let mk_Mono (monot) = Mono monot

let build_analyzer stmts = Analysis.build_analyzer stmts
