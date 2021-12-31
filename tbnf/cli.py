from _tbnf.apis import build_analyzer
from _tbnf.backends_python_lark import codegen as codegenpy
from _tbnf.FableSedlex.code_gen import gen_doc
from _tbnf.backends_common import CodeGenOptions
from tbnf.grammar_parser import parser
from tbnf.basic import set_filename
from wisepy2 import wise
from pathlib import Path
import sys

backends = {
    'python-lark': codegenpy
}

def cli_call(tbnf_source_path: Path, out_dir: Path, lang: str, backend: str = "python-lark"):
    set_filename(str(tbnf_source_path))
    with tbnf_source_path.open(encoding='utf8') as file:
        defs = parser.parse(file.read())
    # for ec in defs:
    #     print(ec)
    analyzer = build_analyzer(defs)
    if call_backend := backends.get(backend):
        for filename, doc in call_backend(analyzer, CodeGenOptions(lambda x: x, lang), defs):
            with (out_dir / filename).open(encoding='utf8', mode='w') as file:
                gen_doc(doc, file.write)
    else:
        sys.exit(f"unknown backend {backend}! available backenks:\n    {', '.join(list(backends))}.")

def main():
    wise(cli_call)()
