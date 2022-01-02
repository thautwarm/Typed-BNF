import builtins


builtin_types = ['int', 'float', 'str', '']
def rename_type(x):
    if x == "str":
        return "string"
    if x == "token":
        return "IToken"
    if x in {"int", "float", "bool"}:
        return x
    if x == 'list':
        return 'MyList'
    if x == "params":
        return "parameters"
    if x == 'op':
        return 'Op'
    return x

def rename_var(x):
    if x == 'params':
        return x + "v"
    return x

def rename_field(x):
    if x == 'params':
        return "parameters"
    return x
