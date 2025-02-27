import { Token } from "antlr4ng";

function getNativeTokenId(s: string): number {
    return tokenTypesLegend.indexOf(s);
}

export const tokenTypesLegend = [
    'comment',
    'string',
    'keyword',
    'number',
    'regexp',
    'operator',
    'namespace',
    'type',
    'struct',
    'class',
    'interface',
    'enum',
    'typeParameter',
    'function',
    'method',
    'decorator',
    'macro',
    'variable',
    'parameter',
    'property',
    'label'
];

function trimSymbolKind(s: string)
{
    if (s.startsWith("<") && s.endsWith(">"))
    {
        return s.substring(1, s.length - 1);
    }
    return s;
}

export class Scope {
    public static readonly Keyword = getNativeTokenId("keyword");
    public static readonly Number = getNativeTokenId("number");
    public static readonly String = getNativeTokenId("string");
    public static readonly Operator = getNativeTokenId("operator");
    public static readonly Namespace = getNativeTokenId("namespace");
    public static readonly Function = getNativeTokenId("function");
    public static readonly Variable = getNativeTokenId("variable");
    public static readonly Label = getNativeTokenId("label");
    public static readonly Property = getNativeTokenId("property");
    public static readonly Method = getNativeTokenId("method");
    public static readonly Interface = getNativeTokenId("interface");
    public static readonly Struct = getNativeTokenId("struct");
    public static readonly Class = getNativeTokenId("class");
    public static readonly Enum = getNativeTokenId("enum");
    public static readonly TypeParameter = getNativeTokenId("typeParameter");
    public static readonly Macro = getNativeTokenId("macro");
}

export enum TokenType {
    OPERATOR = Scope.Operator,
    RULE_IDENT = Scope.Method,
    LEX_IDENT = Scope.Struct,
    EXPR_IDENT = Scope.Variable,
    TYPE_IDENT = Scope.Class,
    TYPE_VAR = Scope.TypeParameter,
    MACRO_IDENT = Scope.Macro,
    FIELD = Scope.Property,
    KEYWORD = Scope.Keyword,
    PRODUCTION = Scope.Label,
    BRANCH = Scope.Enum,
    STR = Scope.String,
    INT = Scope.Number,
    FLOAT = Scope.Number,
}

export const OPERATOR = TokenType.OPERATOR;
export const RULE_IDENT = TokenType.RULE_IDENT;
export const LEX_IDENT = TokenType.LEX_IDENT;
export const EXPR_IDENT = TokenType.EXPR_IDENT;
export const TYPE_IDENT = TokenType.TYPE_IDENT;
export const TYPE_VAR = TokenType.TYPE_VAR;
export const MACRO_IDENT = TokenType.MACRO_IDENT;
export const FIELD = TokenType.FIELD;
export const KEYWORD = TokenType.KEYWORD;
export const PRODUCTION = TokenType.PRODUCTION;
export const BRANCH = TokenType.BRANCH;
export const STR = TokenType.STR;
export const INT = TokenType.INT;
export const FLOAT = TokenType.FLOAT;

let _render_cache = new Array<[TokenType, Token]>();
let _def_cache: Map<string, Token> = new Map();
export function mark(token: Token, type: number) {
    _render_cache.push([type, token]);
    return 0;
}

export function markDef(token: Token, type: number): number {
    _def_cache.set(token.text + '|' + type, token);
    return 0;
}

export function getRenderCache() {
    return _render_cache;
}

export function clearRenderCache() {
    _render_cache = [];
}

export function getDefCache() {
    return _def_cache;
}

export function clearDefCache() {
    _def_cache = new Map();
}

