from tbnf import parser as p
from tbnf import r
from contextlib import contextmanager
def remove_imports(stmts):
    return list(_remove_imports(stmts))

@contextmanager
def using_source_path(path):
    old_filename = p.filename
    p.filename = path
    p.parser.source_path = path
    try:
        yield
    finally:
        p.filename = old_filename
        p.parser.source_path = old_filename

def _remove_imports(stmts):
    for each in stmts:
        match each:
            case r.Import(path):
                with using_source_path(path):
                    yield from _remove_imports(p.parser.parse(open(path, encoding='utf8').read()))
            case _:
                yield each
