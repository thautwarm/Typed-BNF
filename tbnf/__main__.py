import wisepy2

from tbnf.backends import lark, antlr, csharp
from tbnf import parser as p
from tbnf import t, unify, typecheck
import os

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

    stmts = p.parser.parse(grammar_src)
    tc = typecheck.Check(filename, stmts)
    tc.check_all()
    for each in p.refs:
        each.set(p.uf.prune(each.get()))
    cg = backends[backend].CG(tc.global_scopes)

    def out_io(s):
        return open(os.path.join(outdir, s), "w")

    cg.process(tc.stmts_for_codegen())
    cg.out(mod, out_io)


if __name__ == '__main__':
    main()