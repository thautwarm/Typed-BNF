// file: Grammar/tbnf.config.cs
"use strict";

function rename_type(x) {
    if (x == "str") return "string"
    if (x == "token") return "IToken"
    if (x == "float") return "double"
    if (["int", "bool"].includes(x)) return x
    if ('list' == x) return 'System.Collections.Generic.List'
    if (x == "params") return "Parameters"
    return x
}

function rename_var(x) {
    if (x == 'params') return x + "v"
    return x
}

function rename_field(x) {
    if (x == 'params') return "parameters"
    return x
}

module.exports = { rename_type, rename_var, rename_field }
