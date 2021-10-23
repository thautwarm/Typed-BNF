from tbnf.cli import main, remove_py_traceback

if __name__ == '__main__':
    try:
        main()
    except Exception as e:
        raise remove_py_traceback(e)


"""

start : list[json]      { $1 }
list[a] :               { nil() }
        | a "," list[a] { cons($1, $3) }

str : <str> { $1.lexeme }
pair : str ":" json   { ($1, $3) }

seplist[sep, elt] :                            { nil() }
                  | elt sep seplist[sep, elt]  { cons($1, $3) }

json : "[" list[json] "]" { json_list($2) }
| "{" seplist[",", pair] "}" { json_dict(mk_dict($2)) }
| <int>             { json_int(parse_int($1.lexeme)) }
| <FLOAT>           { json_float(parse_float($1.lexeme)) }
| str               { json_string(unesc_string($1)) }



<str> : "\"" ("\\" _ | !"\"" ) "\""
<int> : DIGIT+
<DIGIT> : [0 .. 9]
<FLOAT> : int "." int

"""