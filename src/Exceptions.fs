module tbnf.Exceptions
open Grammar
type NameErrorScope =
| TYPE
| VAR
| NONTERM
| LEXER

type NameErrorKind =
| Duplicate
| Unbound

exception IllFormedType of monot * monot
exception TypeMismatch of monot * monot
exception InvalidTypeApplication of monot
exception InvalidKind of {| name: string; expect: int; got: int |}
exception NoField of monot * string
exception CannotInferField of monot
exception NoBaseName of monot

exception NameError of string * NameErrorScope * NameErrorKind

(* todo: rename them better *)
let UnboundTypeVariable(name) = NameError(name, NameErrorScope.TYPE, Unbound)
let DuplicateTypeVariable(name) = NameError(name, NameErrorScope.TYPE, Duplicate)

let UnboundVariable(name) = NameError(name, NameErrorScope.VAR, Unbound)
let DuplicateVariable(name) = NameError(name,  NameErrorScope.VAR, Duplicate)

let UnboundNonterminal(name) = NameError(name,  NameErrorScope.NONTERM, Unbound)
let DuplicateNonterminal(name) = NameError(name,  NameErrorScope.NONTERM, Duplicate)

let UnboundLexer(name) = NameError(name,  NameErrorScope.LEXER, Unbound)
let DuplicateLexer(name) = NameError(name,  NameErrorScope.LEXER, Duplicate)


exception ComponentAccessingOutOfBound of int
exception MacroResolveError of string
exception UnsolvedTypeVariable