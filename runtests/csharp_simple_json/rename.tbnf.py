def rename_type(x):
    if x == "str":
        return "string"
    if x == 'Json':
        return 'JsonValue'
    if x == 'list':
        return 'MyList'
    if x == 'token':
        return 'IToken'
    return x