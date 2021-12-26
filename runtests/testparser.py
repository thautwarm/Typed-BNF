from tbnf.basic import set_filename
from tbnf.grammar_parser import parser, Tree
import prettyprinter
prettyprinter.install_extras(["dataclasses"])

def testcase(source, expect: str = None):
    res = parser.parse(source)
    if not isinstance(res, Tree):
        res = prettyprinter.pformat(res)
    else:
        res = str(res)
    if isinstance(expect, str):
        res = res.strip()
        expect = expect.strip()
        assert res == expect, source
        print("test succeeded:", source)
    else:
        print(res)

expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename=''),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=3, filename=''),
                tbnf.psym.production(
                    parsing_syms=[
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=5,
                                filename=''
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        )
                    ],
                    action=tbnf.exp.Variable(
                        ident=tbnf.basic.ident(
                            pos=tbnf.basic.position(
                                line=1,
                                col=9,
                                filename=''
                            ),
                            name='e'
                        )
                    )
                )
            )
        ]
    )
]
"""
testcase("a : b { e }", expect)


expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename=''),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=3, filename=''),
                tbnf.psym.production(
                    parsing_syms=[],
                    action=tbnf.exp.Let(
                        ident=tbnf.basic.ident(
                            pos=tbnf.basic.position(
                                line=1,
                                col=11,
                                filename=''
                            ),
                            name='x'
                        ),
                        value=tbnf.exp.Int(
                            value=1,
                            pos=tbnf.basic.position(
                                line=1,
                                col=15,
                                filename=''
                            )
                        ),
                        body=tbnf.exp.Variable(
                            ident=tbnf.basic.ident(
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=20,
                                    filename=''
                                ),
                                name='x'
                            )
                        ),
                        pos=tbnf.basic.position(line=1, col=7, filename='')
                    )
                )
            )
        ]
    )
]
"""
testcase("a : { let x = 1 in x }", expect)


expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename=''),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=3, filename=''),
                tbnf.psym.production(
                    parsing_syms=[],
                    action=tbnf.exp.Fun(
                        params=[
                            tbnf.decl.ann(
                                ident=tbnf.basic.ident(
                                    pos=tbnf.basic.position(
                                        line=1,
                                        col=12,
                                        filename=''
                                    ),
                                    name='x'
                                ),
                                typ=tbnf.ty.ty_ident(
                                    ident=tbnf.basic.ident(
                                        pos=tbnf.basic.position(
                                            line=1,
                                            col=15,
                                            filename=''
                                        ),
                                        name='int'
                                    )
                                )
                            )
                        ],
                        body=tbnf.exp.Variable(
                            ident=tbnf.basic.ident(
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=23,
                                    filename=''
                                ),
                                name='x'
                            )
                        ),
                        pos=tbnf.basic.position(line=1, col=7, filename='')
                    )
                )
            )
        ]
    )
]
"""
testcase("a : { fun (x: int) -> x }", expect)


set_filename("myfile")
expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename='myfile'),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=3, filename='myfile'),
                tbnf.psym.production(
                    parsing_syms=[],
                    action=tbnf.exp.Tuple(
                        elements=[
                            tbnf.exp.Int(
                                value=1,
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=8,
                                    filename='myfile'
                                )
                            ),
                            [
                                tbnf.exp.Slot(
                                    ith=2,
                                    pos=tbnf.basic.position(
                                        line=1,
                                        col=11,
                                        filename='myfile'
                                    )
                                ),
                                tbnf.exp.String(
                                    value='3',
                                    pos=tbnf.basic.position(
                                        line=1,
                                        col=15,
                                        filename='myfile'
                                    )
                                )
                            ]
                        ],
                        pos=tbnf.basic.position(
                            line=1,
                            col=7,
                            filename='myfile'
                        )
                    )
                )
            )
        ]
    )
]"""
testcase("a : { (1, $2, \"3\") }", expect)

expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename='myfile'),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=3, filename='myfile'),
                tbnf.psym.production(
                    parsing_syms=[
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=5,
                                filename='myfile'
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        ),
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=7,
                                filename='myfile'
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        )
                    ],
                    action=tbnf.exp.Call(
                        func=tbnf.exp.Variable(
                            ident=tbnf.basic.ident(
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=11,
                                    filename='myfile'
                                ),
                                name='f'
                            )
                        ),
                        arguments=[
                            tbnf.exp.Int(
                                value=1,
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=13,
                                    filename='myfile'
                                )
                            ),
                            tbnf.exp.Int(
                                value=2,
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=16,
                                    filename='myfile'
                                )
                            )
                        ]
                    )
                )
            ),
            (
                tbnf.basic.position(line=1, col=21, filename='myfile'),
                tbnf.psym.production(
                    parsing_syms=[
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=23,
                                filename='myfile'
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        ),
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=25,
                                filename='myfile'
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        )
                    ],
                    action=tbnf.exp.Slot(
                        ith=1,
                        pos=tbnf.basic.position(
                            line=1,
                            col=29,
                            filename='myfile'
                        )
                    )
                )
            )
        ]
    )
]
"""
testcase("a : c d { f(1, 2) } | e f { $1 } ", expect)

expect = r"""
[
    tbnf.decl.ruledef(
        pos=tbnf.basic.position(line=1, col=1, filename='myfile'),
        name='a',
        prods=[
            (
                tbnf.basic.position(line=1, col=2, filename='myfile'),
                tbnf.psym.production(
                    parsing_syms=[
                        tbnf.psym.nonterminal(
                            pos=tbnf.basic.position(
                                line=1,
                                col=5,
                                filename='myfile'
                            ),
                            define=tbnf.grammar_parser_raw.Token('')
                        )
                    ],
                    action=tbnf.exp.Field(
                        value=tbnf.exp.Variable(
                            ident=tbnf.basic.ident(
                                pos=tbnf.basic.position(
                                    line=1,
                                    col=9,
                                    filename='myfile'
                                ),
                                name='a'
                            )
                        ),
                        field='b'
                    )
                )
            )
        ]
    )
]
"""
testcase("a:  b { a.b } ", expect)

expect = r"""
[
    tbnf.lexer.lexerdef(
        name='a',
        rule=tbnf.lexer.RegSeq(
            _=[
                tbnf.lexer.RegGroup(
                    _=tbnf.lexer.RegOr(
                        _=[
                            tbnf.lexer.RegSeq(
                                _=[
                                    tbnf.lexer.RegRef(_='a'),
                                    tbnf.lexer.RegOptional(
                                        _=tbnf.lexer.RegRef(_='b')
                                    )
                                ]
                            ),
                            tbnf.lexer.RegSeq(
                                _=[
                                    tbnf.lexer.RegOneOrMore(
                                        _=tbnf.lexer.RegRef(_='c')
                                    ),
                                    tbnf.lexer.RegRef(_='d')
                                ]
                            )
                        ]
                    )
                ),
                tbnf.lexer.RegMany(
                    _=tbnf.lexer.RegRange(start=4660, end=9029)
                ),
                tbnf.lexer.RegNot(_=tbnf.lexer.RegRange(start=39, end=48)),
                tbnf.lexer.RegWildcard(),
                tbnf.lexer.RegRef(_='z')
            ]
        )
    )
]
"""
testcase(r"a = (a b? | c+ d) \u1234-\u2345* !'-0 _ z ", expect)
