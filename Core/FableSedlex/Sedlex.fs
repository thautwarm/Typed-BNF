module Fable.Sedlex.Compiler
// https://github.com/ocaml-community/sedlex/blob/master/src/syntax/sedlex.ml


let incr (a: int ref) = a.Value <- a.Value + 1

module Cset =
    type t = (int * int) list
    let rec union c1 c2 =
      match c1,c2 with
      | [], _ -> c2
      | _, [] -> c1
      | ((i1, j1) as s1)::r1, (i2, j2)::r2 ->
        if (i1 <= i2) then
          if j1 + 1 < i2 then s1::(union r1 c2)
          else if (j1 < j2) then union r1 ((i1, j2)::r2)
          else union c1 r2
        else union c2 c1

    let max_code = 0x10ffff  (* must be < max_int *)
    let min_code = -1

    let empty = []
    let singleton i = [i,i]
    let is_empty = function [] -> true | _ -> false
    let interval i j = if i <= j then [i,j] else [j,i]
    let eof = singleton (-1)
    let any = interval 0 max_code
    let inline succ x = x + 1

    let complement c =
      let rec aux start = function
        | [] -> if start <= max_code then [start,max_code] else []
        | (i, j)::l -> (start, i-1)::(aux (succ j) l)
      in
      match c with
        | (-1,j)::l -> aux (succ j) l
        | l -> aux (-1) l

    let intersection c1 c2 =
      complement (union (complement c1) (complement c2))

    let difference c1 c2 =
      complement (union (complement c1) c2)

