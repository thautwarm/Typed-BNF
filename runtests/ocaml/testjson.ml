let rule_DIGIT_2 = [%sedlex.regexp? ('0' .. '9')]
let rec tokenize lexerbuffer =
    match%sedlex lexerbuffer with
    | "]" -> LIT__6 (mktoken lexerbuffer)
    | "," -> LIT__9 (mktoken lexerbuffer)
    | ":" -> LIT__10 (mktoken lexerbuffer)
    | "[" -> LIT__5 (mktoken lexerbuffer)
    | "{" -> LIT__7 (mktoken lexerbuffer)
    | "}" -> LIT__8 (mktoken lexerbuffer)
    | '"', Star (('\\', '"'|Compl ('"'))), '"' -> STR_1(mktoken lexerbuffer)
    | Plus (rule_DIGIT_2) -> INT_3(mktoken lexerbuffer)
    | rule_INT_3, '.', rule_INT_3 -> FLOAT_4(mktoken lexerbuffer)
    | eof -> EOF
