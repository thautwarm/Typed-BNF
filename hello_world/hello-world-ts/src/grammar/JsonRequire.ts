import { Token } from "antlr4ng";
export const toInt = parseInt;
export const toFlt = parseFloat;
export const getStr = (x: Token) => x.text ?? "";
export function appendList<T>(x: T[], y: T)
{
    return [...x, y];
}
export * from './JsonConstructor';

// JSON.parse is also a valid implementation,
// but we might not use an existing JSON parser to implement the current JSON parser...
export function unesc(s: string)
{
    let r = "";
    let i = 1;
    let n = s.length - 1;
    while (i < n)
    {
        if (s[i] == '\\')
        {
            i++;
            switch (s[i])
            {
                case 'b':
                    r += '\b';
                    break;
                case 't':
                    r += '\t';
                    break;
                case 'n':
                    r += '\n';
                    break;
                case 'f':
                    r += '\f';
                    break;
                case 'r':
                    r += '\r';
                    break;
                case '\\':
                    r += '\\';
                    break;
                case '\"':
                    r += '\"';
                    break;
                case '\'':
                    r += '\'';
                    break;
                default:
                    r += s[i];
                    break;
            }
        }
        else
        {
            r += s[i];
        }
        i++;
    }
    return r;
}