module Automata =
  type node = {
        id : int;
        mutable eps : node list;
        mutable trans : (Cset.t * node) list;
  }


  type regexp = node -> node

  let cur_id = ref 0
  let new_node () =
    incr cur_id;
    { id = !cur_id; eps = []; trans = [] }

  let seq r1 r2 succ = r1 (r2 succ)

  let is_chars final = function
    | {eps = []; trans = [c, f]} when obj.ReferenceEquals(f, final) -> Some c
    | _ -> None

  let chars c succ =
    let n = new_node () in
    n.trans <- [c,succ];
    n

  let alt r1 r2 succ =
    let nr1 = r1 succ
    let nr2 = r2 succ
    match is_chars succ nr1, is_chars succ nr2 with
    | Some c1, Some c2 -> chars (Cset.union c1 c2) succ
    | _ ->
      let n = new_node () in
      n.eps <- [nr1; nr2];
      n

  let rep r succ =
    let n = new_node () in
    n.eps <- [r n; succ];
    n

  let plus r succ =
    let n = new_node () in
    let nr = r n in
    n.eps <- [nr; succ];
    nr

  let eps succ = succ (* eps for epsilon *)

  let compl r =
    let n = new_node () in
    match is_chars n (r n) with
    | Some c ->
      Some (chars (Cset.difference Cset.any c))
    | _ ->
      None

  let pair_op f r0 r1 = (* Construct subtract or intersection *)
    let n = new_node () in
    let to_chars r = is_chars n (r n) in
    match to_chars r0, to_chars r1 with
    | Some c0, Some c1 ->
      Some (chars (f c0 c1))
    | _ ->
      None

  let subtract = pair_op Cset.difference

  let intersection = pair_op Cset.intersection

  let compile_re re =
    let final = new_node () in
    (re final, final)


  (* Determinization *)

  type state = node list
        (* A state of the DFA corresponds to a set of nodes in the NFA. *)

  let inline (==) (a: 'a) (b: 'a) = obj.ReferenceEquals(a, b)
  let rec add_node state node =
    if List.exists ((==) node) state then state else add_nodes (node::state) node.eps
  and add_nodes state nodes =
    List.fold add_node state nodes

  let transition (state : state) =
    (* Merge transition with the same target *)
    let rec norm = function
      | (c1, n1)::((c2, n2)::q as l) ->
      if n1 == n2 then norm ((Cset.union c1 c2, n1)::q)
      else (c1, n1)::(norm l)
      | l -> l in
    let t = List.concat (List.map (fun n -> n.trans) state) in
    let t = norm (List.sortWith (fun (_, n1) (_, n2) -> n1.id - n2.id) t) in

    (* Split char sets so as to make them disjoint *)
    let split (all, t) (c0, n0) =
      let t =
        (Cset.difference c0 all, [n0]) ::
        List.map (fun (c, ns) -> (Cset.intersection c c0, n0::ns)) t @
        List.map (fun (c, ns) -> (Cset.difference c c0, ns)) t
      in
      Cset.union all c0,
      List.filter (fun (c, _) -> not (Cset.is_empty c)) t
    in

    let (_,t) = List.fold split (Cset.empty,[]) t in

    (* Epsilon closure of targets *)
    let t = List.map (fun (c, ns) -> (c, add_nodes [] ns)) t in

    (* Canonical ordering *)
    let t = Array.ofList t in
    Array.sortInPlaceWith (fun (c1, _) (c2, _) -> compare c1 c2) t;
    t

  let compile rs =
    let rs = Array.map compile_re rs in
    let counter = ref 0 in
    let mutable states = Map.empty in
    let mutable states_def = Map.empty in
    let rec aux state =
      match Map.tryFind state states with
      | Some v -> v
      | None ->
        let i = !counter in
        incr counter;
        states <- Map.add state i states;
        let trans = transition state in
        let trans = Array.map (fun (p, t) -> (p, aux t)) trans in
        let finals = Array.map (fun (_, f) -> List.exists ((==) f) state) rs in
        states_def <- Map.add i (trans, finals) states_def
        i
    in
    let init = ref [] in
    Array.iter (fun (i,_) -> init := add_node !init i) rs;
    let i = aux !init in
    assert(i = 0);
    Array.init !counter (fun x -> Map.find x states_def)


  type decision_tree =
    | Lte of int * decision_tree * decision_tree
    | Table of int * int array
    | Return of int

  let rec simplify_decision_tree ( x : decision_tree) =
    match x with
    | Table _ | Return _ -> x
    | Lte (_, (Return a as l), Return b) when a = b -> l
    | Lte (i, l, r) ->
      let l = simplify_decision_tree l in
      let r = simplify_decision_tree r in
      match l, r with
      | Return a, Return b when a = b -> l
      | _ -> Lte (i, l,r)

  let decision l =
    let l = List.map (fun (a, b, i) -> (a, b, Return i)) l in
    let rec merge2 = function
      | (a1, b1, d1) :: (a2, b2, d2) :: rest ->
          let x =
            if b1 + 1 = a2 then d2
            else Lte (a2 - 1, Return (-1), d2)
          in
          (a1, b2, Lte (b1, d1, x)) :: merge2 rest
      | rest -> rest
    in
    let rec aux = function
      | [(a, b, d)] -> Lte (a - 1, Return (-1), Lte (b, d, Return (-1)))
      | [] -> Return (-1)
      | l -> aux (merge2 l)
    in
    aux l

  let limit = 8192

  let old_decision_table l =
    let rec aux m accu = function
      | ((a, b, i) as x)::rem when b < limit && i < 255->
          aux (min a m) (x :: accu) rem
      | rem -> m, accu, rem
    in
    let (min, table, rest) = aux System.Int32.MaxValue [] l in
    match table with
    | [] -> decision l
    | [(min, max, i)] ->
        Lte (min - 1, Return (-1), (Lte (max, Return i, decision rest)))
    | (_, max, _) :: _ ->
        let arr = Array.create (max - min + 1) 0 in
        let set (a, b, i) =
            for j = a to b do
                arr.[j - min] <- i + 1
        List.iter set table;
        Lte (min - 1, Return (-1), Lte (max, Table (min, arr), decision rest))

  let rec simplify min max = function
    | Lte (i,yes,no) ->
        if i >= max then simplify min max yes
        else if i < min then simplify min max no
        else Lte (i, simplify min i yes, simplify (i+1) max no)
    | x -> x

  let segments_of_partition p =
    let seg = ref [] in
    Array.iteri
      (fun i c -> List.iter (fun (a, b) -> seg := (a, b, i) :: !seg) c)
      p;
    List.sortWith (fun (a1,_,_) (a2,_,_) -> compare a1 a2) !seg

  let decision_table p =
    simplify (-1) (Cset.max_code) (old_decision_table (segments_of_partition p))


  let rec char_pair_op func (name: string) p0 p1 = (* Construct something like Sub(a,b) *)
          match func p0 p1 with
          | Some r -> r
          | None ->
            invalidOp
                $"the {name} operator can only applied to single-character length regexps"

  let rec repeat r = function
    | 0, 0 -> eps
    | 0, m -> alt eps (seq r (repeat r (0, m - 1)))
    | n, m -> seq r (repeat r (n - 1, m - 1))

