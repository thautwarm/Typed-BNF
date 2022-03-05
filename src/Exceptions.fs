module tbnf.Exceptions
open Grammar

type ErrorTrace =
    { mutable whichDef: definition
    ; mutable branch: int
    ; mutable exprStack: expr list
    ; mutable currentPos : position
    }

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
exception TypeUnexpected of got: monot * expected: monot
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


exception ComponentAccessingOutOfBound of access:int * maxsize:int
exception MacroResolveError of string
exception UnsolvedTypeVariable

exception NotGlobalVariable of string
// exception MalformedConstructor of string * monot

type InvalidConstructorDefininationCause =
    | CauseExternalType of typename: string
    | CauseRecordType of typename: string
    | CauseGenericADTType of typename: string * parameters : string list
    | CauseDuplicateConstructorName
    | CauseInvalidConstructorType of monot

exception  InvalidConstructorDefinination of ctorName: string * cause: InvalidConstructorDefininationCause