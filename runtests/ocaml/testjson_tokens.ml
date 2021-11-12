type tbnf_token = { lexeme : Uchar.t array; lineno: int; colno: int}
let mktoken (buf: Sedlexing.lexbuf): tbnf_token =
  let pos, _ = Sedlexing.lexing_positions buf in
  { lexeme = Sedlexing.lexeme buf;
    lineno = pos.pos_lnum;
    colno =  pos.pos_cnum }

let unknown_token lexbuf =
    let start, _ = Sedlexing.lexing_positions lexbuf in
    let m = List.map (fun x -> string_of_int (Uchar.to_int(x))) @@ Array.to_list (Sedlexing.lexeme lexbuf) in
    raise (Invalid_argument (Printf.sprintf "%s:%d:%d: codepoints %s not recognised" start.pos_fname start.pos_lnum start.pos_cnum @@ String.concat "," m))
            


type tbnf_token =
| LIT__7 of tbnf_token
| LIT__8 of tbnf_token
| LIT__9 of tbnf_token
| LIT__10 of tbnf_token
| INT_5 of tbnf_token
| FLOAT_6 of tbnf_token
| NULL_11 of tbnf_token
| LIT__12 of tbnf_token
| LIT__13 of tbnf_token
| STR_2 of tbnf_token
| EOF