open Automata


type token_id = int
type keep_token = Discard | Tokenize of token_id

type lang =
| Lang_match_i of decision_tree * lang array * lang
| Lang_backtrace
| Lang_mark of int * lang
| Lang_callst of int
| Lang_int of int

type compiled_unit = {
    states: Map<int, lang>;
    lex_code: keep_token array * string;
    referenced_decision_trees: decision_tree Set
}

let build definition  error_msg =
    let mutable partitions : Map<list<int * int> array, int> = Map.empty
    let partition_counter = ref 0
    let mutable partition_trees : Map<list<int*int> array, decision_tree> = Map.empty

    let mutable referenced_decision_trees : Set<decision_tree> = Set.empty

    let partition (p) =
        match Map.tryFind p partition_trees with
        | None ->
            let tree = simplify_decision_tree (decision_table p)
            referenced_decision_trees <- Set.add tree referenced_decision_trees
            partition_trees <- Map.add p tree partition_trees
            tree
        | Some v -> v


    let partition_name x =
        match Map.tryFind x partitions with
        | Some v -> v
        | None ->
        incr partition_counter
        let s = !partition_counter
        partitions <- Map.add x s partitions
        s

    let best_final final =
      let fin = ref None in
      for i = Array.length final - 1 downto 0 do
        if Array.get final i then fin := Some i
      done;
      !fin

    let rec gen_definition l error =
      let brs = l in
      let auto = compile (Array.map fst brs) in
      let cases = Array.map (fun (_, e) -> e) brs in
      let states = Array.mapi (gen_state auto) auto in
      let states = Array.choose id states in
      { states = Map.ofArray states;
        lex_code = cases, error;
        referenced_decision_trees = referenced_decision_trees }

    and call_state auto state =
      let (trans, final) = Array.get auto state in
      if Array.length trans = 0
      then
          match best_final final with
          | Some i -> Lang_int i
          | None -> invalidOp "cannot found best final"
      else Lang_callst state

    and gen_state auto i (trans, final) =
        let v_partition = Array.map fst trans
        let cases = Array.map (fun (_, j) -> (call_state auto j)) trans in
        let body () =
            Lang_match_i (partition v_partition, cases, Lang_backtrace)

        match best_final final with
        | None -> Some (i, body())
        | Some _ when Array.length trans = 0 -> None
        | Some j -> Some (i, Lang_mark(j, body()))

    gen_definition definition error_msg


type lexbuf = {
  refill: (string -> int -> int -> int);
  mutable buf : int System.Collections.Generic.List (* hack with fable-python to get faster *)
  mutable src : string;
  mutable len : int (* Number of meaningful char in buffer *)
  mutable offset: int; (* Position of the first char in buffer
                            in the input stream *)
  mutable pos: int; (* pos is the index in the buffer *)
  mutable curr_bol: int; (* bol is the index in the input stream but not buffer *)
  mutable curr_line: int; (* start from 1, if it is 0, we would not track postion info for you *)
  mutable start_pos: int; (* First char we need to keep visible *)
  mutable start_bol: int;
  mutable start_line: int;

  mutable marked_pos: int;
  mutable marked_bol: int;
  mutable marked_line: int;
  mutable marked_val: int;
  mutable filename: string;
  mutable finished: bool;
}


let empty_lexbuf = {
  refill = (fun _ _ _ -> failwith "invalid");
  buf = System.Collections.Generic.List();
  src = "";
  len = 0;
  offset = 0;
  pos = 0;
  curr_bol = 0;
  curr_line = 0;
  start_pos = 0;
  start_bol = 0;
  start_line = 0;
  marked_pos = 0;
  marked_bol = 0;
  marked_line = 0;
  marked_val = 0;
  filename = "";
  finished = false;
}


