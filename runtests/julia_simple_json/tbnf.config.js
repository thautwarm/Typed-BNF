function rename_type(x)
{
    if (x == "str")
        return "String";
    else if (x == 'list')
        return 'Vector';
    else if (x == 'token')
        return 'Sedlex.LightToken';
    else if (x == 'float')
        return 'Cdouble';
    else if (x == 'int')
        return 'Int';
    else if (x == 'bool')
        return 'Bool';
    else
        return x;
}

module.exports = { rename_type };
