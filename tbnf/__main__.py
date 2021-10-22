import wisepy2

from tbnf.backends import lark, antlr, csharp
from tbnf import parser as p
from tbnf import t, unify, typecheck
from tbnf.common import refs
from tbnf.macroresolve import resolve
import os
from pprint import pprint

backends = {"lark": lark, "antlr": antlr, 'csharp': csharp}

@wisepy2.wise
def main(
    filename: str, backend: str, outdir: str = ".", mod: str = "mylang"
):
    """
    filename: tbnf grammar
    backend: lark | antlr | csharp
    """
    with open(filename, encoding="utf8") as f:
        grammar_src = f.read()
    
    p.filename = filename

    stmts = p.parser.parse(grammar_src)
    stmts = resolve(stmts)
    # pprint(stmts)
    tc = typecheck.Check(filename, stmts)
    tc.check_all()
    
    for each in refs:
        try:
            each.set(p.uf.prune(each.get()))
        except:
            raise
    # print(tc.global_scopes.keys())
    cg = backends[backend].CG(tc.global_scopes)

    def out_io(s):
        return open(os.path.join(outdir, s), "w")

    cg.process(tc.stmts_for_codegen())
    cg.out(mod, out_io)


if __name__ == '__main__':
    main()


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