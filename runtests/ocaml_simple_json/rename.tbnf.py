def rename_type(x):
    if x == 'json':
        return 'Simple_json_require.json'
    if x == "str":
        return "string"
    if x == "token":
        return "tbnf_token"
    return x
