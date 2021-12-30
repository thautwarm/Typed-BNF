# Generated from lark-action.
def _get_location(token):
    return (token.line, token.column)

def _get_value(token):
    return token.value


from _tbnf.apis import *
from tbnf.basic import mkpos
import json.decoder
def add(xs, x):
    xs.append(x)
    return xs

def unesc(x, f=json.decoder.py_scanstring):
    """from the raw form of a double quoted string to a python string,
    e.g.,
        unesc('"asd"') == "asd"
    """
    return f(x, 1)[0]


def u2i(ch):
    return int(ch[-4:], 16)

def to_unicode(ch):
    i = ord(ch)
    return i
    # return fr"\u{i:04X}"


from tbnf.grammar_parser_raw import Transformer, Lark_StandAlone, Tree
class grammar_parser_Transformer(Transformer):

    def start_0(self, __args):
        return  __args[1-1]
    def empty_0(self, __args):
        return  []
    def empty_1(self, __args):
        return  __args[1-1]
    def slist_0(self, __args):
        return  [__args[1-1]]
    def slist_1(self, __args):
        return  add(__args[1-1], __args[3-1])
    def list_0(self, __args):
        return  [__args[1-1]]
    def list_1(self, __args):
        return  add(__args[1-1], __args[2-1])
    def eslist_0(self, __args):
        return  __args[1-1]
    def elist_0(self, __args):
        return  __args[1-1]
    def identstr_0(self, __args):
        return  str(__args[1-1])
    def typ_0(self, __args):
        return  __args[1-1]
    def arrow_typ_0(self, __args):
        return  MK_TFun([__args[1-1]], __args[3-1])
    def arrow_typ_1(self, __args):
        return  MK_TFun(__args[2-1], __args[5-1])
    def arrow_typ_2(self, __args):
        return  MK_TTuple(__args[1-1])
    def typ2_0(self, __args):
        return  MK_TConst(str(__args[1-1]))
    def typ2_1(self, __args):
        return  __args[1-1]
    def typ2_2(self, __args):
        return  MK_TApp(__args[1-1], __args[3-1])
    def type_product_0(self, __args):
        return  add(__args[1-1], __args[3-1])
    def type_product_1(self, __args):
        return  [__args[1-1]]
    def top_typ_0(self, __args):
        return  MK_Poly(__args[2-1], __args[4-1])
    def top_typ_1(self, __args):
        return  MK_Mono(__args[1-1])
    def tvar_0(self, __args):
        return  MK_TVar(str(__args[2-1]))
    def tvar_str_0(self, __args):
        return  str(__args[2-1])
    def type_params_0(self, __args):
        return  __args[2-1]
    def type_params_1(self, __args):
        return  []
    def field_ann_0(self, __args):
        return  (str(__args[1-1]), __args[3-1], mkpos(__args[1-1]))
    def field_anns_0(self, __args):
        return  []
    def field_anns_1(self, __args):
        return  __args[2-1]
    def decl_0(self, __args):
        return  MK_Declvar(__args[3-1], __args[5-1], mkpos(__args[2-1]))
    def decl_1(self, __args):
        return MK_Decltype(__args[3-1], __args[4-1], __args[5-1], mkpos(__args[1-1]))
    def toplevel_0(self, __args):
        return  __args[1-1]
    def toplevel_1(self, __args):
        return  __args[1-1]
    def toplevel_2(self, __args):
        return  __args[1-1]
    def toplevel_3(self, __args):
        return  MK_Defignore(__args[2-1], mkpos(__args[1-1]))
    def def_0(self, __args):
        return MK_Defmacro(str(__args[1-1]), __args[3-1], __args[5-1], mkpos(__args[1-1]))
    def def_1(self, __args):
        return MK_Defrule(str(__args[1-1]), __args[2-1], mkpos(__args[1-1]))
    def productions_0(self, __args):
        return  [(mkpos(__args[1-1]), __args[2-1])]
    def productions_1(self, __args):
        return  add(__args[1-1], (mkpos(__args[2-1]), __args[3-1]))
    def production_0(self, __args):
        return  MK_production(__args[1-1], __args[3-1])
    def psym_0(self, __args):
        return  MK_Term(str(__args[1-1]), False)
    def psym_1(self, __args):
        return  MK_Term(unesc(str(__args[1-1])), True)
    def psym_2(self, __args):
        return  MK_Nonterm(__args[1-1])
    def psym_3(self, __args):
        return  MK_Macrocall(str(__args[1-1]), __args[3-1], mkpos(__args[1-1]))
    def ann_0(self, __args):
        return  (__args[1-1], __args[3-1])
    def func_parameters_0(self, __args):
        return  __args[2-1]
    def expr_0(self, __args):
        return MK_expr(MK_ELet(__args[2-1], __args[4-1], __args[6-1]), mkpos(__args[1-1]))
    def expr_1(self, __args):
        return MK_expr(MK_EFun(__args[2-1], __args[4-1]), mkpos(__args[1-1]))
    def expr_2(self, __args):
        return  __args[1-1]
    def call_0(self, __args):
        return  MK_expr(MK_EApp(__args[1-1], __args[3-1]), __args[1-1].pos)
    def call_1(self, __args):
        return  __args[1-1]
    def snd_0(self, __args):
        return  __args[2-1]
    def atomexp_0(self, __args):
        return    MK_expr(MK_EInt(int(__args[1-1])), mkpos(__args[1-1]))
    def atomexp_1(self, __args):
        return  MK_expr(MK_EFlt(float(__args[1-1])), mkpos(__args[1-1]))
    def atomexp_2(self, __args):
        return  MK_expr(MK_EStr(unesc(__args[1-1])), mkpos(__args[1-1]))
    def atomexp_3(self, __args):
        return  MK_expr(MK_ESlot(int(__args[2-1])), mkpos(__args[1-1]))
    def atomexp_4(self, __args):
        return  MK_expr(MK_ETuple([]), mkpos(__args[1-1]))
    def atomexp_5(self, __args):
        return  MK_expr(MK_ETuple(__args[2-1]), mkpos(__args[1-1]))
    def atomexp_6(self, __args):
        return  MK_expr(MK_EVar(str(__args[1-1])), mkpos(__args[1-1]))
    def atomexp_7(self, __args):
        return  MK_expr(MK_EField(__args[1-1], str(__args[3-1])), __args[1-1].pos)
    def lexer_0(self, __args):
        return  MK_LOr(__args[1-1])
    def lexer_and_0(self, __args):
        return  MK_LSeq(__args[1-1])
    def lexer_atomexpr_0(self, __args):
        return  MK_LPlus(__args[1-1])
    def lexer_atomexpr_1(self, __args):
        return  MK_LStar(__args[1-1])
    def lexer_atomexpr_2(self, __args):
        return  MK_LOptional(__args[1-1])
    def lexer_atomexpr_3(self, __args):
        return  __args[1-1]
    def lexer_atom_0(self, __args):
        return  MK_LStr(str(__args[1-1]))
    def lexer_atom_1(self, __args):
        return  MK_LNot(__args[2-1])
    def lexer_atom_2(self, __args):
        return  MK_LGroup(__args[2-1])
    def lexer_atom_3(self, __args):
        return  MK_LNumber
    def lexer_atom_4(self, __args):
        return  MK_LRange(u2i(__args[2-1]), u2i(__args[4-1]))
    def lexer_atom_5(self, __args):
        return  MK_LRange(ord(__args[2-1]), ord(__args[4-1]))
    def lexer_atom_6(self, __args):
        return  MK_LWildcard
    def lexer_atom_7(self, __args):
        return  MK_LRef(str(__args[1-1]))
    def lexerdef_0(self, __args):
        return  MK_Deflexer(str(__args[1-1]), __args[3-1], mkpos(__args[1-1]))


parser = Lark_StandAlone(transformer=grammar_parser_Transformer())
def main():

        import prettyprinter
        prettyprinter.install_extras(["dataclasses"])
        while True:
            print("input q and exit.")
            source = input("> ")
            if source.strip() == "q":
                break
            if not source.strip():
                continue
            res = parser.parse(source)
            if not isinstance(res, Tree):
                prettyprinter.pprint(res)
            else:
                print(res)
            
