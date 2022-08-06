from _tbnf.src.analysis import Analyzer
from _tbnf.src.apis import build_analyzer
from _tbnf.FableSedlex.code_gen import gen_doc
from _tbnf.src.grammar import definition
from _tbnf.src.backends_common import CodeGenOptions
from _tbnf.src import resource_keys
import _tbnf.src.backends_python_lark as codegen_py
import _tbnf.src.backends_ocaml_menhir as codegen_ocaml
import _tbnf.src.backends_csharp_antlr as codegen_csharp
import _tbnf.src.backends_type_script_antlr as codegen_antlr
from tbnf.grammar_parser import parser
from tbnf.basic import set_filename
from tbnf.resources import load_resource
from tbnf.cg_options import Options

from wisepy2 import wise
from pathlib import Path
from typing import List
import sys

backends = {
    'python-lark': codegen_py.codegen,
    'ocaml-menhir': codegen_ocaml.codegen,
    'csharp-antlr': codegen_csharp.codegen,
    'typescript-antlr': codegen_antlr.codegen
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
        config_path: str = ""):
    """Typed BNF CLI tool.
    """
    set_filename(str(tbnf_source_path))

    with tbnf_source_path.open(encoding='utf8') as file:
        defs = parser.parse(file.read())

    if not config_path:
        config_path_o = out_dir / "rename.tbnf.py"
    else:
        config_path_o = Path(config_path)

    config_scope = {}
    if config_path_o.exists() and config_path_o.is_file():
        with config_path_o.open("r", encoding='utf8') as file:
            exec(file.read(), config_scope)

    options = Options(config_scope, load_resource)

    defs, analyzer = build_analyzer(defs)

    if call_backend := backends.get(backend):
        fs_out = call_backend(
            analyzer,
            options,
            lang,
            defs
        )
        for filename, doc in fs_out:
            with (out_dir / filename).open(encoding='utf8', mode='w') as file:
                def write_file(s):
                    file.write(s)
                gen_doc(doc, write_file)
    else:
        sys.exit(
            f"unknown backend {backend}! available backenks:\n    {', '.join(list(backends))}.")


def main():
    wise(tbnf)()
