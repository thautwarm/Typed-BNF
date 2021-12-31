(* for Python/JavaScript accessing *)
module tbnf.APIs

open tbnf.Grammar

[<CompiledName("MK_" + nameof (Cell))>]
let mk_cell () = Cell()

[<CompiledName("MK_" + nameof (position))>]
let mk_position (line, col, filename) =
    { line = line
      col = col
      filename = filename }

[<CompiledName("MK_" + nameof (EApp))>]
let mk_EApp f args = EApp(f, List.ofArray args)

[<CompiledName("MK_" + nameof (ETuple))>]
let mk_ETuple args = ETuple(List.ofArray args)

[<CompiledName("MK_" + nameof (EList))>]
let mk_EList args = EList(List.ofArray args)

[<CompiledName("MK_" + nameof (ELet))>]
let mk_ELet name value body = ELet(name, value, body)

[<CompiledName("MK_" + nameof (EFun))>]
let mk_EFun args body = EFun(List.ofArray args, body)

[<CompiledName("MK_" + nameof (EVar))>]
let mk_EVar n = EVar(n, ref [])

[<CompiledName("MK_" + nameof (ESlot))>]
let mk_ESlot i = ESlot(i)

[<CompiledName("MK_" + nameof (EInt))>]
let mk_EInt i = EInt i

[<CompiledName("MK_" + nameof (EStr))>]
let mk_EStr s = EStr s

[<CompiledName("MK_" + nameof (EFlt))>]
let mk_EFlt s = EFlt s

[<CompiledName("MK_" + nameof (EBool))>]
let mk_EBool b = EBool b

[<CompiledName("MK_" + nameof (EField))>]
let mk_EField value field = EField(value, field)

[<CompiledName("MK_" + nameof (expr))>]
let mk_Expr node pos =
    { node = node
      pos = pos
      t = TConst "bot" }

[<CompiledName("MK_" + nameof (TConst))>]
let mk_TConst n = TConst n

[<CompiledName("MK_" + nameof (TApp))>]
let mk_TApp f args = TApp(f, List.ofArray args)

[<CompiledName("MK_" + nameof (TFun))>]
let mk_TFun args ret = TFun(List.ofArray args, ret)

[<CompiledName("MK_" + nameof (TVar))>]
let mk_TVar n = TVar n

[<CompiledName("MK_" + nameof (TTuple))>]
let mk_TTuple xs =
    if Array.length xs = 1 then
        xs.[0]
    else
        TTuple(List.ofArray xs)

[<CompiledName("MK_" + nameof (TList))>]
let mk_TList a = TList a

[<CompiledName("MK_" + nameof (LStr))>]
let mk_LStr s = LStr s

[<CompiledName("MK_" + nameof (LNumber))>]
let mk_LNumber = LNumber

[<CompiledName("MK_" + nameof (LWildcard))>]
let mk_LWildcard = LWildcard

[<CompiledName("MK_" + nameof (LSeq))>]
let mk_LSeq xs =
    match xs with
    | [|x|] -> x
    | _ -> LSeq(Array.toList xs)

[<CompiledName("MK_" + nameof (LOr))>]
let mk_LOr xs = 
    match xs with
    | [|x|] -> x
    | _ -> LOr(Array.toList xs)

[<CompiledName("MK_" + nameof (LNot))>]
let mk_LNot x = LNot x

[<CompiledName("MK_" + nameof (LPlus))>]
let mk_LPlus x = LPlus x

[<CompiledName("MK_" + nameof (LStar))>]
let mk_LStar x = LStar x

[<CompiledName("MK_" + nameof (LOptional))>]
let mk_LOptional x = LOptional x

[<CompiledName("MK_" + nameof (LGroup))>]
let mk_LGroup x = LGroup x

[<CompiledName("MK_" + nameof (LRange))>]
let mk_LRange x y = LRange(x, y)

[<CompiledName("MK_" + nameof (LRef))>]
let mk_LRef x = LRef x

[<CompiledName("MK_" + nameof (Defignore))>]
let mk_Defignore ignoreList pos =
    Defignore
        {| ignoreList = Array.toList ignoreList
           pos = pos |}

[<CompiledName("MK_" + nameof (Defmacro))>]
let mk_Defmacro (lhs: string) (parameters: string array) (define: (position * production) array) (pos: position) =
    Defmacro
        {| lhs = lhs
           parameters = List.ofArray parameters
           define = List.ofArray define
           pos = pos |}

[<CompiledName("MK_" + nameof (Defrule))>]
let mk_Defrule lhs define pos =
    Defrule
        {| lhs = lhs
           define = List.ofArray define
           pos = pos |}

[<CompiledName("MK_" + nameof (Deflexer))>]
let mk_Deflexer lhs define pos =
    Deflexer
        {| lhs = lhs
           define = define
           pos = pos |}

[<CompiledName("MK_" + nameof (Declvar))>]
let mk_Declvar ident t pos =
    Declvar {| ident = ident; t = t; pos = pos |}

[<CompiledName("MK_" + nameof (Decltype))>]
let mk_Decltype ident parameters fields pos =
    Decltype
        {| ident = ident
           parameters = Array.toList parameters
           fields = Array.toList fields
           pos = pos |}

[<CompiledName("MK_" + nameof (production))>]
let mk_production symbols action =
    { symbols = List.ofArray symbols
      action = action }

[<CompiledName("MK_" + nameof (Term))>]
let mk_Term define is_literal =
    Term(define, is_literal)

[<CompiledName("MK_" + nameof (Nonterm))>]
let mk_Nonterm define = Nonterm define

[<CompiledName("MK_" + nameof (Macrocall))>]
let mk_Macrocall n syms position = Macrocall(n, Array.toList syms, position)

[<CompiledName("MK_" + nameof (Poly))>]
let mk_Poly (bounds, monot) = Poly(Array.toList bounds, monot)

[<CompiledName("MK_" + nameof (Mono))>]
let mk_Mono (monot) = Mono monot

let build_analyzer stmts = Analysis.build_analyzer stmts
