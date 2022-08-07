using Sedlex
const _sedlex_rnd_69 = [ Int32(11), Int32(10), Int32(4), Int32(5), Int32(9), Int32(2), Int32(8), Int32(6), Int32(7), Int32(1), Int32(0), nothing, Int32(3), Int32(12), Int32(-1) ]  # token_ids
function _sedlex_st_30(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_9(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_68, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_67(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(6)
    return result
end
function _sedlex_st_29(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_10(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_66, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_65(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_30(lexerbuf)
    return result
end
function _sedlex_st_28(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 13)
    state_id = _sedlex_decide_11(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_64, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_11(c::Int32)
    if c <= 113
        return -1
    else
        if c <= 114
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_63(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_29(lexerbuf)
    return result
end
function _sedlex_st_26(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_7(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_62, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_61(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(5)
    return result
end
function _sedlex_st_25(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_7(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_60, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_59(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_26(lexerbuf)
    return result
end
function _sedlex_st_24(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 13)
    state_id = _sedlex_decide_10(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_58, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_10(c::Int32)
    if c <= 116
        return -1
    else
        if c <= 117
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_57(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_25(lexerbuf)
    return result
end
function _sedlex_st_22(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_9(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_56, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_9(c::Int32)
    if c <= 100
        return -1
    else
        if c <= 101
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_55(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(4)
    return result
end
function _sedlex_st_21(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_8(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_54, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_8(c::Int32)
    if c <= 114
        return -1
    else
        if c <= 115
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_53(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_22(lexerbuf)
    return result
end
function _sedlex_st_20(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_7(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_52, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_7(c::Int32)
    if c <= 107
        return -1
    else
        if c <= 108
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_51(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_21(lexerbuf)
    return result
end
function _sedlex_st_19(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 13)
    state_id = _sedlex_decide_6(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_50, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_6(c::Int32)
    if c <= 96
        return -1
    else
        if c <= 97
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_49(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_20(lexerbuf)
    return result
end
function _sedlex_st_15(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 10)
    state_id = _sedlex_decide_5(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_48, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_47(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_15(lexerbuf)
    return result
end
function _sedlex_rnd_46(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_14(lexerbuf)
    return result
end
function _sedlex_st_14(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_4(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_45, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_44(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_12(lexerbuf)
    return result
end
function _sedlex_st_13(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 10)
    state_id = _sedlex_decide_5(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_43, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_5(c::Int32)
    if c <= 45
        return -1
    else
        if c <= 57
            return _sedlex_DT_table_4[c - 46 + 1] - 1
        else
            return -1
        end
    end
end
function _sedlex_rnd_42(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_15(lexerbuf)
    return result
end
function _sedlex_rnd_41(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_14(lexerbuf)
    return result
end
function _sedlex_st_12(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 9)
    state_id = _sedlex_decide_4(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_40, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_39(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_12(lexerbuf)
    return result
end
function _sedlex_st_11(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 13)
    state_id = _sedlex_decide_4(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_38, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_4(c::Int32)
    if c <= 47
        return -1
    else
        if c <= 57
            return 0
        else
            return -1
        end
    end
end
function _sedlex_rnd_37(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_12(lexerbuf)
    return result
end
function _sedlex_st_9(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 12)
    state_id = _sedlex_decide_3(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_36, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_35(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_8(lexerbuf)
    return result
end
function _sedlex_rnd_34(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(12)
    return result
end
function _sedlex_rnd_33(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_6(lexerbuf)
    return result
end
function _sedlex_st_8(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_3(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_32, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_31(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_8(lexerbuf)
    return result
end
function _sedlex_rnd_30(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_9(lexerbuf)
    return result
end
function _sedlex_rnd_29(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_6(lexerbuf)
    return result
end
function _sedlex_st_6(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_3(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_28, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_27(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_8(lexerbuf)
    return result
end
function _sedlex_rnd_26(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(12)
    return result
end
function _sedlex_rnd_25(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_6(lexerbuf)
    return result
end
function _sedlex_st_5(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 13)
    state_id = _sedlex_decide_3(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_24, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_3(c::Int32)
    if c <= -1
        return -1
    else
        if c <= 92
            return _sedlex_DT_table_3[c - 0 + 1] - 1
        else
            return 0
        end
    end
end
function _sedlex_rnd_23(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_8(lexerbuf)
    return result
end
function _sedlex_rnd_22(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(12)
    return result
end
function _sedlex_rnd_21(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_6(lexerbuf)
    return result
end
function _sedlex_st_4(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 11)
    state_id = _sedlex_decide_2(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_20, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_rnd_19(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_4(lexerbuf)
    return result
end
function _sedlex_st_3(lexerbuf::lexbuf)
    result = Int32(-1)
    sedlex_mark(lexerbuf, 11)
    state_id = _sedlex_decide_2(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_18, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_2(c::Int32)
    if c <= 8
        return -1
    else
        if c <= 32
            return _sedlex_DT_table_2[c - 9 + 1] - 1
        else
            return -1
        end
    end
end
function _sedlex_rnd_17(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_4(lexerbuf)
    return result
end
function _sedlex_st_0(lexerbuf::lexbuf)
    result = Int32(-1)
    state_id = _sedlex_decide_1(sedlex_next_int(lexerbuf))
    if state_id >= 0
        result = sedlex_call_state(_sedlex_rnd_16, state_id, lexerbuf)
    else
        result = sedlex_backtrack(lexerbuf)
    end
    return result
end
function _sedlex_decide_1(c::Int32)
    if c <= 125
        return _sedlex_DT_table_1[c - -1 + 1] - 1
    else
        return 1
    end
end
function _sedlex_rnd_15(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(8)
    return result
end
function _sedlex_rnd_14(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(7)
    return result
end
function _sedlex_rnd_13(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_28(lexerbuf)
    return result
end
function _sedlex_rnd_12(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_24(lexerbuf)
    return result
end
function _sedlex_rnd_11(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_19(lexerbuf)
    return result
end
function _sedlex_rnd_10(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(3)
    return result
end
function _sedlex_rnd_9(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(2)
    return result
end
function _sedlex_rnd_8(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(1)
    return result
end
function _sedlex_rnd_7(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_13(lexerbuf)
    return result
end
function _sedlex_rnd_6(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_11(lexerbuf)
    return result
end
function _sedlex_rnd_5(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(0)
    return result
end
function _sedlex_rnd_4(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_5(lexerbuf)
    return result
end
function _sedlex_rnd_3(lexerbuf::lexbuf)
    result = Int32(-1)
    result = _sedlex_st_3(lexerbuf)
    return result
end
function _sedlex_rnd_2(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(13)
    return result
end
function _sedlex_rnd_1(lexerbuf::lexbuf)
    result = Int32(-1)
    result = Int32(14)
    return result
end
struct Token
    idint::Int32
    lexeme::String
    line::Int32
    col::Int32
    span::Int32
    offset::Int32
    file::String
    Token(token_id, src, line, col, span, offset, file) = new(token_id, sedlex_lexeme(src), line, col, span, offset, file)
end
function lex(construct_token,  lexerbuf::lexbuf)
    sedlex_start(lexerbuf)
    case_id = _sedlex_st_0(lexerbuf)
    case_id < 0 && error("the last branch must be a catch-all error case!")
    token_id = _sedlex_rnd_69[case_id + 1]
    token_id == nothing && return nothing
    return construct_token(token_id, lexerbuf, lexerbuf.start_line, lexerbuf.pos - lexerbuf.curr_bol, lexerbuf.pos - lexerbuf.start_pos, lexerbuf.start_pos, lexerbuf.filename)
end
function lexall(construct_token, buf::lexbuf, is_eof #= Token -> Bool =#)
    Channel() do coro
        while true
            token = lex(construct_token, buf)
            token === nothing && continue
            is_eof(token) && break
            put!(coro, token)
        end
    end
end
const _sedlex_rnd_68 = (_sedlex_rnd_67,)
const _sedlex_rnd_66 = (_sedlex_rnd_65,)
const _sedlex_rnd_64 = (_sedlex_rnd_63,)
const _sedlex_rnd_62 = (_sedlex_rnd_61,)
const _sedlex_rnd_60 = (_sedlex_rnd_59,)
const _sedlex_rnd_58 = (_sedlex_rnd_57,)
const _sedlex_rnd_56 = (_sedlex_rnd_55,)
const _sedlex_rnd_54 = (_sedlex_rnd_53,)
const _sedlex_rnd_52 = (_sedlex_rnd_51,)
const _sedlex_rnd_50 = (_sedlex_rnd_49,)
const _sedlex_rnd_48 = (_sedlex_rnd_46, _sedlex_rnd_47,)
const _sedlex_rnd_45 = (_sedlex_rnd_44,)
const _sedlex_DT_table_4 = [1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
const _sedlex_rnd_43 = (_sedlex_rnd_41, _sedlex_rnd_42,)
const _sedlex_rnd_40 = (_sedlex_rnd_39,)
const _sedlex_rnd_38 = (_sedlex_rnd_37,)
const _sedlex_rnd_36 = (_sedlex_rnd_33, _sedlex_rnd_34, _sedlex_rnd_35,)
const _sedlex_rnd_32 = (_sedlex_rnd_29, _sedlex_rnd_30, _sedlex_rnd_31,)
const _sedlex_rnd_28 = (_sedlex_rnd_25, _sedlex_rnd_26, _sedlex_rnd_27,)
const _sedlex_DT_table_3 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3]
const _sedlex_rnd_24 = (_sedlex_rnd_21, _sedlex_rnd_22, _sedlex_rnd_23,)
const _sedlex_rnd_20 = (_sedlex_rnd_19,)
const _sedlex_DT_table_2 = [1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
const _sedlex_rnd_18 = (_sedlex_rnd_17,)
const _sedlex_DT_table_1 = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 6, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 10, 2, 2, 2, 2, 2, 2, 2, 2, 11, 2, 2, 2, 2, 2, 2, 2, 12, 2, 2, 2, 2, 2, 13, 2, 2, 2, 2, 2, 2, 14, 2, 15]
const _sedlex_rnd_16 = (_sedlex_rnd_1, _sedlex_rnd_2, _sedlex_rnd_3, _sedlex_rnd_4, _sedlex_rnd_5, _sedlex_rnd_6, _sedlex_rnd_7, _sedlex_rnd_8, _sedlex_rnd_9, _sedlex_rnd_10, _sedlex_rnd_11, _sedlex_rnd_12, _sedlex_rnd_13, _sedlex_rnd_14, _sedlex_rnd_15,)
