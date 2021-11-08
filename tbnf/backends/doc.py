from __future__ import annotations
from dataclasses import dataclass
from io import StringIO
from typing import Generator, Iterable
import os


__all__ = [
    'Doc', 'Word',
    
    'space', 'align', 'vsep', 'comma', 'seplist',
    'emptyDoc', 'word', 'parens', 'curly', 'join',

    'Concat', 'Indent', "VSep", "Align"
]


class DocDyn:
    def __add__(self, o: Doc | str) -> Doc:
        if isinstance(o, str):
            o = Word(o)
        return  self * space * o

    def __mul__(self, o: Doc | str) -> Doc:
        if isinstance(o, str):
            o = Word(o)
        return Concat(self, o)
    
    def __pow__(self, n: int) -> Doc:
        res = self
        for _ in range(n - 1):
            res *= self
        return res

    def __rshift__(self, i) -> Doc:
        return Indent(i, self)

    def __lshift__(self, i) -> Doc:
        return Indent(-i, self)

    def render(self) -> Generator[Primitive]:
        raise NotImplementedError
    

# do not export
@dataclass
class Concat(DocDyn):
    left : Doc
    right : Doc

    def render(self):
        left_it = list(self.left.render())
        right_it = list(self.right.render())
        if not left_it:
            yield from right_it
        elif not right_it:
            yield from left_it
        else:
            yield from left_it[:-1]
            yield left_it[-1] + right_it[0]
            yield from right_it[1:]

@dataclass
class VSep(DocDyn):
    segs : list[Doc]
    def __post_init__(self):
        for i in range(len(self.segs)):
            if isinstance(self.segs[i], str):
                self.segs[i] = Word(self.segs[i])
            else:
                assert self.segs[i] is not None
    def render(self):
        for seg in self.segs:
            yield from seg.render()

@dataclass
class Align(DocDyn):
    seg : Doc
    def __post_init__(self):
        assert self.seg is not None
        if isinstance(self.seg, str):
            self.seg = Word(self.seg)
    def render(self):
        it = list(self.seg.render())
        if not it:
            return
        it[0] = [I_PushCurrentIndent()] + it[0]
        it[-1] += [I_PopIndent()]
        yield from it

@dataclass
class Indent(DocDyn):
    i: int
    seg : Doc

    def __post_init__(self):
        assert self.seg is not None
        if isinstance(self.seg, str):
            self.seg = Word(self.seg)

    def render(self):
        prefix = [I_PushIndent(self.i)]
        it = list(self.seg.render())
        if not it:
            return
        it[0] = prefix + it[0]
        it[-1] += [I_PopIndent()]
        yield from it
        


@dataclass
class Word(DocDyn):
    s : str

    def render(self):
        yield [self]

@dataclass
class I_PushIndent:
    level : int

@dataclass
class I_PushCurrentIndent:
    pass

@dataclass
class I_PopIndent:
    pass

Doc = VSep | Concat | VSep | Align | Indent | Word

Control = I_PopIndent | I_PushCurrentIndent | I_PushIndent
Primitive = list[Word | Control]

space = Word(" ")

def render_vm(setences: list[Primitive]):
    levels = [0]
    if not setences:
        return ""
    lines = []
    for words in setences:
        line = StringIO()
        col = 0
        initialized = False
        def line_init():
            nonlocal initialized, col
            if not initialized:
                col += levels[-1]
                line.write(" " * col)
                initialized = True
        
        for word in words:
            if isinstance(word, Word):
                line_init()
                line.write(word.s)
                col += len(word.s)
            elif isinstance(word, I_PushCurrentIndent):
                levels.append(col)
            elif isinstance(word, I_PopIndent):
                levels.pop()
            elif isinstance(word, I_PushIndent):
                levels.append(levels[-1] + word.level)
            else:
                raise TypeError(word)
        lines.append(line.getvalue())
    return os.linesep.join(lines)
            

def doc2str(doc: Doc):
    primitives = doc.render()
    return render_vm(primitives)


def vsep(*args):
    return VSep(args)


class Applicator:
    def __init__(self, func):
        self.func = func
    
    def __matmul__(self, o: Doc|str) -> Doc:
        return self.func(o)

    def __call__(self, o: Doc|str) -> Doc:
        return self.func(o)

align = Applicator(Align)
comma = Word(",")
emptyDoc = Word("")
word = Word
lbrace = word("{")
rbrace = word("}")

def parens(seg: Doc) -> Doc:
    return Word("(") * seg * Word(")")

def curly(seg: Doc) -> Doc:
    return lbrace * seg * rbrace

def seplist(sep, lst):
    lst = iter(lst)
    fst = next(lst, None)
    if fst is None:
        return emptyDoc
    
    res = fst
    for each in lst:
        res = res * sep * each
    return res

def join(seq: Iterable[Doc|str]):
    return seplist(space, seq)

if __name__ == '__main__':
    print(doc2str(
        space ** 5 *
        (align @ vsep(
            Word("begin"),
            vsep(
                (Word("asdasdsa") * " " * "asda"),
                seplist(comma,  [word("elt")] * 3)
            ) >> 4,
            Word("end"),
        ))
    ))