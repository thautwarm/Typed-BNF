start_rule_qualified_type = "Simple_json_construct.json"

// def rename_type(x):
//     if x == 'Json':
//         return 'json'
//     if x == "str":
//         return "string"
//     if x == "JsonPair":
//         return "json_pair"
//     if x == "token":
//         return "tbnf_token"
//     return x

function rename_type(x)
{
    if (x == "Json")
        return "json"
    if (x == "str")
        return "string"
    if (x == "JsonPair")
        return "json_pair"
    if (x == "token")
        return "tbnf_token"
    return x
}

// def rename_var(x: str):
//     if x[0].isupper():
//         return "mk_" + x
//     return x

function rename_var(x)
{
    if (x[0] == x[0].toUpperCase())
        return "mk_" + x
    return x
}