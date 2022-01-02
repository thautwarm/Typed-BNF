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
| I__J__I__I of tbnf_token
| I__L__I_ of tbnf_token
| I__M__I_ of tbnf_token
| I__O__I_ of tbnf_token
| I__P__I_ of tbnf_token
| I__Q__I__I of tbnf_token
| I__R__I_ of tbnf_token
| I__S__I_ of tbnf_token
| I__T__I_ of tbnf_token
| I__U__I_ of tbnf_token
| I__U__U__I_ of tbnf_token
| I__U__U__U__I_ of tbnf_token
| I__V__I__I of tbnf_token
| I__V__V__I_ of tbnf_token
| I__G__I_ of tbnf_token
| I__G__G__I_ of tbnf_token
| I__H__I_ of tbnf_token
| I__I__I_ of tbnf_token
| I__I__I__I_ of tbnf_token
| I__I__J__I_ of tbnf_token
| I__J__I_ of tbnf_token
| I__J__J__I_ of tbnf_token
| I__K__I_ of tbnf_token
| I__K__J__I_ of tbnf_token
| I__K__K__I_ of tbnf_token
| I__N__I_ of tbnf_token
| I__P__I__I of tbnf_token
| I__Q__I_ of tbnf_token
| I_AND_I_ of tbnf_token
| I_BREAK_I_ of tbnf_token
| I_DO_I_ of tbnf_token
| I_ELSE_I_ of tbnf_token
| I_ELSEIF_I_ of tbnf_token
| I_END_I_ of tbnf_token
| I_FALSE_I_ of tbnf_token
| I_FOR_I_ of tbnf_token
| I_FUNCTION_I_ of tbnf_token
| I_GOTO_I_ of tbnf_token
| I_IF_I_ of tbnf_token
| I_IN_I_ of tbnf_token
| I_LOCAL_I_ of tbnf_token
| I_NIL_I_ of tbnf_token
| I_NOT_I_ of tbnf_token
| I_OR_I_ of tbnf_token
| I_REPEAT_I_ of tbnf_token
| I_RETURN_I_ of tbnf_token
| I_THEN_I_ of tbnf_token
| I_TRUE_I_ of tbnf_token
| I_UNTIL_I_ of tbnf_token
| I_WHILE_I_ of tbnf_token
| I__T__I__I of tbnf_token
| I__U__I__I of tbnf_token
| I__V__I_ of tbnf_token
| I__W__I_ of tbnf_token
| I__W__J__I_ of tbnf_token
| STR_LIT of tbnf_token
| NUMERAL of tbnf_token
| NAME of tbnf_token
| EOF

