open Lua_lexer;;
let appendList(xs, x) = xs @ [x]
let listMap(xs, f) = List.map f xs

type 'a maybe = 'a option

let some : 'a . 'a -> 'a maybe = fun a -> Some a
let none : 'a . unit -> 'a maybe =
    fun () -> None

type 'a op =
    | Operator of tbnf_token
    | Operand of 'a

let mkBinOpSeq = fun (xs, _, f) -> f xs

let mkOperator x = Operator x
let mkOperand x = Operand x