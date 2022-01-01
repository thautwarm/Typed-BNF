let parse_json long_str =
  let lexbuf = Sedlexing.Utf8.from_string long_str in
  let revised_lexer () =
    let tk = Simple_json_lexer.tokenizer lexbuf in
    let p1, p2 = Sedlexing.lexing_positions lexbuf in 
    tk, p1, p2
  in
  let revised_parser = MenhirLib.Convert.Simplified.traditional2revised Simple_json_parser.start
  in revised_parser revised_lexer


let tree =
    let open Simple_json_require in
    match parse_json "[1, 2.0, \"3\", {\"1\\\"\": 2}, [{}]]" with
    | JList { elements = 
      [
        JInt { value = 1 };
        JFlt { value = 2.0 };
        JStr { value = "3" }; 
        JDict { value = [
          { name = "1\""; value = JInt { value = 2}}
        ]};
        JList { elements = [
          JDict { value =  [] }
        ]}
      ]} -> ()
    | _ -> failwith "parse fail"

