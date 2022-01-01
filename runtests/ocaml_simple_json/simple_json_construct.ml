open Simple_json_require;;
open Simple_json_lexer;;

type ___used_t_head_90xasda
and json = 
| JBool of { value : bool }
| JDict of { value : (json_pair) list }
| JFlt of { value : float }
| JInt of { value : int }
| JList of { elements : (json) list }
| JNull of unit
| JStr of { value : string }

and json_pair = {
    name : string;
    value : json;
}
let mk_JsonPair (name, value) : json_pair =
     { name;value }
let mk_JStr (value) : json =
    JStr { value }
let mk_JNull () = JNull ()
let mk_JList (elements) : json =
    JList { elements }
let mk_JInt (value) : json =
    JInt { value }
let mk_JFlt (value) : json =
    JFlt { value }
let mk_JDict (value) : json =
    JDict { value }
let mk_JBool (value) : json =
    JBool { value }
