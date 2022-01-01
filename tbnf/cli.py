from _tbnf.src.analysis import Analyzer
from _tbnf.src.apis import build_analyzer
from _tbnf.FableSedlex.code_gen import gen_doc
from _tbnf.src.backends_common import CodeGenOptions
from _tbnf.src.grammar import definition
from _tbnf.src.backends_python_lark import codegen as codegen_py
from _tbnf.src.backends_ocaml_menhir import codegen as _codegen_ocaml
from _tbnf.src.backends_csharp_antlr import codegen as _codegen_csharp
from tbnf.grammar_parser import parser
from tbnf.basic import set_filename
from wisepy2 import wise
from pathlib import Path
from typing import List
import sys


def codegen_ocaml(analyzer: Analyzer, options: CodeGenOptions, stmts: List[definition]):
    with (Path(__file__).parent / "rts.ml").open('r', encoding='utf8') as file:
        rts_file_string = file.read()
    return _codegen_ocaml(analyzer, options, rts_file_string, stmts)


backends = {
    'python-lark': codegen_py,
    'ocaml-menhir': codegen_ocaml,
    "csharp-antlr": _codegen_csharp
}

def default_rename_var(x):
    return x

def default_rename_constructor(x):
    return x

def default_rename_type(x):
    return x

def default_rename_field(x):
    return x


def tbnf(
        tbnf_source_path: Path,
        out_dir: Path,
        lang: str,
        backend: str = "python-lark",
        renamer_config: str = ""):
    """Typed BNF CLI tool.
    """
    set_filename(str(tbnf_source_path))

    with tbnf_source_path.open(encoding='utf8') as file:
        defs = parser.parse(file.read())
    
    if not renamer_config:
        renamer_config = out_dir / "rename.tbnf.py"
    else:
        renamer_config = Path(renamer_config)
    
    config_scope = {}
    if renamer_config.exists() and renamer_config.is_file():
        with renamer_config.open("r", encoding='utf8') as file:
            exec(file.read(), config_scope)

    rename_var = config_scope.get('rename_var') or default_rename_var
    rename_type = config_scope.get('rename_type') or default_rename_type
    rename_ctor = config_scope.get('rename_constructor') or default_rename_constructor
    rename_field = config_scope.get('rename_field') or default_rename_field
    
    
    defs, analyzer = build_analyzer(defs)

    if call_backend := backends.get(backend):
        fs_out = call_backend(
            analyzer,
            CodeGenOptions(
                variable_renamer=rename_var,
                type_renamer=rename_type,
                field_renamer=rename_field,
                constructor_renamer=rename_ctor,
                lang=lang),
            defs)
        for filename, doc in fs_out:
            with (out_dir / filename).open(encoding='utf8', mode='w') as file:
                gen_doc(doc, file.write)
    else:
        sys.exit(
            f"unknown backend {backend}! available backenks:\n    {', '.join(list(backends))}.")


def main():
    wise(tbnf)()