let from_ustring (a: string) =
  let len = a.Length in
  let buf = System.Collections.Generic.List<int>()
  for c in a do
      buf.Add(int c)
  {
    empty_lexbuf with
      buf = buf;
      src = a;
      len = len;
      finished = true;
  }

let chunk_size = 512

let new_line lexbuf =
  lexbuf.curr_line <- lexbuf.curr_line + 1;
  lexbuf.curr_bol <- lexbuf.pos + lexbuf.offset

let public_next_int lexbuf : int =
  (* does not support refill *)
  if  (lexbuf.pos = lexbuf.len) && lexbuf.finished then -1
  else
    let ret = lexbuf.buf.[lexbuf.pos] in
    lexbuf.pos <- lexbuf.pos + 1;
    if ret = 10 then
        new_line lexbuf
    ret

let mark lexbuf i =
  lexbuf.marked_pos <- lexbuf.pos;
  lexbuf.marked_bol <- lexbuf.curr_bol;
  lexbuf.marked_line <- lexbuf.curr_line;
  lexbuf.marked_val <- i


let start lexbuf =
  lexbuf.start_pos <- lexbuf.pos;
  lexbuf.start_bol <- lexbuf.curr_bol;
  lexbuf.start_line <- lexbuf.curr_line;
  mark lexbuf (-1)

let backtrack lexbuf =
  lexbuf.pos <- lexbuf.marked_pos;
  lexbuf.curr_bol <- lexbuf.marked_bol;
  lexbuf.curr_line <- lexbuf.marked_line;
  lexbuf.marked_val

// let rollback lexbuf =
//   lexbuf.pos <- lexbuf.start_pos;
//   lexbuf.curr_bol <- lexbuf.start_bol;
//   lexbuf.curr_line <- lexbuf.start_line


let lexeme_start lexbuf = lexbuf.start_pos + lexbuf.offset

let lexeme_end lexbuf = lexbuf.pos + lexbuf.offset

let lexeme lexbuf =
  lexbuf.src[lexbuf.start_pos..lexbuf.pos-1]

let lexeme_char lexbuf pos =
  lexbuf.src[lexbuf.start_pos + pos]

type position = {
    pos_fname: string;
    pos_lnum: int;
    pos_cnum: int;
    pos_bol: int
}

let lexing_positions lexbuf =
  let start_p = {
    pos_fname = lexbuf.filename;
    pos_lnum = lexbuf.start_line;
    pos_cnum = lexbuf.start_pos + lexbuf.offset;
    pos_bol = lexbuf.start_bol;
  }
  let curr_p = {
    pos_fname = lexbuf.filename;
    pos_lnum = lexbuf.curr_line;
    pos_cnum = lexbuf.pos + lexbuf.offset;
    pos_bol = lexbuf.curr_bol;
  } in
  (start_p, curr_p)

(* line, col, offset *)
let inline get_position lexbuf =
  (lexbuf.start_line, lexbuf.pos - lexbuf.curr_bol, lexbuf.pos - lexbuf.start_pos)

let with_tokenizer lexer' lexbuf =
  let lexer () =
    let token = lexer' lexbuf in
    let (start_p, curr_p) = lexing_positions lexbuf in
    (token, start_p, curr_p)
  in lexer

type token = interface
  abstract tokenId: token_id;
  abstract lexeme : string ;
  abstract line: int;
  abstract col: int;
  abstract span: int;
  abstract offset: int;
  abstract file: string;
end  

type token_creator = (token_id * string * int * int * int * int * string) -> token

// type token = {
//     token_id: token_id;
//     lexeme : string ;
//     line: int;
//     col: int;
//     span: int;
//     offset: int;
//     file: string }

module Utf8 =

  let from_ustring = from_ustring

  let lexeme_char lexbuf pos =
    lexeme_char lexbuf pos

  let sub_lexeme lexbuf pos len =
    lexbuf.src.[lexbuf.start_pos + pos ..lexbuf.start_pos + pos + len - 1]

  let lexeme lexbuf =
    lexbuf.src.[lexbuf.start_pos ..lexbuf.pos - 1]


