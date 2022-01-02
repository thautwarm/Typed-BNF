start_rule_qualified_type = "Lua_construct.block"

def rename_type(x: str):
    if x[0].isupper():
        return x.capitalize()
    if x == "token":
        return "tbnf_token"
    return x

def rename_var(x: str):
    if x[0].isupper():
        return "mk_" + x
    return x

