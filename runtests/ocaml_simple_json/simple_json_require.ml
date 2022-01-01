type json = 
  | Dict of (string * json) list
  | Bool of bool
  | Float of float
  | Int of int
  | List of json list
  | Null
  | String of string

let parseInt x = int_of_string x

let parseFlt x = float_of_string x

let getStr(token: Simple_json_lexer.tbnf_token) = token.lexeme

(* TODO: escape *)
let unesc(s: string) =
  let lisr_str = List.init (String.length s) (String.get s)
  in
  let rec loop =
    function
    | '\\' :: '"'::tl -> '"' :: loop tl
    | '\\' :: '\\'::tl -> '\\' :: loop tl
    | '\\' :: 't'::tl -> '\t' :: loop tl
    | '\\' :: 'r'::tl -> '\r' :: loop tl
    | '\\' :: 'n'::tl -> '\n' :: loop tl
    | ['"'] -> []
    | [] | '"' :: _ -> raise @@ Invalid_argument("invalid string literal")
    | hd::tl -> hd :: loop tl
  in
  match lisr_str with
  | '"'::tl -> 
    let char_list = loop tl in
    String.concat "" (List.map (String.make 1) char_list)
  | _ -> raise @@ Invalid_argument("invalid string literal")

let jsonDict xs = Dict xs
let jsonList xs = List xs
let jsonFlt f = Float f
let jsonInt i = Int i
let jsonNull = Null
let jsonStr s = String s
let jsonBool b = Bool b
let appendList(xs, a) = xs @ [a]

