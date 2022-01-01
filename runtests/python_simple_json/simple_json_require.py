from json.decoder import py_scanstring

from lark import Token

parseInt = int
parseFlt = float
def getStr(token: Token):
    return str(token)

def identity(x):
    return x

def unesc(x):
    return py_scanstring(x, 1)[0]

def appendList(xs, x):
    xs.append(x)
    return xs
