function rename_type(x)
{
    if (x == "str")
        return "string";
    else if (x == 'Json')
        return 'JsonValue';
    else if (x == 'list')
        return 'MyList';
    else if (x == 'token')
        return 'IToken';
    else
        return x;
}

module.exports = { rename_type };
