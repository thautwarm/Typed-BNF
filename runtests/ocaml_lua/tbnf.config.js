start_rule_qualified_type = "Lua_construct.block"

function capitalize(word) {
    return word[0].toUpperCase() + word.slice(1).toLowerCase();
}

function isUpperCase(myString) {
    return (myString == myString.toUpperCase());
}

function rename_type(x) {
    if (isUpperCase(x[0]))
        return capitalize(x)
    if (x == "token")
        return "tbnf_token"
    return x
}
function rename_var(x) {
    if (isUpperCase(x[0]))
        return "mk_" + x
    return x
}

module.exports = { rename_type, rename_var, start_rule_qualified_type }