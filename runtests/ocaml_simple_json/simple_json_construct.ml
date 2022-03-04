open Simple_json_require;;
open Simple_json_lexer;;

type ___used_t_head_90xasda
and Json = 
| JBool of { value : bool }
| JDict of { value : (JsonPair) list }
| JFlt of { value : float }
| JInt of { value : int }
| JList of { elements : (Json) list }
| JNull of unit
| JStr of { value : str }

and JsonPair = {
    name : str;
    value : Json;
}
let JsonPair (name, value) : JsonPair =
     { name;value }
let JStr (value) : Json =
    JStr { value }
let JNull () = JNull ()
let JList (elements) : Json =
    JList { elements }
let JInt (value) : Json =
    JInt { value }
let JFlt (value) : Json =
    JFlt { value }
let JDict (value) : Json =
    JDict { value }
let JBool (value) : Json =
    JBool { value }
