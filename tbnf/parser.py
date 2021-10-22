# Generated from lark-action.


from tbnf import e, t, r, unify, common
from tbnf.common import Ref, uf, ref, methods, Pos
from tbnf.prims import *
from json.decoder import py_scanstring

filename = None
def _get_location(token):
    return Pos(token.line, token.column, filename)

def unesc(x, f=py_scanstring):
    """from the raw form of a double quoted string to a python string,
    e.g.,
        unesc('"asd"') == "asd"
    """
    return f(x, 1)[0]

def append(xs, x):
    xs.append(x)
    return xs

if '_get_location' not in globals(): 
    def _get_location(token):
        return (token.line, token.column)

if '_get_value' not in globals(): 
    def _get_value(token):
        return token.value


type_aliases = {}
def mk_type_alias(a, b, pos):
    type_aliases[a] = b
    return r.TypeAlias(a, b, pos)


def maybe_ttuple(args):
    if len(args) == 1:
        return args[0]
    return t.Tuple(args)


def eval_unicode(ch):
    return ch

def to_unicode(ch):
    i = ord(ch)
    return fr"\u{i:04X}"


from tbnf.parser_raw import Transformer, Lark_StandAlone, Tree
class parser_Transformer(Transformer):

    def list_0(self, __args):
        return  [__args[1-1]]
    def list_1(self, __args):
        return  append(__args[1-1], __args[2-1])
    def seplist_0(self, __args):
        return  [__args[1-1]]
    def seplist_1(self, __args):
        return  append(__args[1-1], __args[3-1])
    def nullable_0(self, __args):
        return  ()
    def nullable_1(self, __args):
        return  tuple(__args[1-1])
    def surround_0(self, __args):
        return  __args[2-1]
    def start_0(self, __args):
        return  __args[1-1]
    def typevar_0(self, __args):
        return  t.BoundVar(str(__args[2-1]))
    def manyvars_0(self, __args):
        return  tuple(__args[1-1])
    def decl_0(self, __args):
        return  r.Decl(str(__args[2-1]), __args[4-1], _get_location(__args[1-1]))
    def decl_1(self, __args):
        return  mk_type_alias(str(__args[2-1]), str(__args[4-1]), _get_location(__args[1-1]))
    def decl_2(self, __args):
        return t.Methods(str(__args[1-1]), __args[4-1], __args[7-1], _get_location(__args[1-1]))
    def decl_3(self, __args):
        return t.Methods(str(__args[2-1]), None, __args[4-1], _get_location(__args[1-1]))
    def fieldecl_0(self, __args):
        return  (str(__args[1-1]), (_get_location(__args[1-1]), __args[3-1]))
    def manyfieldecls_0(self, __args):
        return  dict(__args[1-1])
    def manytypes_0(self, __args):
        return  tuple(__args[1-1])
    def manytypeargs_0(self, __args):
        return  tuple(__args[1-1])
    def vars_0(self, __args):
        return  tuple(__args[1-1])
    def type_0(self, __args):
        return  t.Arrow(t.Tuple(__args[1-1]), __args[3-1])
    def type_1(self, __args):
        return  maybe_ttuple(__args[2-1])
    def type_2(self, __args):
        return  t.App(__args[1-1], t.Tuple(__args[2-1]))
    def type_3(self, __args):
        return  t.Forall(frozenset(__args[2-1]), __args[4-1])
    def type_4(self, __args):
        return  __args[1-1]
    def type_5(self, __args):
        return  t.Nom(type_aliases.get(str(__args[1-1]), str(__args[1-1])))
    def id_0(self, __args):
        return  str(__args[1-1])
    def toplevel_0(self, __args):
        return  r.Prod(__args[1-1], tuple(__args[3-1]), _get_location(__args[2-1]))
    def toplevel_1(self, __args):
        return  r.Import(unesc(__args[2-1]), _get_location(__args[2-1]))
    def toplevel_2(self, __args):
        return  __args[1-1]
    def toplevel_3(self, __args):
        return  __args[1-1]
    def toplevel_4(self, __args):
        return  r.MacroDef(__args[1-1], __args[3-1], __args[6-1], __args[5-1])
    def cases_0(self, __args):
        return  tuple(__args[1-1])
    def atoms_0(self, __args):
        return  tuple(__args[1-1])
    def case_0(self, __args):
        return  r.Case(__args[1-1], __args[3-1], _get_location(__args[2-1]))
    def atom_0(self, __args):
        return  r.Term(None, str(__args[2-1]), False, _get_location(__args[2-1]))
    def atom_1(self, __args):
        return  r.Term(None, unesc(__args[1-1]), True, _get_location(__args[1-1]))
    def atom_2(self, __args):
        return  r.NonTerm(None, __args[1-1], _get_location(__args[1-1]))
    def atom_3(self, __args):
        return  r.MacroCall(str(__args[1-1]), __args[3-1], _get_location(__args[2-1]))
    def binder_0(self, __args):
        return  e.Binder(__args[1-1], __args[3-1], _get_location(__args[2-1]))
    def binders_0(self, __args):
        return  tuple(__args[1-1])
    def exp_0(self, __args):
        return  e.Expr(None, e.Let(False, __args[2-1], __args[4-1]), _get_location(__args[1-1]))
    def exp_1(self, __args):
        return  e.Expr(None, e.Let(True, __args[3-1], __args[5-1]), _get_location(__args[1-1]))
    def exp_2(self, __args):
        return  e.Expr(None, e.Lam(__args[2-1], __args[4-1]), _get_location(__args[1-1]))
    def exp_3(self, __args):
        return  __args[1-1]
    def call_0(self, __args):
        return  e.Expr(None, e.App(__args[1-1], tuple(__args[3-1])), _get_location(__args[2-1]))
    def call_1(self, __args):
        return  e.Expr(None, e.App(__args[1-1], ()), _get_location(__args[2-1]))
    def call_2(self, __args):
        return  __args[1-1]
    def atomexp_0(self, __args):
        return  e.Expr(ref(int_t), e.Int(int(__args[1-1])), _get_location(__args[1-1]))
    def atomexp_1(self, __args):
        return  e.Expr(ref(float_t), e.Float(float(__args[1-1])), _get_location(__args[1-1]))
    def atomexp_2(self, __args):
        return  e.Expr(ref(str_t), e.String(str(__args[1-1])), _get_location(__args[1-1]))
    def atomexp_3(self, __args):
        return  e.Expr(None, e.Slot(int(__args[2-1])), _get_location(__args[1-1]))
    def atomexp_4(self, __args):
        return  e.Expr(None, e.Tuple(()), _get_location(__args[1-1]))
    def atomexp_5(self, __args):
        return __args[2-1][0] if len(__args[2-1]) == 1 else e.Expr(None, e.Tuple(tuple(__args[2-1])), _get_location(__args[1-1]))
    def atomexp_6(self, __args):
        return  e.Expr(None, e.Var(str(__args[1-1])), _get_location(__args[1-1]))
    def atomexp_7(self, __args):
        return  e.Expr(None, e.Attr(__args[1-1], str(str(__args[3-1]))), _get_location(__args[2-1]))
    def args_0(self, __args):
        return  __args[2-1]
    def lexer_0(self, __args):
        return __args[1-1][0] if len(__args[1-1]) == 1 else r.RegOr(__args[1-1])
    def lexer_and_0(self, __args):
        return __args[1-1][0] if len(__args[1-1]) == 1 else r.RegSeq(__args[1-1])
    def lexer_atomexpr_0(self, __args):
        return  r.RegOneOrMore(__args[1-1])
    def lexer_atomexpr_1(self, __args):
        return  r.RegMany(__args[1-1])
    def lexer_atomexpr_2(self, __args):
        return  r.RegOptional(__args[1-1])
    def lexer_atomexpr_3(self, __args):
        return  __args[1-1]
    def lexer_atom_0(self, __args):
        return  r.RegSeq(list(map(r.RegLit, list(unesc(__args[1-1])))))
    def lexer_atom_1(self, __args):
        return  r.RegNot(__args[2-1])
    def lexer_atom_2(self, __args):
        return  __args[2-1]
    def lexer_atom_3(self, __args):
        return  r.RegNumber()
    def lexer_atom_4(self, __args):
        return  r.RegRange(eval_unicode(__args[2-1]), eval_unicode(__args[4-1]))
    def lexer_atom_5(self, __args):
        return  r.RegRange(to_unicode(str(__args[2-1])), to_unicode(str(__args[4-1])))
    def lexer_atom_6(self, __args):
        return  r.RegWildcard()
    def lexer_atom_7(self, __args):
        return  r.RegRef(str(__args[1-1]))
    def lexerdef_0(self, __args):
        return  r.LexerDef(__args[2-1], __args[5-1])


parser = Lark_StandAlone(transformer=parser_Transformer())
