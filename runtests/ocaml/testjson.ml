let rule_ESCAPED_QUOTE_1 = [%sedlex.regexp? '\\', '"']
let rule_DIGIT_4 = [%sedlex.regexp? ('0' .. '9')]
let rule_INT_5 = [%sedlex.regexp? Plus (rule_DIGIT_4)]
let rec tokenize lexerbuffer =
    match%sedlex lexerbuffer with
    | "[" -> LIT__7 (mktoken lexerbuffer)
    | "{" -> LIT__9 (mktoken lexerbuffer)
    | "]" -> LIT__8 (mktoken lexerbuffer)
    | "," -> LIT__12 (mktoken lexerbuffer)
    | ":" -> LIT__13 (mktoken lexerbuffer)
    | "}" -> LIT__10 (mktoken lexerbuffer)
    | "null" -> NULL_11 (mktoken lexerbuffer)
    | '"', Star ((rule_ESCAPED_QUOTE_1|Compl ('"'))), '"' -> STR_2 (mktoken lexerbuffer)
    | ('\r'|'\t'|'\n'|' ') -> tokenize lexerbuffer
    | rule_INT_5 -> INT_5 (mktoken lexerbuffer)
    | rule_INT_5, '.', rule_INT_5 -> FLOAT_6 (mktoken lexerbuffer)
    | eof -> EOF
