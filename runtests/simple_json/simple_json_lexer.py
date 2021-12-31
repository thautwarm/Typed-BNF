from _tbnf.FableSedlex.sedlex import *
import typing
import typing_extensions
import dataclasses
_sedlex_rnd_53 = [ 0, 1, None, 2, 3, 4, 5, 6, 7, 8, 9, 10, -1 ]  # token_ids

def _sedlex_st_21(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_7(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_52[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_51(lexerbuf: lexbuf):
    result = -1
    result = 8
    return result

def _sedlex_st_20(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_7(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_50[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_7(c: int):
    if c <= 107:
        return -1
    else:
        if c <= 108:
            return 0
        else:
            return -1

def _sedlex_rnd_49(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_21(lexerbuf)
    return result

def _sedlex_st_19(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 11)
    state_id = _sedlex_decide_6(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_48[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_6(c: int):
    if c <= 116:
        return -1
    else:
        if c <= 117:
            return 0
        else:
            return -1

def _sedlex_rnd_47(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_20(lexerbuf)
    return result

def _sedlex_st_15(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_5(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_46[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_45(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_15(lexerbuf)
    return result

def _sedlex_rnd_44(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_14(lexerbuf)
    return result

def _sedlex_st_14(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_43[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_42(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_12(lexerbuf)
    return result

def _sedlex_st_13(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_5(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_41[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_5(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 57:
            return _sedlex_DT_table_4[c - 46] - 1
        else:
            return -1

def _sedlex_rnd_40(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_15(lexerbuf)
    return result

def _sedlex_rnd_39(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_14(lexerbuf)
    return result

def _sedlex_st_12(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_38[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_37(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_12(lexerbuf)
    return result

def _sedlex_st_11(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 11)
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_36[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_4(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 57:
            return 0
        else:
            return -1

def _sedlex_rnd_35(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_12(lexerbuf)
    return result

def _sedlex_st_9(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 3)
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_34[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_33(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_32(lexerbuf: lexbuf):
    result = -1
    result = 3
    return result

def _sedlex_rnd_31(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_6(lexerbuf)
    return result

def _sedlex_st_8(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_30[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_29(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_28(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_9(lexerbuf)
    return result

def _sedlex_rnd_27(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_6(lexerbuf)
    return result

def _sedlex_st_6(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_26[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_25(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_24(lexerbuf: lexbuf):
    result = -1
    result = 3
    return result

def _sedlex_rnd_23(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_6(lexerbuf)
    return result

def _sedlex_st_5(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 11)
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_22[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_3(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 92:
            return _sedlex_DT_table_3[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_21(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_20(lexerbuf: lexbuf):
    result = -1
    result = 3
    return result

def _sedlex_rnd_19(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_6(lexerbuf)
    return result

def _sedlex_st_4(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 2)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_18[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_17(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_4(lexerbuf)
    return result

def _sedlex_st_3(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 2)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_16[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_2(c: int):
    if c <= 8:
        return -1
    else:
        if c <= 32:
            return _sedlex_DT_table_2[c - 9] - 1
        else:
            return -1

def _sedlex_rnd_15(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_4(lexerbuf)
    return result

def _sedlex_st_0(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_1(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_14[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_1(c: int):
    if c <= 125:
        return _sedlex_DT_table_1[c - -1] - 1
    else:
        return 1

def _sedlex_rnd_13(lexerbuf: lexbuf):
    result = -1
    result = 10
    return result

def _sedlex_rnd_12(lexerbuf: lexbuf):
    result = -1
    result = 9
    return result

def _sedlex_rnd_11(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_19(lexerbuf)
    return result

def _sedlex_rnd_10(lexerbuf: lexbuf):
    result = -1
    result = 7
    return result

def _sedlex_rnd_9(lexerbuf: lexbuf):
    result = -1
    result = 6
    return result

def _sedlex_rnd_8(lexerbuf: lexbuf):
    result = -1
    result = 5
    return result

def _sedlex_rnd_7(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_13(lexerbuf)
    return result

def _sedlex_rnd_6(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_11(lexerbuf)
    return result

def _sedlex_rnd_5(lexerbuf: lexbuf):
    result = -1
    result = 4
    return result

def _sedlex_rnd_4(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_rnd_3(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_3(lexerbuf)
    return result

def _sedlex_rnd_2(lexerbuf: lexbuf):
    result = -1
    result = 11
    return result

def _sedlex_rnd_1(lexerbuf: lexbuf):
    result = -1
    result = 12
    return result


@dataclasses.dataclass
class Token:
    token_id: int
    lexeme : str
    line: int
    col: int
    span: int
    offset: int
    file: str

_Token = typing.TypeVar("_Token")

class TokenConstructor(typing_extensions.Protocol[_Token]):
    def __call__(self, token_id: int, lexeme: str, line: int, col: int, span: int, offset: int, file: str) -> _Token: ...

def lex(lexerbuf: lexbuf ,  construct_token: TokenConstructor[_Token]=Token):
    start(lexerbuf)
    case_id = _sedlex_st_0(lexerbuf)
    if case_id < 0: raise Exception("the last branch must be a catch-all error case!")
    token_id = _sedlex_rnd_53[case_id]
    if token_id is not None:
        return construct_token(token_id, lexeme(lexerbuf), lexerbuf.start_line, lexerbuf.pos - lexerbuf.curr_bol, lexerbuf.pos - lexerbuf.start_pos, lexerbuf.start_pos, lexerbuf.filename)
    return None
def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):
    while True:
        token = lex(buf, construct)
        if token is None: continue
        if is_eof(token): break
        yield token
_sedlex_rnd_52 = [_sedlex_rnd_51]

_sedlex_rnd_50 = [_sedlex_rnd_49]

_sedlex_rnd_48 = [_sedlex_rnd_47]

_sedlex_rnd_46 = [_sedlex_rnd_44, _sedlex_rnd_45]

_sedlex_rnd_43 = [_sedlex_rnd_42]

_sedlex_DT_table_4 = [1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]

_sedlex_rnd_41 = [_sedlex_rnd_39, _sedlex_rnd_40]

_sedlex_rnd_38 = [_sedlex_rnd_37]

_sedlex_rnd_36 = [_sedlex_rnd_35]

_sedlex_rnd_34 = [_sedlex_rnd_31, _sedlex_rnd_32, _sedlex_rnd_33]

_sedlex_rnd_30 = [_sedlex_rnd_27, _sedlex_rnd_28, _sedlex_rnd_29]

_sedlex_rnd_26 = [_sedlex_rnd_23, _sedlex_rnd_24, _sedlex_rnd_25]

_sedlex_DT_table_3 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]

_sedlex_rnd_22 = [_sedlex_rnd_19, _sedlex_rnd_20, _sedlex_rnd_21]

_sedlex_rnd_18 = [_sedlex_rnd_17]

_sedlex_DT_table_2 = [1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]

_sedlex_rnd_16 = [_sedlex_rnd_15]

_sedlex_DT_table_1 = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 6, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 11, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 12, 2, 13]

_sedlex_rnd_14 = [_sedlex_rnd_1, _sedlex_rnd_2, _sedlex_rnd_3, _sedlex_rnd_4, _sedlex_rnd_5, _sedlex_rnd_6, _sedlex_rnd_7, _sedlex_rnd_8, _sedlex_rnd_9, _sedlex_rnd_10, _sedlex_rnd_11, _sedlex_rnd_12, _sedlex_rnd_13]

