from _tbnf.FableSedlex.sedlex import *
import typing
import typing_extensions
import dataclasses
_sedlex_rnd_313 = [ 0, 1, 2, None, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, -1 ]  # token_ids

def _sedlex_st_116(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_10(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_312[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_311(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_st_113(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_310[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_309(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_112(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_308[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_307(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_113(lexerbuf)
    return result

def _sedlex_rnd_306(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_111(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_305[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_304(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_112(lexerbuf)
    return result

def _sedlex_rnd_303(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_110(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_302[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_301(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_111(lexerbuf)
    return result

def _sedlex_rnd_300(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_109(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_33(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_299[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_33(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_26[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_298(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_110(lexerbuf)
    return result

def _sedlex_rnd_297(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_108(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_296[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_295(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_107(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_294[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_293(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_108(lexerbuf)
    return result

def _sedlex_rnd_292(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_106(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_291[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_290(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_107(lexerbuf)
    return result

def _sedlex_rnd_289(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_105(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_288[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_287(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_106(lexerbuf)
    return result

def _sedlex_rnd_286(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_104(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_285[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_284(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_105(lexerbuf)
    return result

def _sedlex_rnd_283(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_103(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_282[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_281(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_102(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_280[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_279(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_103(lexerbuf)
    return result

def _sedlex_rnd_278(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_101(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_277[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_276(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_102(lexerbuf)
    return result

def _sedlex_rnd_275(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_100(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_274[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_273(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_99(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_272[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_271(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_100(lexerbuf)
    return result

def _sedlex_rnd_270(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_98(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_269[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_268(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_99(lexerbuf)
    return result

def _sedlex_rnd_267(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_97(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_32(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_266[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_32(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_25[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_265(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_101(lexerbuf)
    return result

def _sedlex_rnd_264(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_98(lexerbuf)
    return result

def _sedlex_rnd_263(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_96(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_262[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_261(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_95(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_260[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_259(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_96(lexerbuf)
    return result

def _sedlex_rnd_258(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_94(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_15(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_257[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_256(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_95(lexerbuf)
    return result

def _sedlex_rnd_255(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_93(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_254[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_31(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_24[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_253(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_94(lexerbuf)
    return result

def _sedlex_rnd_252(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_92(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_251[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_250(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_91(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_249[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_248(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_92(lexerbuf)
    return result

def _sedlex_rnd_247(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_90(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_17(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_246[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_245(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_91(lexerbuf)
    return result

def _sedlex_rnd_244(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_89(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_243[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_242(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_90(lexerbuf)
    return result

def _sedlex_rnd_241(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_88(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_30(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_240[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_30(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_23[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_239(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_93(lexerbuf)
    return result

def _sedlex_rnd_238(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_89(lexerbuf)
    return result

def _sedlex_rnd_237(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_87(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_236[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_235(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_88(lexerbuf)
    return result

def _sedlex_rnd_234(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_86(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_15(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_233[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_232(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_39(lexerbuf)
    return result

def _sedlex_rnd_231(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_85(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_230[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_229(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_84(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_228[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_227(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_85(lexerbuf)
    return result

def _sedlex_rnd_226(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_83(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_225[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_224(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_82(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_223[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_222(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_83(lexerbuf)
    return result

def _sedlex_rnd_221(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_81(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_29(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_220[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_29(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_22[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_219(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_84(lexerbuf)
    return result

def _sedlex_rnd_218(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_82(lexerbuf)
    return result

def _sedlex_rnd_217(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_80(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_216[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_215(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_79(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_214[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_213(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_80(lexerbuf)
    return result

def _sedlex_rnd_212(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_78(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_17(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_211[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_210(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_79(lexerbuf)
    return result

def _sedlex_rnd_209(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_77(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_26(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_208[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_207(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_78(lexerbuf)
    return result

def _sedlex_rnd_206(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_76(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_205[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_204(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_77(lexerbuf)
    return result

def _sedlex_rnd_203(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_75(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_202[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_201(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_74(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_200[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_199(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_73(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_198[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_28(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_21[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_197(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_75(lexerbuf)
    return result

def _sedlex_rnd_196(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_74(lexerbuf)
    return result

def _sedlex_rnd_195(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_72(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_194[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_193(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_71(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_192[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_191(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_72(lexerbuf)
    return result

def _sedlex_rnd_190(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_70(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_189[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_188(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_71(lexerbuf)
    return result

def _sedlex_rnd_187(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_69(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_186[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_185(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_70(lexerbuf)
    return result

def _sedlex_rnd_184(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_68(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_183[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_182(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_67(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_181[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_180(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_68(lexerbuf)
    return result

def _sedlex_rnd_179(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_66(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_178[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_177(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_67(lexerbuf)
    return result

def _sedlex_rnd_176(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_65(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_175[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_174(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_66(lexerbuf)
    return result

def _sedlex_rnd_173(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_64(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_172[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_27(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_20[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_171(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_65(lexerbuf)
    return result

def _sedlex_rnd_170(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_63(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_26(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_169[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_26(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_19[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_168(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_64(lexerbuf)
    return result

def _sedlex_rnd_167(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_62(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_166[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_165(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_63(lexerbuf)
    return result

def _sedlex_rnd_164(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_61(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_163[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_162(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_60(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_15(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_161[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_160(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_61(lexerbuf)
    return result

def _sedlex_rnd_159(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_59(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_158[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_157(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_58(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_156[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_155(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_59(lexerbuf)
    return result

def _sedlex_rnd_154(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_57(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_21(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_153[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_152(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_58(lexerbuf)
    return result

def _sedlex_rnd_151(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_56(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_150[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_25(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_18[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_149(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_57(lexerbuf)
    return result

def _sedlex_rnd_148(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_55(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_24(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_147[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_24(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_17[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_146(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_62(lexerbuf)
    return result

def _sedlex_rnd_145(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_60(lexerbuf)
    return result

def _sedlex_rnd_144(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_56(lexerbuf)
    return result

def _sedlex_rnd_143(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_54(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_142[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_141(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_53(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_14(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_140[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_139(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_54(lexerbuf)
    return result

def _sedlex_rnd_138(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_52(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_137[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_136(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_51(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_23(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_135[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_23(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_16[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_134(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_rnd_133(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_50(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_132[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_22(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_15[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_131(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_51(lexerbuf)
    return result

def _sedlex_rnd_130(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_49(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_129[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_128(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_50(lexerbuf)
    return result

def _sedlex_rnd_127(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_48(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_21(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_126[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_21(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_14[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_125(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_49(lexerbuf)
    return result

def _sedlex_rnd_124(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_47(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_123[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_20(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_13[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_122(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_53(lexerbuf)
    return result

def _sedlex_rnd_121(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_48(lexerbuf)
    return result

def _sedlex_rnd_120(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_46(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_119[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_118(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_45(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_117[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_19(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_12[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_116(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_rnd_115(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_44(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_114[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_113(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_43(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_18(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_112[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_18(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_11[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_111(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_44(lexerbuf)
    return result

def _sedlex_rnd_110(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_42(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_17(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_109[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_17(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_10[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_108(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_43(lexerbuf)
    return result

def _sedlex_rnd_107(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_41(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_106[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_16(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_9[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_105(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_42(lexerbuf)
    return result

def _sedlex_rnd_104(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_40(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_15(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_103[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_15(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_8[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_102(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_41(lexerbuf)
    return result

def _sedlex_rnd_101(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_39(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_100[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_99(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_38(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_14(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_98[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_14(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_7[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_97(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_39(lexerbuf)
    return result

def _sedlex_rnd_96(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_37(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_95[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_13(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_6[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_94(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_38(lexerbuf)
    return result

def _sedlex_rnd_93(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_33(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_92[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_91(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_32(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 1)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_90[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_12(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_5[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_89(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_st_31(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_11(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_88[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_11(c: int):
    if c <= 60:
        return -1
    else:
        if c <= 62:
            return 0
        else:
            return -1

def _sedlex_rnd_87(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_st_30(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 16)
    state_id = _sedlex_decide_10(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_86[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_10(c: int):
    if c <= 60:
        return -1
    else:
        if c <= 61:
            return 0
        else:
            return -1

def _sedlex_rnd_85(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_st_29(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_9(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_84[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_9(c: int):
    if c <= 59:
        return -1
    else:
        if c <= 61:
            return 0
        else:
            return -1

def _sedlex_rnd_83(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_st_26(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 13)
    state_id = _sedlex_decide_8(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_82[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_8(c: int):
    if c <= 57:
        return -1
    else:
        if c <= 58:
            return 0
        else:
            return -1

def _sedlex_rnd_81(lexerbuf: lexbuf):
    result = -1
    result = 14
    return result

def _sedlex_st_25(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 43)
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_80[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_79(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_18(lexerbuf)
    return result

def _sedlex_rnd_78(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_16(lexerbuf)
    return result

def _sedlex_st_23(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_7(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_77[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_7(c: int):
    if c <= 46:
        return -1
    else:
        if c <= 47:
            return 0
        else:
            return -1

def _sedlex_rnd_76(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_st_21(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_6(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_75[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_74(lexerbuf: lexbuf):
    result = -1
    result = 12
    return result

def _sedlex_st_20(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 11)
    state_id = _sedlex_decide_6(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_73[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_6(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 46:
            return 0
        else:
            return -1

def _sedlex_rnd_72(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_21(lexerbuf)
    return result

def _sedlex_st_19(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 2)
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_71[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_70(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_19(lexerbuf)
    return result

def _sedlex_st_18(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_69[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_68(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_19(lexerbuf)
    return result

def _sedlex_st_17(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_5(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_67[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_5(c: int):
    if c <= 68:
        return -1
    else:
        if c <= 101:
            return _sedlex_DT_table_4[c - 69] - 1
        else:
            return -1

def _sedlex_rnd_66(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_18(lexerbuf)
    return result

def _sedlex_st_16(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_65[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_64(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_17(lexerbuf)
    return result

def _sedlex_st_15(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_63[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_4(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 101:
            return _sedlex_DT_table_3[c - 46] - 1
        else:
            return -1

def _sedlex_rnd_62(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_18(lexerbuf)
    return result

def _sedlex_rnd_61(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_16(lexerbuf)
    return result

def _sedlex_st_14(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 0)
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_60[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_3(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 57:
            return 0
        else:
            return -1

def _sedlex_rnd_59(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_15(lexerbuf)
    return result

def _sedlex_st_8(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 4)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_58[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_57(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_56(lexerbuf: lexbuf):
    result = -1
    result = 4
    return result

def _sedlex_rnd_55(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_7(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_54[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_53(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_52(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_51(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_5(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_50[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_49(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_48(lexerbuf: lexbuf):
    result = -1
    result = 4
    return result

def _sedlex_rnd_47(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_4(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 43)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_46[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_2(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 92:
            return _sedlex_DT_table_2[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_45(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_44(lexerbuf: lexbuf):
    result = -1
    result = 4
    return result

def _sedlex_rnd_43(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_0(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_1(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_42[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_1(c: int):
    if c <= 126:
        return _sedlex_DT_table_1[c - -1] - 1
    else:
        return 1

def _sedlex_rnd_41(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_116(lexerbuf)
    return result

def _sedlex_rnd_40(lexerbuf: lexbuf):
    result = -1
    result = 41
    return result

def _sedlex_rnd_39(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_rnd_38(lexerbuf: lexbuf):
    result = -1
    result = 40
    return result

def _sedlex_rnd_37(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_109(lexerbuf)
    return result

def _sedlex_rnd_36(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_104(lexerbuf)
    return result

def _sedlex_rnd_35(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_97(lexerbuf)
    return result

def _sedlex_rnd_34(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_87(lexerbuf)
    return result

def _sedlex_rnd_33(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_86(lexerbuf)
    return result

def _sedlex_rnd_32(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_81(lexerbuf)
    return result

def _sedlex_rnd_31(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_76(lexerbuf)
    return result

def _sedlex_rnd_30(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_73(lexerbuf)
    return result

def _sedlex_rnd_29(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_69(lexerbuf)
    return result

def _sedlex_rnd_28(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_55(lexerbuf)
    return result

def _sedlex_rnd_27(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_47(lexerbuf)
    return result

def _sedlex_rnd_26(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_45(lexerbuf)
    return result

def _sedlex_rnd_25(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_40(lexerbuf)
    return result

def _sedlex_rnd_24(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_37(lexerbuf)
    return result

def _sedlex_rnd_23(lexerbuf: lexbuf):
    result = -1
    result = 19
    return result

def _sedlex_rnd_22(lexerbuf: lexbuf):
    result = -1
    result = 18
    return result

def _sedlex_rnd_21(lexerbuf: lexbuf):
    result = -1
    result = 17
    return result

def _sedlex_rnd_20(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_32(lexerbuf)
    return result

def _sedlex_rnd_19(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_31(lexerbuf)
    return result

def _sedlex_rnd_18(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_30(lexerbuf)
    return result

def _sedlex_rnd_17(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_29(lexerbuf)
    return result

def _sedlex_rnd_16(lexerbuf: lexbuf):
    result = -1
    result = 5
    return result

def _sedlex_rnd_15(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_26(lexerbuf)
    return result

def _sedlex_rnd_14(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_25(lexerbuf)
    return result

def _sedlex_rnd_13(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_23(lexerbuf)
    return result

def _sedlex_rnd_12(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_20(lexerbuf)
    return result

def _sedlex_rnd_11(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_14(lexerbuf)
    return result

def _sedlex_rnd_10(lexerbuf: lexbuf):
    result = -1
    result = 5
    return result

def _sedlex_rnd_9(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_rnd_8(lexerbuf: lexbuf):
    result = -1
    result = 8
    return result

def _sedlex_rnd_7(lexerbuf: lexbuf):
    result = -1
    result = 7
    return result

def _sedlex_rnd_6(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_rnd_5(lexerbuf: lexbuf):
    result = -1
    result = 6
    return result

def _sedlex_rnd_4(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_4(lexerbuf)
    return result

def _sedlex_rnd_3(lexerbuf: lexbuf):
    result = -1
    result = 3
    return result

def _sedlex_rnd_2(lexerbuf: lexbuf):
    result = -1
    result = 43
    return result

def _sedlex_rnd_1(lexerbuf: lexbuf):
    result = -1
    result = 44
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
    token_id = _sedlex_rnd_313[case_id]
    if token_id is not None:
        return construct_token(token_id, lexeme(lexerbuf), lexerbuf.start_line, lexerbuf.pos - lexerbuf.curr_bol, lexerbuf.pos - lexerbuf.start_pos, lexerbuf.start_pos, lexerbuf.filename)
    return None
def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):
    while True:
        token = lex(buf, construct)
        if token is None: continue
        if is_eof(token): break
        yield token
_sedlex_rnd_312 = [_sedlex_rnd_311]

_sedlex_rnd_310 = [_sedlex_rnd_309]

_sedlex_rnd_308 = [_sedlex_rnd_306, _sedlex_rnd_307]

_sedlex_rnd_305 = [_sedlex_rnd_303, _sedlex_rnd_304]

_sedlex_rnd_302 = [_sedlex_rnd_300, _sedlex_rnd_301]

_sedlex_DT_table_26 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_299 = [_sedlex_rnd_297, _sedlex_rnd_298]

_sedlex_rnd_296 = [_sedlex_rnd_295]

_sedlex_rnd_294 = [_sedlex_rnd_292, _sedlex_rnd_293]

_sedlex_rnd_291 = [_sedlex_rnd_289, _sedlex_rnd_290]

_sedlex_rnd_288 = [_sedlex_rnd_286, _sedlex_rnd_287]

_sedlex_rnd_285 = [_sedlex_rnd_283, _sedlex_rnd_284]

_sedlex_rnd_282 = [_sedlex_rnd_281]

_sedlex_rnd_280 = [_sedlex_rnd_278, _sedlex_rnd_279]

_sedlex_rnd_277 = [_sedlex_rnd_275, _sedlex_rnd_276]

_sedlex_rnd_274 = [_sedlex_rnd_273]

_sedlex_rnd_272 = [_sedlex_rnd_270, _sedlex_rnd_271]

_sedlex_rnd_269 = [_sedlex_rnd_267, _sedlex_rnd_268]

_sedlex_DT_table_25 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_266 = [_sedlex_rnd_263, _sedlex_rnd_264, _sedlex_rnd_265]

_sedlex_rnd_262 = [_sedlex_rnd_261]

_sedlex_rnd_260 = [_sedlex_rnd_258, _sedlex_rnd_259]

_sedlex_rnd_257 = [_sedlex_rnd_255, _sedlex_rnd_256]

_sedlex_DT_table_24 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1]

_sedlex_rnd_254 = [_sedlex_rnd_252, _sedlex_rnd_253]

_sedlex_rnd_251 = [_sedlex_rnd_250]

_sedlex_rnd_249 = [_sedlex_rnd_247, _sedlex_rnd_248]

_sedlex_rnd_246 = [_sedlex_rnd_244, _sedlex_rnd_245]

_sedlex_rnd_243 = [_sedlex_rnd_241, _sedlex_rnd_242]

_sedlex_DT_table_23 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_240 = [_sedlex_rnd_237, _sedlex_rnd_238, _sedlex_rnd_239]

_sedlex_rnd_236 = [_sedlex_rnd_234, _sedlex_rnd_235]

_sedlex_rnd_233 = [_sedlex_rnd_231, _sedlex_rnd_232]

_sedlex_rnd_230 = [_sedlex_rnd_229]

_sedlex_rnd_228 = [_sedlex_rnd_226, _sedlex_rnd_227]

_sedlex_rnd_225 = [_sedlex_rnd_224]

_sedlex_rnd_223 = [_sedlex_rnd_221, _sedlex_rnd_222]

_sedlex_DT_table_22 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_220 = [_sedlex_rnd_217, _sedlex_rnd_218, _sedlex_rnd_219]

_sedlex_rnd_216 = [_sedlex_rnd_215]

_sedlex_rnd_214 = [_sedlex_rnd_212, _sedlex_rnd_213]

_sedlex_rnd_211 = [_sedlex_rnd_209, _sedlex_rnd_210]

_sedlex_rnd_208 = [_sedlex_rnd_206, _sedlex_rnd_207]

_sedlex_rnd_205 = [_sedlex_rnd_203, _sedlex_rnd_204]

_sedlex_rnd_202 = [_sedlex_rnd_201]

_sedlex_rnd_200 = [_sedlex_rnd_199]

_sedlex_DT_table_21 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_198 = [_sedlex_rnd_195, _sedlex_rnd_196, _sedlex_rnd_197]

_sedlex_rnd_194 = [_sedlex_rnd_193]

_sedlex_rnd_192 = [_sedlex_rnd_190, _sedlex_rnd_191]

_sedlex_rnd_189 = [_sedlex_rnd_187, _sedlex_rnd_188]

_sedlex_rnd_186 = [_sedlex_rnd_184, _sedlex_rnd_185]

_sedlex_rnd_183 = [_sedlex_rnd_182]

_sedlex_rnd_181 = [_sedlex_rnd_179, _sedlex_rnd_180]

_sedlex_rnd_178 = [_sedlex_rnd_176, _sedlex_rnd_177]

_sedlex_rnd_175 = [_sedlex_rnd_173, _sedlex_rnd_174]

_sedlex_DT_table_20 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_172 = [_sedlex_rnd_170, _sedlex_rnd_171]

_sedlex_DT_table_19 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_169 = [_sedlex_rnd_167, _sedlex_rnd_168]

_sedlex_rnd_166 = [_sedlex_rnd_164, _sedlex_rnd_165]

_sedlex_rnd_163 = [_sedlex_rnd_162]

_sedlex_rnd_161 = [_sedlex_rnd_159, _sedlex_rnd_160]

_sedlex_rnd_158 = [_sedlex_rnd_157]

_sedlex_rnd_156 = [_sedlex_rnd_154, _sedlex_rnd_155]

_sedlex_rnd_153 = [_sedlex_rnd_151, _sedlex_rnd_152]

_sedlex_DT_table_18 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_150 = [_sedlex_rnd_148, _sedlex_rnd_149]

_sedlex_DT_table_17 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1]

_sedlex_rnd_147 = [_sedlex_rnd_143, _sedlex_rnd_144, _sedlex_rnd_145, _sedlex_rnd_146]

_sedlex_rnd_142 = [_sedlex_rnd_141]

_sedlex_rnd_140 = [_sedlex_rnd_138, _sedlex_rnd_139]

_sedlex_rnd_137 = [_sedlex_rnd_136]

_sedlex_DT_table_16 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_135 = [_sedlex_rnd_133, _sedlex_rnd_134]

_sedlex_DT_table_15 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_132 = [_sedlex_rnd_130, _sedlex_rnd_131]

_sedlex_rnd_129 = [_sedlex_rnd_127, _sedlex_rnd_128]

_sedlex_DT_table_14 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_126 = [_sedlex_rnd_124, _sedlex_rnd_125]

_sedlex_DT_table_13 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_123 = [_sedlex_rnd_120, _sedlex_rnd_121, _sedlex_rnd_122]

_sedlex_rnd_119 = [_sedlex_rnd_118]

_sedlex_DT_table_12 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_117 = [_sedlex_rnd_115, _sedlex_rnd_116]

_sedlex_rnd_114 = [_sedlex_rnd_113]

_sedlex_DT_table_11 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_112 = [_sedlex_rnd_110, _sedlex_rnd_111]

_sedlex_DT_table_10 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_109 = [_sedlex_rnd_107, _sedlex_rnd_108]

_sedlex_DT_table_9 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_106 = [_sedlex_rnd_104, _sedlex_rnd_105]

_sedlex_DT_table_8 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_103 = [_sedlex_rnd_101, _sedlex_rnd_102]

_sedlex_rnd_100 = [_sedlex_rnd_99]

_sedlex_DT_table_7 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_98 = [_sedlex_rnd_96, _sedlex_rnd_97]

_sedlex_DT_table_6 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_95 = [_sedlex_rnd_93, _sedlex_rnd_94]

_sedlex_rnd_92 = [_sedlex_rnd_91]

_sedlex_DT_table_5 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_90 = [_sedlex_rnd_89]

_sedlex_rnd_88 = [_sedlex_rnd_87]

_sedlex_rnd_86 = [_sedlex_rnd_85]

_sedlex_rnd_84 = [_sedlex_rnd_83]

_sedlex_rnd_82 = [_sedlex_rnd_81]

_sedlex_rnd_80 = [_sedlex_rnd_78, _sedlex_rnd_79]

_sedlex_rnd_77 = [_sedlex_rnd_76]

_sedlex_rnd_75 = [_sedlex_rnd_74]

_sedlex_rnd_73 = [_sedlex_rnd_72]

_sedlex_rnd_71 = [_sedlex_rnd_70]

_sedlex_rnd_69 = [_sedlex_rnd_68]

_sedlex_DT_table_4 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]

_sedlex_rnd_67 = [_sedlex_rnd_66]

_sedlex_rnd_65 = [_sedlex_rnd_64]

_sedlex_DT_table_3 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2]

_sedlex_rnd_63 = [_sedlex_rnd_61, _sedlex_rnd_62]

_sedlex_rnd_60 = [_sedlex_rnd_59]

_sedlex_rnd_58 = [_sedlex_rnd_55, _sedlex_rnd_56, _sedlex_rnd_57]

_sedlex_rnd_54 = [_sedlex_rnd_51, _sedlex_rnd_52, _sedlex_rnd_53]

_sedlex_rnd_50 = [_sedlex_rnd_47, _sedlex_rnd_48, _sedlex_rnd_49]

_sedlex_DT_table_2 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]

_sedlex_rnd_46 = [_sedlex_rnd_43, _sedlex_rnd_44, _sedlex_rnd_45]

_sedlex_DT_table_1 = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 4, 5, 2, 6, 6, 2, 7, 8, 9, 9, 10, 11, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 16, 17, 18, 19, 2, 2, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 2, 22, 23, 20, 2, 24, 25, 20, 26, 27, 28, 29, 20, 30, 20, 20, 31, 20, 32, 33, 20, 20, 34, 20, 35, 36, 20, 37, 20, 20, 20, 38, 39, 40, 41]

_sedlex_rnd_42 = [_sedlex_rnd_1, _sedlex_rnd_2, _sedlex_rnd_3, _sedlex_rnd_4, _sedlex_rnd_5, _sedlex_rnd_6, _sedlex_rnd_7, _sedlex_rnd_8, _sedlex_rnd_9, _sedlex_rnd_10, _sedlex_rnd_11, _sedlex_rnd_12, _sedlex_rnd_13, _sedlex_rnd_14, _sedlex_rnd_15, _sedlex_rnd_16, _sedlex_rnd_17, _sedlex_rnd_18, _sedlex_rnd_19, _sedlex_rnd_20, _sedlex_rnd_21, _sedlex_rnd_22, _sedlex_rnd_23, _sedlex_rnd_24, _sedlex_rnd_25, _sedlex_rnd_26, _sedlex_rnd_27, _sedlex_rnd_28, _sedlex_rnd_29, _sedlex_rnd_30, _sedlex_rnd_31, _sedlex_rnd_32, _sedlex_rnd_33, _sedlex_rnd_34, _sedlex_rnd_35, _sedlex_rnd_36, _sedlex_rnd_37, _sedlex_rnd_38, _sedlex_rnd_39, _sedlex_rnd_40, _sedlex_rnd_41]

