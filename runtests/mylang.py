from mylang_lark import Lark_StandAlone as _Lark__Standardalone, Lexer as _Lark__Lexer, Transformer as _TBNF__Transformer
declared_tokens = [('","', 'A1'), ('STR', 'A2'), ('":"', 'A3'), ('"["', 'A4'), ('"]"', 'A5'), ('"{"', 'A6'), ('"}"', 'A7'), ('INT', 'A8'), ('FLOAT', 'A9')]
class MyLexer(_Lark__Lexer): pass
class MyTransformer(_TBNF__Transformer):

    @staticmethod
    def start_case0(__args):
        _1 = __args[0]
        tmp__1 = _1
        return tmp__1

    @staticmethod
    def list_case0(__args):
        tmp__3 = nil
        tmp__2 = tmp__3()
        return tmp__2

    @staticmethod
    def list_case1(__args):
        _1 = __args[0]
        _3 = __args[2]
        tmp__5 = _1
        tmp__6 = _3
        tmp__7 = cons
        tmp__4 = tmp__7(tmp__5, tmp__6)
        return tmp__4

    @staticmethod
    def str_case0(__args):
        _1 = __args[0]
        tmp__9 = _1
        tmp__8 = tmp__9.lexeme
        return tmp__8

    @staticmethod
    def pair_case0(__args):
        _1 = __args[0]
        _3 = __args[2]
        tmp__11 = _1
        tmp__12 = _3
        tmp__10 = (tmp__11, tmp__12)
        return tmp__10

    @staticmethod
    def pair_list_case0(__args):
        tmp__14 = nil
        tmp__13 = tmp__14()
        return tmp__13

    @staticmethod
    def pair_list_case1(__args):
        _1 = __args[0]
        _3 = __args[2]
        tmp__16 = _1
        tmp__17 = _3
        tmp__18 = cons
        tmp__15 = tmp__18(tmp__16, tmp__17)
        return tmp__15

    @staticmethod
    def json_case0(__args):
        _2 = __args[1]
        tmp__20 = _2
        tmp__21 = json_list
        tmp__19 = tmp__21(tmp__20)
        return tmp__19

    @staticmethod
    def json_case1(__args):
        _2 = __args[1]
        tmp__24 = _2
        tmp__25 = mk_dict
        tmp__23 = tmp__25(tmp__24)
        tmp__26 = json_dict
        tmp__22 = tmp__26(tmp__23)
        return tmp__22

    @staticmethod
    def json_case2(__args):
        _1 = __args[0]
        tmp__30 = _1
        tmp__29 = tmp__30.lexeme
        tmp__31 = parse_int
        tmp__28 = tmp__31(tmp__29)
        tmp__32 = json_int
        tmp__27 = tmp__32(tmp__28)
        return tmp__27

    @staticmethod
    def json_case3(__args):
        _1 = __args[0]
        tmp__36 = _1
        tmp__35 = tmp__36.lexeme
        tmp__37 = parse_float
        tmp__34 = tmp__37(tmp__35)
        tmp__38 = json_float
        tmp__33 = tmp__38(tmp__34)
        return tmp__33

    @staticmethod
    def json_case4(__args):
        _1 = __args[0]
        tmp__42 = _1
        tmp__41 = tmp__42.lexeme
        tmp__43 = unesc_string
        tmp__40 = tmp__43(tmp__41)
        tmp__44 = json_string
        tmp__39 = tmp__44(tmp__40)
        return tmp__39
parser = Lark_StandAlone(transformer=MyTransformer(), lexer=MyLexer)