let rule_SPACE = [%sedlex.regexp? " " | "\t" | "\r" | "\n"]
let rule_DIGIT = [%sedlex.regexp? (48 .. 57)]
let rule_UCHAR = [%sedlex.regexp? (97 .. 122) | (65 .. 90) | "_"]
let rule_NAME = [%sedlex.regexp? rule_UCHAR, Star((rule_UCHAR | rule_DIGIT))]
let rule_INT = [%sedlex.regexp? Plus(rule_DIGIT)]
let rule_NUMERAL = [%sedlex.regexp? Opt("-"), rule_INT, Opt((".", rule_INT)), Opt((("E" | "e"), rule_INT))]
let rule_STR_LIT = [%sedlex.regexp? "\"", Star(("\\", any | Compl("\""))), "\""]
let rule_I__W__J__I_ = [%sedlex.regexp? "~="]
let rule_I__W__I_ = [%sedlex.regexp? "~"]
let rule_I__V__I_ = [%sedlex.regexp? "}"]
let rule_I__U__I__I = [%sedlex.regexp? "|"]
let rule_I__T__I__I = [%sedlex.regexp? "{"]
let rule_I_WHILE_I_ = [%sedlex.regexp? "while"]
let rule_I_UNTIL_I_ = [%sedlex.regexp? "until"]
let rule_I_TRUE_I_ = [%sedlex.regexp? "true"]
let rule_I_THEN_I_ = [%sedlex.regexp? "then"]
let rule_I_RETURN_I_ = [%sedlex.regexp? "return"]
let rule_I_REPEAT_I_ = [%sedlex.regexp? "repeat"]
let rule_I_OR_I_ = [%sedlex.regexp? "or"]
let rule_I_NOT_I_ = [%sedlex.regexp? "not"]
let rule_I_NIL_I_ = [%sedlex.regexp? "nil"]
let rule_I_LOCAL_I_ = [%sedlex.regexp? "local"]
let rule_I_IN_I_ = [%sedlex.regexp? "in"]
let rule_I_IF_I_ = [%sedlex.regexp? "if"]
let rule_I_GOTO_I_ = [%sedlex.regexp? "goto"]
let rule_I_FUNCTION_I_ = [%sedlex.regexp? "function"]
let rule_I_FOR_I_ = [%sedlex.regexp? "for"]
let rule_I_FALSE_I_ = [%sedlex.regexp? "false"]
let rule_I_END_I_ = [%sedlex.regexp? "end"]
let rule_I_ELSEIF_I_ = [%sedlex.regexp? "elseif"]
let rule_I_ELSE_I_ = [%sedlex.regexp? "else"]
let rule_I_DO_I_ = [%sedlex.regexp? "do"]
let rule_I_BREAK_I_ = [%sedlex.regexp? "break"]
let rule_I_AND_I_ = [%sedlex.regexp? "and"]
let rule_I__Q__I_ = [%sedlex.regexp? "^"]
let rule_I__P__I__I = [%sedlex.regexp? "]"]
let rule_I__N__I_ = [%sedlex.regexp? "["]
let rule_I__K__K__I_ = [%sedlex.regexp? ">>"]
let rule_I__K__J__I_ = [%sedlex.regexp? ">="]
let rule_I__K__I_ = [%sedlex.regexp? ">"]
let rule_I__J__J__I_ = [%sedlex.regexp? "=="]
let rule_I__J__I_ = [%sedlex.regexp? "="]
let rule_I__I__J__I_ = [%sedlex.regexp? "<="]
let rule_I__I__I__I_ = [%sedlex.regexp? "<<"]
let rule_I__I__I_ = [%sedlex.regexp? "<"]
let rule_I__H__I_ = [%sedlex.regexp? ";"]
let rule_I__G__G__I_ = [%sedlex.regexp? "::"]
let rule_I__G__I_ = [%sedlex.regexp? ":"]
let rule_I__V__V__I_ = [%sedlex.regexp? "//"]
let rule_I__V__I__I = [%sedlex.regexp? "/"]
let rule_I__U__U__U__I_ = [%sedlex.regexp? "..."]
let rule_I__U__U__I_ = [%sedlex.regexp? ".."]
let rule_I__U__I_ = [%sedlex.regexp? "."]
let rule_I__T__I_ = [%sedlex.regexp? "-"]
let rule_I__S__I_ = [%sedlex.regexp? ","]
let rule_I__R__I_ = [%sedlex.regexp? "+"]
let rule_I__Q__I__I = [%sedlex.regexp? "*"]
let rule_I__P__I_ = [%sedlex.regexp? ")"]
let rule_I__O__I_ = [%sedlex.regexp? "("]
let rule_I__M__I_ = [%sedlex.regexp? "&"]
let rule_I__L__I_ = [%sedlex.regexp? "%"]
let rule_I__J__I__I = [%sedlex.regexp? "#"]

