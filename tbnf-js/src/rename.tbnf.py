def rename_type(x: str):
    # to typescript
    if x == "list":
        return 'Array'
    if x == 'int':
        return 'number'
    if x == 'float':
        return 'number'
    if x == 'str':
        return 'string'
    if x == 'bool':
        return 'boolean'
    if x == "token":
        return "Token"
    return x
