function rename_type(x)
{
    if (x == "str")
        return "string"
    if (x == "token")
        return "IToken"
    if (["int", "float", "bool"].includes(x))
        return x
    if ('list' == x)
        return 'MyList'
    if (x == "params")
        return "parameters"
    if (x == 'op')
        return 'Op'
    return x
}

function rename_var(x)
{
    if (x == 'params')
        return x + "v"
    return x
}

function rename_field(x)
{
    if (x == 'params')
        return "parameters"
    return x
}

module.exports = { rename_type, rename_var, rename_field }