let rec tokenizer lexbuf =
    match%sedlex lexbuf with
    | rule_I__J__I__I -> I__J__I__I (mktoken lexbuf)
    | rule_I__L__I_ -> I__L__I_ (mktoken lexbuf)
    | rule_I__M__I_ -> I__M__I_ (mktoken lexbuf)
    | rule_I__O__I_ -> I__O__I_ (mktoken lexbuf)
    | rule_I__P__I_ -> I__P__I_ (mktoken lexbuf)
    | rule_I__Q__I__I -> I__Q__I__I (mktoken lexbuf)
    | rule_I__R__I_ -> I__R__I_ (mktoken lexbuf)
    | rule_I__S__I_ -> I__S__I_ (mktoken lexbuf)
    | rule_I__T__I_ -> I__T__I_ (mktoken lexbuf)
    | rule_I__U__I_ -> I__U__I_ (mktoken lexbuf)
    | rule_I__U__U__I_ -> I__U__U__I_ (mktoken lexbuf)
    | rule_I__U__U__U__I_ -> I__U__U__U__I_ (mktoken lexbuf)
    | rule_I__V__I__I -> I__V__I__I (mktoken lexbuf)
    | rule_I__V__V__I_ -> I__V__V__I_ (mktoken lexbuf)
    | rule_I__G__I_ -> I__G__I_ (mktoken lexbuf)
    | rule_I__G__G__I_ -> I__G__G__I_ (mktoken lexbuf)
    | rule_I__H__I_ -> I__H__I_ (mktoken lexbuf)
    | rule_I__I__I_ -> I__I__I_ (mktoken lexbuf)
    | rule_I__I__I__I_ -> I__I__I__I_ (mktoken lexbuf)
    | rule_I__I__J__I_ -> I__I__J__I_ (mktoken lexbuf)
    | rule_I__J__I_ -> I__J__I_ (mktoken lexbuf)
    | rule_I__J__J__I_ -> I__J__J__I_ (mktoken lexbuf)
    | rule_I__K__I_ -> I__K__I_ (mktoken lexbuf)
    | rule_I__K__J__I_ -> I__K__J__I_ (mktoken lexbuf)
    | rule_I__K__K__I_ -> I__K__K__I_ (mktoken lexbuf)
    | rule_I__N__I_ -> I__N__I_ (mktoken lexbuf)
    | rule_I__P__I__I -> I__P__I__I (mktoken lexbuf)
    | rule_I__Q__I_ -> I__Q__I_ (mktoken lexbuf)
    | rule_I_AND_I_ -> I_AND_I_ (mktoken lexbuf)
    | rule_I_BREAK_I_ -> I_BREAK_I_ (mktoken lexbuf)
    | rule_I_DO_I_ -> I_DO_I_ (mktoken lexbuf)
    | rule_I_ELSE_I_ -> I_ELSE_I_ (mktoken lexbuf)
    | rule_I_ELSEIF_I_ -> I_ELSEIF_I_ (mktoken lexbuf)
    | rule_I_END_I_ -> I_END_I_ (mktoken lexbuf)
    | rule_I_FALSE_I_ -> I_FALSE_I_ (mktoken lexbuf)
    | rule_I_FOR_I_ -> I_FOR_I_ (mktoken lexbuf)
    | rule_I_FUNCTION_I_ -> I_FUNCTION_I_ (mktoken lexbuf)
    | rule_I_GOTO_I_ -> I_GOTO_I_ (mktoken lexbuf)
    | rule_I_IF_I_ -> I_IF_I_ (mktoken lexbuf)
    | rule_I_IN_I_ -> I_IN_I_ (mktoken lexbuf)
    | rule_I_LOCAL_I_ -> I_LOCAL_I_ (mktoken lexbuf)
    | rule_I_NIL_I_ -> I_NIL_I_ (mktoken lexbuf)
    | rule_I_NOT_I_ -> I_NOT_I_ (mktoken lexbuf)
    | rule_I_OR_I_ -> I_OR_I_ (mktoken lexbuf)
    | rule_I_REPEAT_I_ -> I_REPEAT_I_ (mktoken lexbuf)
    | rule_I_RETURN_I_ -> I_RETURN_I_ (mktoken lexbuf)
    | rule_I_THEN_I_ -> I_THEN_I_ (mktoken lexbuf)
    | rule_I_TRUE_I_ -> I_TRUE_I_ (mktoken lexbuf)
    | rule_I_UNTIL_I_ -> I_UNTIL_I_ (mktoken lexbuf)
    | rule_I_WHILE_I_ -> I_WHILE_I_ (mktoken lexbuf)
    | rule_I__T__I__I -> I__T__I__I (mktoken lexbuf)
    | rule_I__U__I__I -> I__U__I__I (mktoken lexbuf)
    | rule_I__V__I_ -> I__V__I_ (mktoken lexbuf)
    | rule_I__W__I_ -> I__W__I_ (mktoken lexbuf)
    | rule_I__W__J__I_ -> I__W__J__I_ (mktoken lexbuf)
    | rule_STR_LIT -> STR_LIT (mktoken lexbuf)
    | rule_NUMERAL -> NUMERAL (mktoken lexbuf)
    | rule_NAME -> NAME (mktoken lexbuf)
    | rule_SPACE -> tokenizer lexbuf
    | eof -> EOF
    | _ -> _unknown_token lexbuf
