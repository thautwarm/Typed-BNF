# Generated from lark-action.


from tbnf import ty, exp, decl, basic, lexer, psym
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


if '_get_location' not in globals(): 
    def _get_location(token):
        return (token.line, token.column)

if '_get_value' not in globals(): 
    def _get_value(token):
        return token.value


def u2i(ch):
    return int(ch[-4:], 16)

def to_unicode(ch):
    i = ord(ch)
    return i
    # return fr"\u{i:04X}"


from runtests.testit_raw import Transformer, Lark_StandAlone, Tree
class testit_Transformer(Transformer):

    def start_0(self, __args):
        return  __args[1-1]
    def tvar_0(self, __args):
        return  ty.tvar(mkpos(__args[1-1]), str(__args[2-1]))
    def tvar_str_0(self, __args):
        return  str(__args[2-1])
    def ident_0(self, __args):
        return  basic.ident(mkpos(__args[1-1]), str(__args[1-1]))
    def ty_ident_0(self, __args):
        return  basic.ident(mkpos(__args[1-1]), str(__args[1-1]))
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
    def type_params_0(self, __args):
        return  __args[2-1]
    def type_args_0(self, __args):
        return  __args[2-1]
    def type_args_1(self, __args):
        return  []
    def top_ann_0(self, __args):
        return  decl.top_ann(__args[1-1], __args[3-1])
    def ann_0(self, __args):
        return  decl.ann(__args[1-1], __args[3-1])
    def nonempty_parameters_0(self, __args):
        return  __args[2-1]
    def parameters_0(self, __args):
        return  __args[1-1]
    def parameters_1(self, __args):
        return  None
    def constructor_0(self, __args):
        return decl.constructor(__args[1-1], __args[2-1], __args[3-1])
    def case_0(self, __args):
        return  (mkpos(__args[1-1]), __args[2-1])
    def decl_0(self, __args):
        return  decl.extern_val(mkpos(__args[2-1]), __args[3-1])
    def decl_1(self, __args):
        return  decl.extern_type(mkpos(__args[1-1]), __args[3-1])
    def decl_2(self, __args):
        return decl.datatype(mkpos(__args[1-1]), __args[2-1], __args[3-1], __args[5-1])
    def typ_0(self, __args):
        return  __args[1-1]
    def arrow_typ_0(self, __args):
        return  ty.arrow_ty(__args[1-1], __args[3-1])
    def arrow_typ_1(self, __args):
        return  __args[1-1]
    def product_typ_0(self, __args):
        return __args[1-1][0] if len(__args[1-1]) == 1 else ty.product_ty(__args[1-1])
    def typ2_0(self, __args):
        return  ty.ty_ident(__args[1-1])
    def typ2_1(self, __args):
        return  __args[1-1]
    def typ2_2(self, __args):
        return  ty.generic_ty(__args[1-1], __args[3-1])
    def type_product_0(self, __args):
        return  add(__args[1-1], __args[3-1])
    def type_product_1(self, __args):
        return  [__args[1-1]]
    def param_typ_0(self, __args):
        return  [__args[1-1]]
    def param_typ_1(self, __args):
        return  __args[2-1]
    def top_typ_0(self, __args):
        return  ty.poly_ty(__args[2-1], __args[4-1])
    def top_typ_1(self, __args):
        return  __args[1-1]
    def toplevel_0(self, __args):
        return  __args[1-1]
    def toplevel_1(self, __args):
        return  __args[1-1]
    def toplevel_2(self, __args):
        return  __args[1-1]
    def toplevel_3(self, __args):
        return  decl.ignore(mkpos(__args[1-1]), list(map(str, __args[2-1])))
    def def_0(self, __args):
        return decl.macrodef(mkpos(__args[1-1]), str(__args[1-1]), __args[3-1], __args[5-1])
    def def_1(self, __args):
        return decl.ruledef(mkpos(__args[1-1]), str(__args[1-1]), __args[2-1])
    def productions_0(self, __args):
        return  [(mkpos(__args[1-1]), __args[2-1])]
    def productions_1(self, __args):
        return  add(__args[1-1], (mkpos(__args[2-1]), __args[3-1]))
    def production_0(self, __args):
        return  psym.production(__args[1-1], __args[3-1])
    def psym_0(self, __args):
        return psym.terminal(mkpos(__args[1-1]), str(__args[1-1]), named=True)
    def psym_1(self, __args):
        return psym.terminal(mkpos(__args[1-1]), unesc(str(__args[1-1])), named=False)
    def psym_2(self, __args):
        return  psym.nonterminal(mkpos(__args[1-1]), __args[1-1])
    def psym_3(self, __args):
        return  psym.macrocall(__args[1-1], __args[3-1])
    def expr_0(self, __args):
        return exp.Let(__args[2-1], __args[4-1], __args[6-1], pos=mkpos(__args[1-1]))
    def expr_1(self, __args):
        return exp.Fun(__args[2-1], __args[4-1], pos=mkpos(__args[1-1]))
    def expr_2(self, __args):
        return  __args[1-1]
    def call_0(self, __args):
        return  exp.Call(__args[1-1], __args[3-1])
    def call_1(self, __args):
        return  __args[1-1]
    def atomexp_0(self, __args):
        return  exp.Int(mkpos(__args[1-1]), int(__args[1-1]))
    def atomexp_1(self, __args):
        return  exp.Float(float(__args[1-1]), mkpos(__args[1-1]))
    def atomexp_2(self, __args):
        return  exp.String(unesc(__args[1-1]), mkpos(__args[1-1]))
    def atomexp_3(self, __args):
        return  exp.Slot(int(__args[2-1]), mkpos(__args[1-1]))
    def atomexp_4(self, __args):
        return  exp.Tuple(mkpos(__args[1-1]), [])
    def atomexp_5(self, __args):
        return exp.Tuple([__args[2-1], __args[4-1]], mkpos(__args[1-1]))
    def atomexp_6(self, __args):
        return  exp.Variable(__args[1-1])
    def atomexp_7(self, __args):
        return  exp.Field(__args[1-1], str(__args[3-1]))
    def lexer_0(self, __args):
        return __args[1-1][0] if len(__args[1-1]) == 1 else lexer.RegOr(__args[1-1])
    def lexer_and_0(self, __args):
        return __args[1-1][0] if len(__args[1-1]) == 1 else lexer.RegSeq(__args[1-1])
    def lexer_atomexpr_0(self, __args):
        return  lexer.RegOneOrMore(__args[1-1])
    def lexer_atomexpr_1(self, __args):
        return  lexer.RegMany(__args[1-1])
    def lexer_atomexpr_2(self, __args):
        return  lexer.RegOptional(__args[1-1])
    def lexer_atomexpr_3(self, __args):
        return  __args[1-1]
    def lexer_atom_0(self, __args):
        return  lexer.RegSeq(list(map(lexer.RegLit, list(unesc(__args[1-1])))))
    def lexer_atom_1(self, __args):
        return  lexer.RegNot(__args[2-1])
    def lexer_atom_2(self, __args):
        return  lexer.RegGroup(__args[2-1])
    def lexer_atom_3(self, __args):
        return  lexer.RegNumber()
    def lexer_atom_4(self, __args):
        return  lexer.RegRange(u2i(__args[1-1]), u2i(__args[3-1]))
    def lexer_atom_5(self, __args):
        return  lexer.RegRange(ord(__args[1-1]), ord(__args[3-1]))
    def lexer_atom_6(self, __args):
        return  lexer.RegWildcard()
    def lexer_atom_7(self, __args):
        return  lexer.RegRef(str(__args[1-1]))
    def lexerdef_0(self, __args):
        return  lexer.lexerdef(str(__args[1-1]), __args[3-1])


parser = Lark_StandAlone(transformer=testit_Transformer())
if __name__ == '__main__':

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
            
