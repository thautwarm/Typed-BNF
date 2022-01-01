def rename_type(x):
    if x == 'Json':
        return 'json'
    if x == "str":
        return "string"
    if x == "JsonPair":
        return "json_pair"
    if x == "token":
        return "tbnf_token"
    return x

def rename_var(x: str):
    if x[0].isupper():
        return "mk_" + x
    return x

start_rule_qualified_type = "Simple_json_construct.json"
