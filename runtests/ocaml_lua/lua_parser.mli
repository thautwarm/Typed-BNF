
(* The type of tokens. *)

type token = Lua_lexer.token

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lua_construct.block)
