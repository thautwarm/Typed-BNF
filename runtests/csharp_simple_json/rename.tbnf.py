def rename_type(x):
    if x == "str":
        return "string"
    if x == 'Json':
        return 'JsonValue'
    if x == 'list':
        return 'System.Collections.Generic.List'
    if x == 'token':
        return 'IToken',
    return x