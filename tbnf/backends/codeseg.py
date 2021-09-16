from __future__ import annotations
from dataclasses import dataclass
from io import StringIO

@dataclass
class Line:
    _: list[str]

@dataclass
class VList:
    _: list[Seg]

@dataclass
class Indent:
    _: Seg


Seg = str | Line | VList | Indent


def _print(s):
    print(s, end='')

def show(seg: Seg, indent='', print=_print):
    match seg:
        case str():
            print(seg)
        case Line(segs):
            print(indent)
            for e in segs:
                assert isinstance(e, str)
                print(e)
                print(" ")
            print("\n")
        case VList(segs):
            last = None
            for each in segs:
                if isinstance(each, str):
                    print(each)
                    print(" ")
                else:
                    if isinstance(last, str):
                        print('\n')
                    show(each, indent, print)

                last = each
        case Indent(seg):
            show(seg, indent + "  ", print)
