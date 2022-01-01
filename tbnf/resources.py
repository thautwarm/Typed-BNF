from _tbnf.src import resource_keys
from pathlib import Path

_s_resources = {}


def register_resource(resource_key: str):
    def reg(func):
        _s_resources[resource_key] = func

    return reg


def load_resource(resource_key: str):
    if f := _s_resources.get(resource_key):
        return f()
    raise Exception(f"unknown resource key {resource_key}")


@register_resource(resource_keys.ocaml_rts_file)
def load_ocaml_rts_file():
    with (Path(__file__).parent / "rts.ml").open('r', encoding='utf8') as file:
        rts_file_string = file.read()
    return rts_file_string
