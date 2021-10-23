from wisepy2 import wise
import traceback
import sys

def format_exceptions(e: Exception):
    remove_py_traceback(e)
    return ''.join(traceback.format_exception(type(e), e, None))

def remove_py_traceback(e):
    e.__traceback__ = None
    e_cur = e
    while e_cur := e_cur.__cause__:
        e_cur.__traceback__ = None
    return e



def command(
    filename: str, backend: str, outdir: str = ".", mod: str = "mylang"
):
    """
    filename: tbnf grammar
    backend: lark | antlr | csharp
    """
    from tbnf.backends import lark, antlr, csharp
    from tbnf import parser as p
    from tbnf import t, unify, typecheck
    from tbnf.common import refs
    from tbnf.macroresolve import resolve
    import os
    backends = {"lark": lark, "antlr": antlr, 'csharp': csharp}

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


def main():
    try:
        wise(command)()
    except Exception as e:
        print(format_exceptions(e))
        sys.exit(1)
