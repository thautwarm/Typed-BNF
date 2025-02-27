let parse_lua_from_lexbuf lexbuf =
  let revised_lexer () =
    let tk = Lua_lexer.tokenizer lexbuf in
    let p1, p2 = Sedlexing.lexing_positions lexbuf in 
    tk, p1, p2
  in
  let revised_parser = MenhirLib.Convert.Simplified.traditional2revised Lua_parser.start
  in revised_parser revised_lexer

let parse_lua long_str =
  
  let lexbuf = Sedlexing.Utf8.from_string long_str in
  let _ = Sedlexing.set_position lexbuf {pos_cnum = 0; pos_lnum = 1; pos_bol = 0; pos_fname=""} in
  parse_lua_from_lexbuf lexbuf

let parse_lua_from_file filename =
  let oc = open_in filename in
  let lexbuf = Sedlexing.Utf8.from_channel oc in
  let _ = Sedlexing.set_position lexbuf {pos_cnum = 0; pos_lnum = 1; pos_bol = 0; pos_fname=filename} in
  parse_lua_from_lexbuf lexbuf

let res =
  match Sys.argv with
  | [|_; filename|] ->
    print_endline filename;
    let res: Lua_construct.block = parse_lua_from_file filename in
    begin
      match res with
      | {suite; _} ->
        let _ = print_endline @@ string_of_int (List.length suite) in
        match List.nth suite (List.length suite - 1)  with
        | Lua_construct.DoStmt {value2={ret; _}; _} -> Some ret
        | _ -> None
    end
  | _ -> None

let test_access res =
  match (res: Lua_construct.block) with
  | {suite; _} ->
    let _ = print_endline @@ string_of_int (List.length suite) in
    match List.nth suite (List.length suite - 1)  with
    | Lua_construct.DoStmt {value2={ret; _}; _} -> Some ret
    | _ -> None


(* 
Some
 (Some
   (Apis__.Lua_construct.ReturnStmt
     {Apis__.Lua_construct.value1 =
       {Apis__.Lua_lexer.lexeme = "return"; line = 4177; col = 0;
        offset = 109579; span = 6; file = ""};
      value2 =
       [Apis__.Lua_construct.UnsolvedBin
         {Apis__.Lua_construct.value =
           [Apis__.Lua_require.Operand
             (Apis__.Lua_construct.Var
               {Apis__.Lua_construct.value =
                 {Apis__.Lua_lexer.lexeme = "translate"; line = 4177;
                  col = 7; offset = 109586; span = 9; file = ""}})]}]})) *)