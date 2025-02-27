import * as antlr from 'antlr4ng';
import * as vscode from 'vscode';

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


function getNativeTokenId(s: string): number {
    return tokenTypesLegend.indexOf(s);
}


class Scope {
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
}

export const tokenModifiersLegend = [
    'declaration',
    'documentation',
    'readonly',
    'static',
    'abstract',
    'deprecated',
    'modification',
    'async'
];

type scope = number;

export class TBNFHighlighter {
    _render_cache = new Array<[scope, antlr.Token]>();


    mark(scope: number, token: antlr.Token) {
        this._render_cache.push([scope, token]);
    }
}


// export class DocumentSemanticTokensProvider implements vscode.DocumentSemanticTokensProvider {
//     async provideDocumentSemanticTokens(document: vscode.TextDocument, _: vscode.CancellationToken): Promise<vscode.SemanticTokens> {
//         const sh = new TBNFHighlighter();
//         render_text(document.getText());
//         const builder = new vscode.SemanticTokensBuilder();
//         for (let [scope, token] of cache) {
//             builder.push(token.line - 1, token.charPositionInLine, token.stopIndex - token.startIndex + 1, scope, 0);
//         }
//         return builder.build();
//     }
// }