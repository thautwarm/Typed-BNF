from lark import Lark, Transformer, v_args
from tbnf import e, t, r, unify, common
from tbnf.common import Ref, uf, refs, methods
from tbnf.prims import *
from json.decoder import py_scanstring
from pprint import pprint


def unesc(x, f=py_scanstring):
    """from the raw form of a double quoted string to a python string,
    e.g.,
        unesc('"asd"') == "asd"
    """
    return f(x, 1)[0]


_tbnf_parser = r"""
      start : toplevel+ -> many
      
      manyvars : -> empty 
               | "'" CNAME ("," "'" CNAME)* -> many
         
      decl : "val" CNAME ":" type -> tdecl
           | "shape" CNAME "[" manyvars "]" "{" manyfieldecls "}" -> structdecl1
           | "shape" CNAME "{" manyfieldecls "}" -> structdecl2
           
 
      fieldecl : CNAME ":" type -> pair
      manyfieldecls: fieldecl+ -> many

      manytypes : "(" ")" -> empty
            | "(" type ("," type)* ")" -> many


      manytypeargs : "[" "]" -> empty
                  | "[" type ("," type)* "]" -> many

      vars : ("'" CNAME)+ -> many

      type : manytypes "->" type -> arrow
      | manytypes -> maybe_tuple
      | type manytypeargs -> tcall
      | "forall" vars "." type -> forall
      | "'" CNAME -> bound
      | CNAME -> tvar


      id : CNAME -> str
      toplevel : id ":" cases  -> prod1
             | "import" string -> decl
             | decl            -> just

      cases : cases "|" case   -> append
            | case             -> one
      
      string : ESCAPED_STRING -> unescape
      atoms : atom* -> many
      case : atoms "{" exp "}" -> case

      atom : "<" id ">"     -> named_terminal
          | string   -> lit_terminal
          | id     -> nonterminal
      
      
      binder: id "=" exp -> binder
      binders: binder ("and" binder)* -> many
      exp : 
          | "let" binders "in" exp -> let_non_rec
          | "let" "rec" binders "in" exp -> let_rec
          | "fn" args "->" exp -> fun
          | call -> just
          
      
      call : call "(" exp ("," exp)* ")" -> call
           | call "(" ")" -> call 
           | atomexp -> just

      atomexp : INT -> int
          | FLOAT -> float
          | ESCAPED_STRING -> string
          | "$" INT -> slot
          | "(" ")" -> unit
          | "(" exp ("," exp)* ")" -> nest
          | id -> var   
          | atomexp "." CNAME -> attr

      args : "(" ")" -> empty
           | "(" id ("," id)* ")" -> many

      
      %import common.ESCAPED_STRING
      %import common.CNAME
      %import common.FLOAT
      %import common.INT
      %import common.WS
      %ignore WS
    """




def ref(t=common.undef):
    r = Ref(t)
    refs.append(r)
    return r


@v_args(inline=True)
class TBNFTransformer(Transformer):
    unescape = staticmethod(unesc)
    str = staticmethod(str)

    def attr(self, base, attr):
        return e.Expr(ref(), e.Attr(base, str(attr)))

    def slot(self, i):
        return e.Expr(ref(), e.Slot(int(i)))

    def just(self, a):
        return a

    def call(self, f, *args):
        return e.Expr(ref(), e.App(f, args))

    def unit(self):
        return e.Expr(ref(), e.Tuple(()))

    def string(self, s):
        return e.Expr(ref(str_t), e.String(str(s)))

    def float(self, i):
        return e.Expr(ref(float_t), e.Float(float(i)))

    def var(self, s):
        return e.Expr(ref(), e.Var(s))

    def nest(self, *xs):
        if len(xs) == 1:
            return xs[0]
        return e.Expr(ref(), e.Tuple(xs))

    def int(self, i):
        return e.Expr(ref(int_t), e.Int(int(i)))

    def binder(self, a, b):
        return e.Binder(a, b)

    def let_non_rec(self, xs, c):
        return e.Expr(ref(), e.Let(False, xs, c))

    def let_rec(self, xs, c):
        return e.Expr(ref(), e.Let(True, xs, c))

    def fun(self, args, body):
        return e.Expr(ref(), e.Lam(args, body))

    def empty(self):
        return ()

    def many(self, *args):
        return args

    def prod1(self, lhs, cases):
        return r.Prod(lhs, cases)

    def structdecl1(self, basename, params, fields):
        return t.Methods(
            str(basename),
            tuple(t.BoundVar(a) for a in params),
            {str(k): v for k, v in fields},
        )

    def structdecl2(self, basename, fields):
        return t.Methods(str(basename), None, {str(k): v for k, v in fields})

    def pair(self, a, b):
        return (a, b)

    def decl(self, x):
        return r.Import(x)

    def named_terminal(self, x):
        return r.Term(ref(), x, False)

    def lit_terminal(self, x):
        return r.Term(ref(), x, True)

    def case(self, xs, action):
        return r.Case(xs, action)

    def one(self, a):
        return [a]

    def append(self, xs, a):
        xs.append(a)
        return xs

    def case_append(self, xs, a):
        xs.append(a)
        return xs

    def nonterminal(self, a):
        return r.NonTerm(ref(), a)

    def tdecl(self, word, t):
        return r.Decl(str(word), t)

    def arrow(self, args, ret):
        return t.Arrow(t.Tuple(args), ret)

    def maybe_tuple(self, args):
        if len(args) == 1:
            return args
        return t.Tuple(args)

    def forall(self, vars, t1):
        return t.Forall(frozenset(t.BoundVar(str(v)) for v in vars), t1)

    def bound(self, v):
        return t.BoundVar(str(v))

    def tvar(self, v):
        return t.Nom(str(v))

    def tcall(self, f, args):
        return t.App(f, t.Tuple(args))


tbnf_parser = Lark(
    _tbnf_parser,
    parser="lalr",
    start="start",
    transformer=TBNFTransformer(),
    debug=True,
)


_type_parser = r"""

start : decl+ -> many
decl : "val" CNAME ":" type -> tdecl
           | "shape" CNAME "[" manyvars "]" "{" manyfieldecls "}" -> structdecl1
           | "shape" CNAME "{" manyfieldecls "}" -> structdecl2
 
fieldecl : CNAME ":" type -> pair
manyfieldecls: fieldecl+ -> many
 
manytypes : "(" ")" -> empty
          | "(" type ("," type)* ")" -> many


manyvars : "'" CNAME ("," "'" CNAME)* -> many 
         | -> empty

manytypeargs : "[" "]" -> empty
            | "[" type ("," type)* "]" -> many

vars : ("'" CNAME)+ -> many

type : manytypes "->" type -> arrow
     | manytypes -> maybe_tuple
     | type manytypeargs -> tcall
     | "forall" vars "." type -> forall
     | "'" CNAME -> bound
     | CNAME -> tvar
      %import common.CNAME
      %import common.WS
      %ignore WS
"""


type_parser = Lark(
    _type_parser,
    parser="lalr",
    start="start",
    transformer=TBNFTransformer(),
    debug=True,
)