let inline_thread (cu: compiled_unit) (token_creator: token_creator) =
    let mutable decision_funcs : Map<decision_tree, int -> int> = Map.empty
    let mutable state_funcs: Map<int, (lexbuf -> int) ref> = Map.empty

    let rec evaluate_decision_func tree =
        match Map.tryFind tree decision_funcs with
        | Some f -> f
        | None ->
        let f =
            match tree with
            | Lte(i, yes, no) ->
                let yes_f = evaluate_decision_func yes
                let no_f = evaluate_decision_func no
                fun c -> if c <= i then yes_f c else no_f c
            | Return i -> fun _ -> i
            | Table(offset, t) ->
                fun c -> t[c - offset] - 1
        decision_funcs <- Map.add tree f decision_funcs
        f

    let rec evaluate_state_func (lang: lang) =
        match lang with
        | Lang_backtrace -> fun (buf: lexbuf) -> backtrack buf
        | Lang_callst i ->
            let func_ref = Map.find i state_funcs
            fun (buf: lexbuf) -> func_ref.Value buf
        | Lang_int i -> fun _ -> i
        | Lang_mark(i, lang) ->
            let f = evaluate_state_func lang
            fun (buf : lexbuf) ->
                mark buf i; f buf
        | Lang_match_i(dt, cases, error) ->
            let f_cases = Array.map evaluate_state_func cases
            let f_error = evaluate_state_func error
            let decision_func = (evaluate_decision_func dt)
            fun (buf: lexbuf) ->
                let c = public_next_int buf
                let c = decision_func (c)
                match Array.tryItem c f_cases with
                | None -> f_error buf
                | Some f -> f buf

    let compile_lexer() =
        let lex_code, error_msg = cu.lex_code
        let initial_state_fun = (Map.find 0 state_funcs).Value
        fun (buf: lexbuf) ->
            start buf;
            let st = initial_state_fun buf
            match Array.tryItem st lex_code with
            | Some Discard -> None
            | Some (Tokenize token_id) ->
                let line, col, span = get_position buf
                Some (token_creator(token_id, lexeme buf, line, col, span, buf.start_pos, buf.filename))
                // Some { token_id = token_id ;
                //        lexeme = lexeme buf;
                //        line = line;
                //        col = col;
                //        span = span;
                //        offset = buf.start_pos;
                //        file = buf.filename }
            | None -> invalidOp error_msg

    state_funcs <- Map.map (fun _ _ -> ref Unchecked.defaultof<_>) cu.states
    for kv in cu.states do
        state_funcs.[kv.Key].Value <- evaluate_state_func kv.Value
    for dt in cu.referenced_decision_trees do
        ignore(evaluate_decision_func dt)

    compile_lexer()

let Lexer_discard = Discard
let Lexer_tokenize i = Tokenize i

let por a b = alt a b

let pseq xs =
  let _pseq xs =
    match xs with
    | [] -> invalidOp("empty sequence")
    | p::p1 ->
        List.fold (fun r p -> seq r p) p p1
  _pseq (List.ofArray xs)

let pstar x = rep x
let pplus x = plus x
let prep p0 i1 i2 =
    if 0 <= i1 && i1 <= i2 then repeat p0 (i1, i2)
    else invalidOp($"repeat operator requires 0 <= {i1} <= {i2}")
let popt p = alt eps p
let pcompl arg =
    match compl arg with
    | Some r -> r
    | None ->
        invalidOp "the Compl operator can only applied to a single-character length regexp"
let psub arg = char_pair_op subtract "sub" arg
let pintersct arg = char_pair_op intersection "intersect" arg
let pchars (arg: char array) =
  let pchars arg =
    let mutable c = Cset.empty
    for ch in arg do
        let i = int ch
        c <- Cset.union c (Cset.singleton i)
    chars c
  pchars (Array.toList arg)

let pinterval i_start i_end =
    chars (Cset.interval i_start i_end)

let regexp_for_char c =
  chars (Cset.singleton (int c))

let regexp_for_string s =
  let rec aux n =
    if n = String.length s then eps
    else
      seq (regexp_for_char s.[n]) (aux (Cset.succ n))
  in aux 0

let pstring (s: string) = regexp_for_string s

let pchar (c: char) = regexp_for_char c

let pany = pinterval 0 Cset.max_code

let peof =  chars (Cset.singleton (-1))
