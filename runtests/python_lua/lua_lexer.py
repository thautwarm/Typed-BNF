from _tbnf.FableSedlex.sedlex import *
import typing
import typing_extensions
import dataclasses
_sedlex_rnd_379 = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, None, None, 55, 56, 57, 58, 59, -1 ]  # token_ids

def _sedlex_st_145(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 53)
    state_id = _sedlex_decide_14(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_378[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_377(lexerbuf: lexbuf):
    result = -1
    result = 54
    return result

def _sedlex_st_141(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 49)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_376[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_375(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_140(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_374[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_373(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_141(lexerbuf)
    return result

def _sedlex_rnd_372(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_139(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_34(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_371[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_370(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_140(lexerbuf)
    return result

def _sedlex_rnd_369(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_138(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_368[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_367(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_139(lexerbuf)
    return result

def _sedlex_rnd_366(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_137(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_42(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_365[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_42(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_35[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_364(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_138(lexerbuf)
    return result

def _sedlex_rnd_363(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_136(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 48)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_362[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_361(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_135(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_34(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_360[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_359(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_136(lexerbuf)
    return result

def _sedlex_rnd_358(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_134(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_357[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_356(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_135(lexerbuf)
    return result

def _sedlex_rnd_355(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_133(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_36(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_354[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_353(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_134(lexerbuf)
    return result

def _sedlex_rnd_352(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_132(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_351[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_350(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_133(lexerbuf)
    return result

def _sedlex_rnd_349(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_131(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 47)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_348[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_347(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_130(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_346[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_345(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_131(lexerbuf)
    return result

def _sedlex_rnd_344(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_129(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_40(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_343[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_342(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_130(lexerbuf)
    return result

def _sedlex_rnd_341(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_128(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 46)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_340[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_339(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_127(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_338[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_337(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_128(lexerbuf)
    return result

def _sedlex_rnd_336(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_126(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_335[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_334(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_127(lexerbuf)
    return result

def _sedlex_rnd_333(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_125(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_41(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_332[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_41(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_34[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_331(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_129(lexerbuf)
    return result

def _sedlex_rnd_330(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_126(lexerbuf)
    return result

def _sedlex_rnd_329(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_124(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 45)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_328[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_327(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_123(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_326[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_325(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_124(lexerbuf)
    return result

def _sedlex_rnd_324(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_122(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_24(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_323[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_322(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_123(lexerbuf)
    return result

def _sedlex_rnd_321(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_121(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_40(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_320[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_40(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_33[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_319(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_122(lexerbuf)
    return result

def _sedlex_rnd_318(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_120(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 44)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_317[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_316(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_119(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_36(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_315[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_314(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_120(lexerbuf)
    return result

def _sedlex_rnd_313(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_118(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_26(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_312[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_311(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_119(lexerbuf)
    return result

def _sedlex_rnd_310(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_117(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_309[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_308(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_118(lexerbuf)
    return result

def _sedlex_rnd_307(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_116(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_39(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_306[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_39(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_32[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_305(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_121(lexerbuf)
    return result

def _sedlex_rnd_304(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_117(lexerbuf)
    return result

def _sedlex_rnd_303(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_115(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_302[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_301(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_116(lexerbuf)
    return result

def _sedlex_rnd_300(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_114(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 43)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_299[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_298(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_113(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_24(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_297[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_296(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_114(lexerbuf)
    return result

def _sedlex_rnd_295(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_112(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 42)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_294[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_293(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_111(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_36(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_292[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_291(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_112(lexerbuf)
    return result

def _sedlex_rnd_290(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_110(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 41)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_289[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_288(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_109(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_34(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_287[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_286(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_110(lexerbuf)
    return result

def _sedlex_rnd_285(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_108(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_38(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_284[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_38(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_31[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_283(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_111(lexerbuf)
    return result

def _sedlex_rnd_282(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_109(lexerbuf)
    return result

def _sedlex_rnd_281(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_107(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 40)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_280[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_279(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_106(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_34(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_278[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_277(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_107(lexerbuf)
    return result

def _sedlex_rnd_276(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_105(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_26(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_275[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_274(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_106(lexerbuf)
    return result

def _sedlex_rnd_273(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_104(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_35(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_272[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_271(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_105(lexerbuf)
    return result

def _sedlex_rnd_270(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_103(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_269[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_268(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_104(lexerbuf)
    return result

def _sedlex_rnd_267(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_102(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 39)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_266[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_265(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_101(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 38)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_264[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_263(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_100(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_37(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_262[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_37(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_30[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_261(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_102(lexerbuf)
    return result

def _sedlex_rnd_260(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_101(lexerbuf)
    return result

def _sedlex_rnd_259(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_99(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 37)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_258[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_257(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_98(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_256[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_255(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_99(lexerbuf)
    return result

def _sedlex_rnd_254(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_97(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_36(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_253[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_252(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_98(lexerbuf)
    return result

def _sedlex_rnd_251(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_96(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_250[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_249(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_97(lexerbuf)
    return result

def _sedlex_rnd_248(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_95(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 36)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_247[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_246(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_94(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_245[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_244(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_95(lexerbuf)
    return result

def _sedlex_rnd_243(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_93(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_242[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_241(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_94(lexerbuf)
    return result

def _sedlex_rnd_240(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_92(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_239[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_238(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_93(lexerbuf)
    return result

def _sedlex_rnd_237(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_91(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_36(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_236[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_36(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_29[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_235(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_92(lexerbuf)
    return result

def _sedlex_rnd_234(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_90(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_35(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_233[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_35(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_28[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_232(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_91(lexerbuf)
    return result

def _sedlex_rnd_231(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_89(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_230[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_229(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_90(lexerbuf)
    return result

def _sedlex_rnd_228(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_88(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 35)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_227[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_226(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_87(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_24(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_225[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_224(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_88(lexerbuf)
    return result

def _sedlex_rnd_223(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_86(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 34)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_222[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_221(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_85(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_220[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_219(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_86(lexerbuf)
    return result

def _sedlex_rnd_218(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_84(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_30(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_217[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_216(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_85(lexerbuf)
    return result

def _sedlex_rnd_215(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_83(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_34(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_214[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_34(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_27[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_213(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_84(lexerbuf)
    return result

def _sedlex_rnd_212(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_82(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_33(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_211[state_id](lexerbuf)
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

def _sedlex_rnd_210(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_89(lexerbuf)
    return result

def _sedlex_rnd_209(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_87(lexerbuf)
    return result

def _sedlex_rnd_208(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_83(lexerbuf)
    return result

def _sedlex_rnd_207(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_81(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 33)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_206[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_205(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_80(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_23(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_204[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_203(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_81(lexerbuf)
    return result

def _sedlex_rnd_202(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_79(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 32)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_201[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_200(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_78(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_32(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_199[state_id](lexerbuf)
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

def _sedlex_rnd_198(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_79(lexerbuf)
    return result

def _sedlex_rnd_197(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_77(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 31)
    state_id = _sedlex_decide_31(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_196[state_id](lexerbuf)
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

def _sedlex_rnd_195(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_78(lexerbuf)
    return result

def _sedlex_rnd_194(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_76(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_193[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_192(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_77(lexerbuf)
    return result

def _sedlex_rnd_191(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_75(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_30(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_190[state_id](lexerbuf)
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

def _sedlex_rnd_189(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_76(lexerbuf)
    return result

def _sedlex_rnd_188(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_74(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_29(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_187[state_id](lexerbuf)
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

def _sedlex_rnd_186(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_80(lexerbuf)
    return result

def _sedlex_rnd_185(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_75(lexerbuf)
    return result

def _sedlex_rnd_184(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_73(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 30)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_183[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_182(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_72(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_28(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_181[state_id](lexerbuf)
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

def _sedlex_rnd_180(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_73(lexerbuf)
    return result

def _sedlex_rnd_179(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_71(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 29)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_178[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_177(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_70(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_27(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_176[state_id](lexerbuf)
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

def _sedlex_rnd_175(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_71(lexerbuf)
    return result

def _sedlex_rnd_174(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_69(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_26(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_173[state_id](lexerbuf)
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

def _sedlex_rnd_172(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_70(lexerbuf)
    return result

def _sedlex_rnd_171(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_68(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_25(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_170[state_id](lexerbuf)
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

def _sedlex_rnd_169(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_69(lexerbuf)
    return result

def _sedlex_rnd_168(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_67(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_24(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_167[state_id](lexerbuf)
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

def _sedlex_rnd_166(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_68(lexerbuf)
    return result

def _sedlex_rnd_165(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_66(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 28)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_164[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_163(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_65(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_23(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_162[state_id](lexerbuf)
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

def _sedlex_rnd_161(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_66(lexerbuf)
    return result

def _sedlex_rnd_160(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_64(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_22(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_159[state_id](lexerbuf)
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

def _sedlex_rnd_158(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_65(lexerbuf)
    return result

def _sedlex_rnd_157(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_61(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_156[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_155(lexerbuf: lexbuf):
    result = -1
    result = 60
    return result

def _sedlex_rnd_154(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_60(lexerbuf)
    return result

def _sedlex_st_60(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_153[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_152(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_61(lexerbuf)
    return result

def _sedlex_rnd_151(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_60(lexerbuf)
    return result

def _sedlex_st_59(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_150[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_149(lexerbuf: lexbuf):
    result = -1
    result = 60
    return result

def _sedlex_rnd_148(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_st_58(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_147[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_146(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_59(lexerbuf)
    return result

def _sedlex_rnd_145(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_st_57(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_144[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_143(lexerbuf: lexbuf):
    result = -1
    result = 60
    return result

def _sedlex_rnd_142(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_55(lexerbuf)
    return result

def _sedlex_st_56(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_141[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_140(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_57(lexerbuf)
    return result

def _sedlex_rnd_139(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_55(lexerbuf)
    return result

def _sedlex_st_55(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_138[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_137(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_56(lexerbuf)
    return result

def _sedlex_rnd_136(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_55(lexerbuf)
    return result

def _sedlex_st_54(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 60)
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_135[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_134(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_57(lexerbuf)
    return result

def _sedlex_rnd_133(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_55(lexerbuf)
    return result

def _sedlex_st_53(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_132[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_131(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_54(lexerbuf)
    return result

def _sedlex_rnd_130(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_st_52(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_21(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_129[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_21(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 93:
            return _sedlex_DT_table_14[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_128(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_58(lexerbuf)
    return result

def _sedlex_rnd_127(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_53(lexerbuf)
    return result

def _sedlex_rnd_126(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_st_50(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_20(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_125[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_20(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 93:
            return _sedlex_DT_table_13[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_124(lexerbuf: lexbuf):
    result = -1
    result = 60
    return result

def _sedlex_rnd_123(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_49(lexerbuf)
    return result

def _sedlex_st_49(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_19(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_122[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_19(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 61:
            return _sedlex_DT_table_12[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_121(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_50(lexerbuf)
    return result

def _sedlex_rnd_120(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_49(lexerbuf)
    return result

def _sedlex_st_48(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_18(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_119[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_18(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 91:
            return _sedlex_DT_table_11[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_118(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_52(lexerbuf)
    return result

def _sedlex_rnd_117(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_50(lexerbuf)
    return result

def _sedlex_rnd_116(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_49(lexerbuf)
    return result

def _sedlex_st_47(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 25)
    state_id = _sedlex_decide_17(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_115[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_17(c: int):
    if c <= 60:
        return -1
    else:
        if c <= 91:
            return _sedlex_DT_table_10[c - 61] - 1
        else:
            return -1

def _sedlex_rnd_114(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_60(lexerbuf)
    return result

def _sedlex_rnd_113(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_48(lexerbuf)
    return result

def _sedlex_st_46(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_112[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_111(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_45(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 57)
    state_id = _sedlex_decide_16(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_110[state_id](lexerbuf)
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

def _sedlex_rnd_109(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_46(lexerbuf)
    return result

def _sedlex_st_42(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 22)
    state_id = _sedlex_decide_15(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_108[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_15(c: int):
    if c <= 60:
        return -1
    else:
        if c <= 62:
            return _sedlex_DT_table_8[c - 61] - 1
        else:
            return -1

def _sedlex_rnd_107(lexerbuf: lexbuf):
    result = -1
    result = 24
    return result

def _sedlex_rnd_106(lexerbuf: lexbuf):
    result = -1
    result = 23
    return result

def _sedlex_st_40(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 20)
    state_id = _sedlex_decide_14(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_105[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_14(c: int):
    if c <= 60:
        return -1
    else:
        if c <= 61:
            return 0
        else:
            return -1

def _sedlex_rnd_104(lexerbuf: lexbuf):
    result = -1
    result = 21
    return result

def _sedlex_st_37(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 17)
    state_id = _sedlex_decide_13(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_103[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_13(c: int):
    if c <= 59:
        return -1
    else:
        if c <= 61:
            return _sedlex_DT_table_8[c - 60] - 1
        else:
            return -1

def _sedlex_rnd_102(lexerbuf: lexbuf):
    result = -1
    result = 19
    return result

def _sedlex_rnd_101(lexerbuf: lexbuf):
    result = -1
    result = 18
    return result

def _sedlex_st_34(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 14)
    state_id = _sedlex_decide_12(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_100[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_12(c: int):
    if c <= 57:
        return -1
    else:
        if c <= 58:
            return 0
        else:
            return -1

def _sedlex_rnd_99(lexerbuf: lexbuf):
    result = -1
    result = 15
    return result

def _sedlex_st_33(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_10(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_98[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_97(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_28(lexerbuf)
    return result

def _sedlex_rnd_96(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_30(lexerbuf)
    return result

def _sedlex_rnd_95(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_26(lexerbuf)
    return result

def _sedlex_st_32(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_11(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_94[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_93(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_32(lexerbuf)
    return result

def _sedlex_st_31(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_11(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_92[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_11(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 122:
            return _sedlex_DT_table_7[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_91(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_32(lexerbuf)
    return result

def _sedlex_st_30(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_10(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_90[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_10(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 101:
            return _sedlex_DT_table_6[c - 46] - 1
        else:
            return -1

def _sedlex_rnd_89(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_28(lexerbuf)
    return result

def _sedlex_rnd_88(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_30(lexerbuf)
    return result

def _sedlex_rnd_87(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_26(lexerbuf)
    return result

def _sedlex_st_29(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_8(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_86[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_85(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_29(lexerbuf)
    return result

def _sedlex_st_28(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_8(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_84[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_83(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_29(lexerbuf)
    return result

def _sedlex_st_27(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_9(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_82[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_9(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 101:
            return _sedlex_DT_table_5[c - 48] - 1
        else:
            return -1

def _sedlex_rnd_81(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_28(lexerbuf)
    return result

def _sedlex_rnd_80(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_27(lexerbuf)
    return result

def _sedlex_st_26(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_8(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_79[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_8(c: int):
    if c <= 47:
        return -1
    else:
        if c <= 57:
            return 0
        else:
            return -1

def _sedlex_rnd_78(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_27(lexerbuf)
    return result

def _sedlex_st_25(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 58)
    state_id = _sedlex_decide_7(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_77[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_7(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 120:
            return _sedlex_DT_table_4[c - 46] - 1
        else:
            return -1

def _sedlex_rnd_76(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_31(lexerbuf)
    return result

def _sedlex_rnd_75(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_28(lexerbuf)
    return result

def _sedlex_rnd_74(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_30(lexerbuf)
    return result

def _sedlex_rnd_73(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_26(lexerbuf)
    return result

def _sedlex_st_23(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 12)
    state_id = _sedlex_decide_6(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_72[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_6(c: int):
    if c <= 46:
        return -1
    else:
        if c <= 47:
            return 0
        else:
            return -1

def _sedlex_rnd_71(lexerbuf: lexbuf):
    result = -1
    result = 13
    return result

def _sedlex_st_21(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 10)
    state_id = _sedlex_decide_5(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_70[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_69(lexerbuf: lexbuf):
    result = -1
    result = 11
    return result

def _sedlex_st_20(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 9)
    state_id = _sedlex_decide_5(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_68[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_5(c: int):
    if c <= 45:
        return -1
    else:
        if c <= 46:
            return 0
        else:
            return -1

def _sedlex_rnd_67(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_21(lexerbuf)
    return result

def _sedlex_st_18(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_4(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_66[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_4(c: int):
    if c <= -1:
        return -1
    else:
        if c <= 10:
            return _sedlex_DT_table_3[c - 0] - 1
        else:
            return 0

def _sedlex_rnd_65(lexerbuf: lexbuf):
    result = -1
    result = 55
    return result

def _sedlex_rnd_64(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_18(lexerbuf)
    return result

def _sedlex_st_17(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 8)
    state_id = _sedlex_decide_3(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_63[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_3(c: int):
    if c <= 44:
        return -1
    else:
        if c <= 45:
            return 0
        else:
            return -1

def _sedlex_rnd_62(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_18(lexerbuf)
    return result

def _sedlex_st_8(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 59)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_61[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_60(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_59(lexerbuf: lexbuf):
    result = -1
    result = 59
    return result

def _sedlex_rnd_58(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_7(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_57[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_56(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_55(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_8(lexerbuf)
    return result

def _sedlex_rnd_54(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_5(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_53[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_rnd_52(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_51(lexerbuf: lexbuf):
    result = -1
    result = 59
    return result

def _sedlex_rnd_50(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_4(lexerbuf: lexbuf):
    result = -1
    mark(lexerbuf, 61)
    state_id = _sedlex_decide_2(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_49[state_id](lexerbuf)
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

def _sedlex_rnd_48(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_7(lexerbuf)
    return result

def _sedlex_rnd_47(lexerbuf: lexbuf):
    result = -1
    result = 59
    return result

def _sedlex_rnd_46(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_5(lexerbuf)
    return result

def _sedlex_st_0(lexerbuf: lexbuf):
    result = -1
    state_id = _sedlex_decide_1(public_next_int(lexerbuf))
    if state_id >= 0:
        result = _sedlex_rnd_45[state_id](lexerbuf)
    else:
        result = backtrack(lexerbuf)
    return result

def _sedlex_decide_1(c: int):
    if c <= 126:
        return _sedlex_DT_table_1[c - -1] - 1
    else:
        return 1

def _sedlex_rnd_44(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_145(lexerbuf)
    return result

def _sedlex_rnd_43(lexerbuf: lexbuf):
    result = -1
    result = 52
    return result

def _sedlex_rnd_42(lexerbuf: lexbuf):
    result = -1
    result = 51
    return result

def _sedlex_rnd_41(lexerbuf: lexbuf):
    result = -1
    result = 50
    return result

def _sedlex_rnd_40(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_137(lexerbuf)
    return result

def _sedlex_rnd_39(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_132(lexerbuf)
    return result

def _sedlex_rnd_38(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_125(lexerbuf)
    return result

def _sedlex_rnd_37(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_115(lexerbuf)
    return result

def _sedlex_rnd_36(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_113(lexerbuf)
    return result

def _sedlex_rnd_35(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_108(lexerbuf)
    return result

def _sedlex_rnd_34(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_103(lexerbuf)
    return result

def _sedlex_rnd_33(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_100(lexerbuf)
    return result

def _sedlex_rnd_32(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_96(lexerbuf)
    return result

def _sedlex_rnd_31(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_82(lexerbuf)
    return result

def _sedlex_rnd_30(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_74(lexerbuf)
    return result

def _sedlex_rnd_29(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_72(lexerbuf)
    return result

def _sedlex_rnd_28(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_67(lexerbuf)
    return result

def _sedlex_rnd_27(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_64(lexerbuf)
    return result

def _sedlex_rnd_26(lexerbuf: lexbuf):
    result = -1
    result = 27
    return result

def _sedlex_rnd_25(lexerbuf: lexbuf):
    result = -1
    result = 26
    return result

def _sedlex_rnd_24(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_47(lexerbuf)
    return result

def _sedlex_rnd_23(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_45(lexerbuf)
    return result

def _sedlex_rnd_22(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_42(lexerbuf)
    return result

def _sedlex_rnd_21(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_40(lexerbuf)
    return result

def _sedlex_rnd_20(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_37(lexerbuf)
    return result

def _sedlex_rnd_19(lexerbuf: lexbuf):
    result = -1
    result = 16
    return result

def _sedlex_rnd_18(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_34(lexerbuf)
    return result

def _sedlex_rnd_17(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_33(lexerbuf)
    return result

def _sedlex_rnd_16(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_25(lexerbuf)
    return result

def _sedlex_rnd_15(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_23(lexerbuf)
    return result

def _sedlex_rnd_14(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_20(lexerbuf)
    return result

def _sedlex_rnd_13(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_17(lexerbuf)
    return result

def _sedlex_rnd_12(lexerbuf: lexbuf):
    result = -1
    result = 7
    return result

def _sedlex_rnd_11(lexerbuf: lexbuf):
    result = -1
    result = 6
    return result

def _sedlex_rnd_10(lexerbuf: lexbuf):
    result = -1
    result = 5
    return result

def _sedlex_rnd_9(lexerbuf: lexbuf):
    result = -1
    result = 4
    return result

def _sedlex_rnd_8(lexerbuf: lexbuf):
    result = -1
    result = 3
    return result

def _sedlex_rnd_7(lexerbuf: lexbuf):
    result = -1
    result = 2
    return result

def _sedlex_rnd_6(lexerbuf: lexbuf):
    result = -1
    result = 1
    return result

def _sedlex_rnd_5(lexerbuf: lexbuf):
    result = -1
    result = 0
    return result

def _sedlex_rnd_4(lexerbuf: lexbuf):
    result = -1
    result = _sedlex_st_4(lexerbuf)
    return result

def _sedlex_rnd_3(lexerbuf: lexbuf):
    result = -1
    result = 56
    return result

def _sedlex_rnd_2(lexerbuf: lexbuf):
    result = -1
    result = 61
    return result

def _sedlex_rnd_1(lexerbuf: lexbuf):
    result = -1
    result = 62
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
    token_id = _sedlex_rnd_379[case_id]
    if token_id is not None:
        return construct_token(token_id, lexeme(lexerbuf), lexerbuf.start_line, lexerbuf.pos - lexerbuf.curr_bol, lexerbuf.pos - lexerbuf.start_pos, lexerbuf.start_pos, lexerbuf.filename)
    return None
def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):
    while True:
        token = lex(buf, construct)
        if token is None: continue
        if is_eof(token): break
        yield token
_sedlex_rnd_378 = [_sedlex_rnd_377]

_sedlex_rnd_376 = [_sedlex_rnd_375]

_sedlex_rnd_374 = [_sedlex_rnd_372, _sedlex_rnd_373]

_sedlex_rnd_371 = [_sedlex_rnd_369, _sedlex_rnd_370]

_sedlex_rnd_368 = [_sedlex_rnd_366, _sedlex_rnd_367]

_sedlex_DT_table_35 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_365 = [_sedlex_rnd_363, _sedlex_rnd_364]

_sedlex_rnd_362 = [_sedlex_rnd_361]

_sedlex_rnd_360 = [_sedlex_rnd_358, _sedlex_rnd_359]

_sedlex_rnd_357 = [_sedlex_rnd_355, _sedlex_rnd_356]

_sedlex_rnd_354 = [_sedlex_rnd_352, _sedlex_rnd_353]

_sedlex_rnd_351 = [_sedlex_rnd_349, _sedlex_rnd_350]

_sedlex_rnd_348 = [_sedlex_rnd_347]

_sedlex_rnd_346 = [_sedlex_rnd_344, _sedlex_rnd_345]

_sedlex_rnd_343 = [_sedlex_rnd_341, _sedlex_rnd_342]

_sedlex_rnd_340 = [_sedlex_rnd_339]

_sedlex_rnd_338 = [_sedlex_rnd_336, _sedlex_rnd_337]

_sedlex_rnd_335 = [_sedlex_rnd_333, _sedlex_rnd_334]

_sedlex_DT_table_34 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_332 = [_sedlex_rnd_329, _sedlex_rnd_330, _sedlex_rnd_331]

_sedlex_rnd_328 = [_sedlex_rnd_327]

_sedlex_rnd_326 = [_sedlex_rnd_324, _sedlex_rnd_325]

_sedlex_rnd_323 = [_sedlex_rnd_321, _sedlex_rnd_322]

_sedlex_DT_table_33 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1]

_sedlex_rnd_320 = [_sedlex_rnd_318, _sedlex_rnd_319]

_sedlex_rnd_317 = [_sedlex_rnd_316]

_sedlex_rnd_315 = [_sedlex_rnd_313, _sedlex_rnd_314]

_sedlex_rnd_312 = [_sedlex_rnd_310, _sedlex_rnd_311]

_sedlex_rnd_309 = [_sedlex_rnd_307, _sedlex_rnd_308]

_sedlex_DT_table_32 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_306 = [_sedlex_rnd_303, _sedlex_rnd_304, _sedlex_rnd_305]

_sedlex_rnd_302 = [_sedlex_rnd_300, _sedlex_rnd_301]

_sedlex_rnd_299 = [_sedlex_rnd_298]

_sedlex_rnd_297 = [_sedlex_rnd_295, _sedlex_rnd_296]

_sedlex_rnd_294 = [_sedlex_rnd_293]

_sedlex_rnd_292 = [_sedlex_rnd_290, _sedlex_rnd_291]

_sedlex_rnd_289 = [_sedlex_rnd_288]

_sedlex_rnd_287 = [_sedlex_rnd_285, _sedlex_rnd_286]

_sedlex_DT_table_31 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_284 = [_sedlex_rnd_281, _sedlex_rnd_282, _sedlex_rnd_283]

_sedlex_rnd_280 = [_sedlex_rnd_279]

_sedlex_rnd_278 = [_sedlex_rnd_276, _sedlex_rnd_277]

_sedlex_rnd_275 = [_sedlex_rnd_273, _sedlex_rnd_274]

_sedlex_rnd_272 = [_sedlex_rnd_270, _sedlex_rnd_271]

_sedlex_rnd_269 = [_sedlex_rnd_267, _sedlex_rnd_268]

_sedlex_rnd_266 = [_sedlex_rnd_265]

_sedlex_rnd_264 = [_sedlex_rnd_263]

_sedlex_DT_table_30 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_262 = [_sedlex_rnd_259, _sedlex_rnd_260, _sedlex_rnd_261]

_sedlex_rnd_258 = [_sedlex_rnd_257]

_sedlex_rnd_256 = [_sedlex_rnd_254, _sedlex_rnd_255]

_sedlex_rnd_253 = [_sedlex_rnd_251, _sedlex_rnd_252]

_sedlex_rnd_250 = [_sedlex_rnd_248, _sedlex_rnd_249]

_sedlex_rnd_247 = [_sedlex_rnd_246]

_sedlex_rnd_245 = [_sedlex_rnd_243, _sedlex_rnd_244]

_sedlex_rnd_242 = [_sedlex_rnd_240, _sedlex_rnd_241]

_sedlex_rnd_239 = [_sedlex_rnd_237, _sedlex_rnd_238]

_sedlex_DT_table_29 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_236 = [_sedlex_rnd_234, _sedlex_rnd_235]

_sedlex_DT_table_28 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_233 = [_sedlex_rnd_231, _sedlex_rnd_232]

_sedlex_rnd_230 = [_sedlex_rnd_228, _sedlex_rnd_229]

_sedlex_rnd_227 = [_sedlex_rnd_226]

_sedlex_rnd_225 = [_sedlex_rnd_223, _sedlex_rnd_224]

_sedlex_rnd_222 = [_sedlex_rnd_221]

_sedlex_rnd_220 = [_sedlex_rnd_218, _sedlex_rnd_219]

_sedlex_rnd_217 = [_sedlex_rnd_215, _sedlex_rnd_216]

_sedlex_DT_table_27 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_214 = [_sedlex_rnd_212, _sedlex_rnd_213]

_sedlex_DT_table_26 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1]

_sedlex_rnd_211 = [_sedlex_rnd_207, _sedlex_rnd_208, _sedlex_rnd_209, _sedlex_rnd_210]

_sedlex_rnd_206 = [_sedlex_rnd_205]

_sedlex_rnd_204 = [_sedlex_rnd_202, _sedlex_rnd_203]

_sedlex_rnd_201 = [_sedlex_rnd_200]

_sedlex_DT_table_25 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_199 = [_sedlex_rnd_197, _sedlex_rnd_198]

_sedlex_DT_table_24 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_196 = [_sedlex_rnd_194, _sedlex_rnd_195]

_sedlex_rnd_193 = [_sedlex_rnd_191, _sedlex_rnd_192]

_sedlex_DT_table_23 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_190 = [_sedlex_rnd_188, _sedlex_rnd_189]

_sedlex_DT_table_22 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_187 = [_sedlex_rnd_184, _sedlex_rnd_185, _sedlex_rnd_186]

_sedlex_rnd_183 = [_sedlex_rnd_182]

_sedlex_DT_table_21 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_181 = [_sedlex_rnd_179, _sedlex_rnd_180]

_sedlex_rnd_178 = [_sedlex_rnd_177]

_sedlex_DT_table_20 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_176 = [_sedlex_rnd_174, _sedlex_rnd_175]

_sedlex_DT_table_19 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_173 = [_sedlex_rnd_171, _sedlex_rnd_172]

_sedlex_DT_table_18 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_170 = [_sedlex_rnd_168, _sedlex_rnd_169]

_sedlex_DT_table_17 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_167 = [_sedlex_rnd_165, _sedlex_rnd_166]

_sedlex_rnd_164 = [_sedlex_rnd_163]

_sedlex_DT_table_16 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_162 = [_sedlex_rnd_160, _sedlex_rnd_161]

_sedlex_DT_table_15 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_159 = [_sedlex_rnd_157, _sedlex_rnd_158]

_sedlex_rnd_156 = [_sedlex_rnd_154, _sedlex_rnd_155]

_sedlex_rnd_153 = [_sedlex_rnd_151, _sedlex_rnd_152]

_sedlex_rnd_150 = [_sedlex_rnd_148, _sedlex_rnd_149]

_sedlex_rnd_147 = [_sedlex_rnd_145, _sedlex_rnd_146]

_sedlex_rnd_144 = [_sedlex_rnd_142, _sedlex_rnd_143]

_sedlex_rnd_141 = [_sedlex_rnd_139, _sedlex_rnd_140]

_sedlex_rnd_138 = [_sedlex_rnd_136, _sedlex_rnd_137]

_sedlex_rnd_135 = [_sedlex_rnd_133, _sedlex_rnd_134]

_sedlex_rnd_132 = [_sedlex_rnd_130, _sedlex_rnd_131]

_sedlex_DT_table_14 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]

_sedlex_rnd_129 = [_sedlex_rnd_126, _sedlex_rnd_127, _sedlex_rnd_128]

_sedlex_DT_table_13 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2]

_sedlex_rnd_125 = [_sedlex_rnd_123, _sedlex_rnd_124]

_sedlex_DT_table_12 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2]

_sedlex_rnd_122 = [_sedlex_rnd_120, _sedlex_rnd_121]

_sedlex_DT_table_11 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]

_sedlex_rnd_119 = [_sedlex_rnd_116, _sedlex_rnd_117, _sedlex_rnd_118]

_sedlex_DT_table_10 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2]

_sedlex_rnd_115 = [_sedlex_rnd_113, _sedlex_rnd_114]

_sedlex_rnd_112 = [_sedlex_rnd_111]

_sedlex_DT_table_9 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_110 = [_sedlex_rnd_109]

_sedlex_rnd_108 = [_sedlex_rnd_106, _sedlex_rnd_107]

_sedlex_rnd_105 = [_sedlex_rnd_104]

_sedlex_DT_table_8 = [1, 2]

_sedlex_rnd_103 = [_sedlex_rnd_101, _sedlex_rnd_102]

_sedlex_rnd_100 = [_sedlex_rnd_99]

_sedlex_rnd_98 = [_sedlex_rnd_95, _sedlex_rnd_96, _sedlex_rnd_97]

_sedlex_rnd_94 = [_sedlex_rnd_93]

_sedlex_DT_table_7 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

_sedlex_rnd_92 = [_sedlex_rnd_91]

_sedlex_DT_table_6 = [1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3]

_sedlex_rnd_90 = [_sedlex_rnd_87, _sedlex_rnd_88, _sedlex_rnd_89]

_sedlex_rnd_86 = [_sedlex_rnd_85]

_sedlex_rnd_84 = [_sedlex_rnd_83]

_sedlex_DT_table_5 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2]

_sedlex_rnd_82 = [_sedlex_rnd_80, _sedlex_rnd_81]

_sedlex_rnd_79 = [_sedlex_rnd_78]

_sedlex_DT_table_4 = [1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4]

_sedlex_rnd_77 = [_sedlex_rnd_73, _sedlex_rnd_74, _sedlex_rnd_75, _sedlex_rnd_76]

_sedlex_rnd_72 = [_sedlex_rnd_71]

_sedlex_rnd_70 = [_sedlex_rnd_69]

_sedlex_rnd_68 = [_sedlex_rnd_67]

_sedlex_DT_table_3 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2]

_sedlex_rnd_66 = [_sedlex_rnd_64, _sedlex_rnd_65]

_sedlex_rnd_63 = [_sedlex_rnd_62]

_sedlex_rnd_61 = [_sedlex_rnd_58, _sedlex_rnd_59, _sedlex_rnd_60]

_sedlex_rnd_57 = [_sedlex_rnd_54, _sedlex_rnd_55, _sedlex_rnd_56]

_sedlex_rnd_53 = [_sedlex_rnd_50, _sedlex_rnd_51, _sedlex_rnd_52]

_sedlex_DT_table_2 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]

_sedlex_rnd_49 = [_sedlex_rnd_46, _sedlex_rnd_47, _sedlex_rnd_48]

_sedlex_DT_table_1 = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 4, 5, 2, 6, 7, 2, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 19, 20, 21, 22, 2, 2, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 2, 25, 26, 23, 2, 27, 28, 23, 29, 30, 31, 32, 23, 33, 23, 23, 34, 23, 35, 36, 23, 23, 37, 23, 38, 39, 23, 40, 23, 23, 23, 41, 42, 43, 44]

_sedlex_rnd_45 = [_sedlex_rnd_1, _sedlex_rnd_2, _sedlex_rnd_3, _sedlex_rnd_4, _sedlex_rnd_5, _sedlex_rnd_6, _sedlex_rnd_7, _sedlex_rnd_8, _sedlex_rnd_9, _sedlex_rnd_10, _sedlex_rnd_11, _sedlex_rnd_12, _sedlex_rnd_13, _sedlex_rnd_14, _sedlex_rnd_15, _sedlex_rnd_16, _sedlex_rnd_17, _sedlex_rnd_18, _sedlex_rnd_19, _sedlex_rnd_20, _sedlex_rnd_21, _sedlex_rnd_22, _sedlex_rnd_23, _sedlex_rnd_24, _sedlex_rnd_25, _sedlex_rnd_26, _sedlex_rnd_27, _sedlex_rnd_28, _sedlex_rnd_29, _sedlex_rnd_30, _sedlex_rnd_31, _sedlex_rnd_32, _sedlex_rnd_33, _sedlex_rnd_34, _sedlex_rnd_35, _sedlex_rnd_36, _sedlex_rnd_37, _sedlex_rnd_38, _sedlex_rnd_39, _sedlex_rnd_40, _sedlex_rnd_41, _sedlex_rnd_42, _sedlex_rnd_43, _sedlex_rnd_44]

