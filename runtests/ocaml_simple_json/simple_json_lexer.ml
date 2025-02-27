module TBNF_Utf8 = struct
exception UnicodeEncodeError of int
let uft8_encode_unchecked : (int * Buffer.t) -> unit = fun (code, buffer) ->
    if (code <= 0x7F) then
        Buffer.add_int8 buffer code
    else if code > 0x10FFFF then begin
      Buffer.add_int8 buffer 0xEF;
      Buffer.add_int8 buffer 0xBF;
      Buffer.add_int8 buffer 0xBD;
      Buffer.add_int8 buffer 0;
      end
    else
    let count =
      if code <= 0x7FF then 1
      else if code <= 0xFFFF then 2
      else 3;
    in
    let chars = Bytes.make (count + 1) @@ Char.chr 0 in
    let code = ref code in
    let _  = for i = 0 to count - 1 do
        Bytes.set chars (count - i) @@ Char.chr @@  0x80 lor (!code land 0x3F);
        code := !code lsr 6;
      done
    in
    let first_code = (0x1E lsl (6-count)) lor (!code land (0x3F lsr count)) in
    let first_code = first_code land 0xFF in
    let _ = Bytes.set chars 0 @@ Char.chr first_code   in Buffer.add_bytes buffer chars

let utf8_encode (code, buffer) =
  if code > 0xd7ff && code < 0xe000 then
    raise @@ UnicodeEncodeError code
  else uft8_encode_unchecked (code, buffer)


let to_out (io: out_channel) (unicode: Uchar.t array) =
    let buffer = Buffer.create 1024 in
    let n = Array.length unicode in
    let _ = for i = 0 to n - 1 do
      utf8_encode (Uchar.to_int (Array.get unicode i), buffer);
      if i mod 512 = 511 then
          begin
            Buffer.output_buffer io buffer;
            Buffer.clear buffer
          end;
    done in
    Buffer.output_buffer io buffer

let to_string (unicode: Uchar.t array) =
  let buffer = Buffer.create 80 in
  let n = Array.length unicode in
  let _ = for i = 0 to n - 1 do
    utf8_encode (Uchar.to_int (Array.get unicode i), buffer);
  done in
  Buffer.contents buffer

end

let _unknown_token lexbuf =
    let start, _ = Sedlexing.lexing_positions lexbuf in
    let m = TBNF_Utf8.to_string (Sedlexing.lexeme lexbuf) in
    raise (Invalid_argument (Printf.sprintf "%s:%d:%d: codepoints %s not recognised" start.pos_fname start.pos_lnum start.pos_cnum m))


type tbnf_token = {
    lexeme : string;
    line: int;
    col: int;
    offset : int;
    span: int;
    file : string;
}

let mktoken (buf: Sedlexing.lexbuf): tbnf_token =
  let open Sedlexing in
  let start_pos, _ = Sedlexing.lexing_positions buf in
  { lexeme = TBNF_Utf8.to_string (Sedlexing.lexeme buf);
    line = start_pos.pos_lnum;
    col = start_pos.pos_cnum - start_pos.pos_bol;
    offset = Sedlexing.lexeme_start buf;
    span = lexeme_end buf - lexeme_start buf;
    file = start_pos.pos_fname }
type token =
| I__S__I_ of tbnf_token
| I__G__I_ of tbnf_token
| I__N__I_ of tbnf_token
| I__P__I_ of tbnf_token
| I_FALSE_I_ of tbnf_token
| I_NULL_I_ of tbnf_token
| I_TRUE_I_ of tbnf_token
| I__T__I_ of tbnf_token
| I__V__I_ of tbnf_token
| STR of tbnf_token
| FLOAT of tbnf_token
| INT of tbnf_token
| EOF
let rule_DIGIT = [%sedlex.regexp? (48 .. 57)]
let rule_INT = [%sedlex.regexp? Plus(rule_DIGIT)]
let rule_FLOAT = [%sedlex.regexp? Star(rule_DIGIT), ".", rule_INT]
let rule_STR = [%sedlex.regexp? "\"", Star(("\\", any | Compl("\""))), "\""]
let rule_SPACE = [%sedlex.regexp? Plus(("\t" | "\n" | "\r" | " "))]
let rule_I__V__I_ = [%sedlex.regexp? "}"]
let rule_I__T__I_ = [%sedlex.regexp? "{"]
let rule_I_TRUE_I_ = [%sedlex.regexp? "true"]
let rule_I_NULL_I_ = [%sedlex.regexp? "null"]
let rule_I_FALSE_I_ = [%sedlex.regexp? "false"]
let rule_I__P__I_ = [%sedlex.regexp? "]"]
let rule_I__N__I_ = [%sedlex.regexp? "["]
let rule_I__G__I_ = [%sedlex.regexp? ":"]
let rule_I__S__I_ = [%sedlex.regexp? ","]
let rec tokenizer lexbuf =
    match%sedlex lexbuf with
    | rule_I__S__I_ -> I__S__I_ (mktoken lexbuf)
    | rule_I__G__I_ -> I__G__I_ (mktoken lexbuf)
    | rule_I__N__I_ -> I__N__I_ (mktoken lexbuf)
    | rule_I__P__I_ -> I__P__I_ (mktoken lexbuf)
    | rule_I_FALSE_I_ -> I_FALSE_I_ (mktoken lexbuf)
    | rule_I_NULL_I_ -> I_NULL_I_ (mktoken lexbuf)
    | rule_I_TRUE_I_ -> I_TRUE_I_ (mktoken lexbuf)
    | rule_I__T__I_ -> I__T__I_ (mktoken lexbuf)
    | rule_I__V__I_ -> I__V__I_ (mktoken lexbuf)
    | rule_SPACE -> tokenizer lexbuf
    | rule_STR -> STR (mktoken lexbuf)
    | rule_FLOAT -> FLOAT (mktoken lexbuf)
    | rule_INT -> INT (mktoken lexbuf)
    | eof -> EOF
    | _ -> _unknown_token lexbuf
