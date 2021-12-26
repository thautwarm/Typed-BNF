from pathlib import Path


def find_paths(p: Path):
    if not p.is_dir():
        if p.suffix == ".gen":
            yield p
    else:
        for i in p.iterdir():
            if i == p:
                continue
            yield from find_paths(i)


for FROM, TO in [
    (path, path.with_suffix(".py")) for path in find_paths(Path(__file__).parent.parent)
]:
    with FROM.open() as f:
        text = f.read()

    defs = [[e.strip() for e in i.strip().split()] for i in text.split(";")]
    code = [
        "from __future__ import annotations",
        "from enum import Enum, auto as _auto",
        "import typing",
        "from dataclasses import dataclass",
    ]
    defs = list(filter(None, defs))
    datatypes = []

    for each in defs:
        code.append("")
        code.append("")

        head, *each = each
        if head == "typevar":
            var, *args = each
            cov = ""
            if args:
                cov = "bound=" + " | ".join(map(repr, args))
            code.append(f"{var} = typing.TypeVar({var!r}, {cov})")
        if head == "import":
            code.append(f"from {each[0]} import *")
        elif head == "enum":
            name, *variants = each
            code.append(f"class {name}(Enum):")
            for v in variants:
                code.append(f"    {v} = _auto()")
            else:
                code.append("    pass")
        elif head == "data":
            name, *fields = each
            datatypes.append(name)
            code.append("@dataclass")
            code.append(f"class {name}:")
            if fields:
                for v in fields:
                    code.append("    " + v)
            code.append("    " + "loc: tuple[int, int] | None = None")
            code.append("\n")
            code.append("    " + "def __or__(self, loc):")
            code.append("    " + "    self.loc = loc")
            code.append("    " + "    return self")

    code.append("\n")

    code.append(f'{FROM.with_suffix("").name.capitalize()} = {" | ".join(datatypes)}')

    with TO.open("w") as f:
        f.write("\n".join(code))