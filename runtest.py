from tbnf import t, unify, typecheck
from pprint import pprint
from tbnf import p, typecheck
from prettyprinter import install_extras, pprint
from tbnf.backends import lark, antlr, codeseg
install_extras(['dataclasses'])
# uf = unify.Unification()

# v = uf.newvar()
# m = uf.newvar()
# a = t.BoundVar("a")
# b = t.BoundVar("b")

# uf.unify(
#     t.Forall([a], t.Arrow(a, t.Tuple((v,m)))),
#     t.Forall([b], t.Arrow(b, t.Tuple((b, t.Nom("int"))))))

# print(uf.prune(v), uf.prune(m))



grammars = [
r"""
shape token {
    lexeme : str
}
val nil : forall 'a. () -> list['a]
val cons : forall 'a. ('a, list['a]) -> list['a]
val mk_dict: forall 'k 'v. (list[('k, 'v)]) -> dict['k, 'v]
val parse_int: (str) -> int
val parse_float: (str) -> float
val unesc_string: (str) -> str
val json_list: (list[json]) -> json
val json_dict: (dict[str, json]) -> json
val json_int : (int) -> json
val json_float : (float) -> json
val json_string : (str) -> json

list :               { nil() }
     | json "," list { cons($1, $3) }

pair : <STR> ":" json { ($1.lexeme, $3) }
pair_list :           { nil() }
| pair "," pair_list  { cons($1, $3) }

json : "[" list "]" { json_list($2) }
| "{" pair_list "}" { json_dict(mk_dict($2)) }
| <INT>             { json_int(parse_int($1.lexeme)) }
| <FLOAT>           { json_float(parse_float($1.lexeme)) }
| <STR>             { json_string(unesc_string($1.lexeme)) }
""",

# r"""
# shape token {
#     lexeme : str
# }
# polyrule  : <a> <b>  { fn (a) -> ($1.lexeme, $2, a) }
# polyrule2 : <a> polyrule { fn (a) -> $2(a) }
#
# """

]

for grammar in grammars:
    xs = p.tbnf_parser.parse(grammar)

    tc = typecheck.Check(xs)
    tc.check_all()

    for each in p.refs:
        each.set(p.uf.prune(each.get()))

    # pprint(tc.stmts)
    # cg = lark.CG()
    # for each in tc.stmts_for_codegen():
    #     cg(each)
    # cg.declare_tokens_()
    # print(cg.io.getvalue())
    # print(cg.create_python_file('ppp'))

    cg = antlr.CG({k._: p.uf.prune(v) for k, v in tc.global_scopes.items() if isinstance(k, typecheck.GName)})
    for each in tc.stmts_for_codegen():
        cg(each)
    codeseg.show(codeseg.VList(cg.io))
    # print(p.type_parser.parse("""
    # val a : forall 'a. list['a]
    # val b : (int, int) -> int
    # val b : (int) -> int
    # """))
    # print('===========')
    # for k, v in tc.global_scopes.items():
    #     print(k._, ":", p.uf.prune(v))
