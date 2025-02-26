from __future__ import annotations
from array import array
from typing import (List, Tuple, MutableSequence)
from ..fable_modules.fable_library.list import empty
from ..fable_modules.fable_library.string import (to_console, printf)
from .analysis import (build_analyzer, Analyzer)
from .grammar import (node, position, definition)

x : node = node(8, 5)

z : definition = definition(1, {
    "define": empty(),
    "lhs": "2",
    "pos": position(0, 0, "")
})

def main(a: int, b: int, c: int) -> MutableSequence[int]:
    arg10 : int = (a + (b // c)) or 0
    to_console(printf("%d"))(arg10)
    x_1 : Tuple[List[definition], Analyzer] = build_analyzer([definition(1, {
        "define": empty(),
        "lhs": "Float",
        "pos": position(0, 0, "")
    })])
    return array("i", [1, 2, 3, 4])


