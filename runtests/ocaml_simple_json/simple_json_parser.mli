
(* The type of tokens. *)

type token = Simple_json_lexer.token

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Simple_json_construct.json)
