import * as antlr from 'antlr4ng';
import * as vscode from 'vscode';
import { clearRenderCache, getDefCache, getRenderCache, TokenType } from './TBNFRequire';
import { TBNFLexer } from './TBNFLexer';
import { TBNFParser } from './TBNFParser';

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

let _syntaxInfoCache: [string, [TokenType, antlr.Token][], Map<string, antlr.Token>] | undefined = undefined

class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(recognizer: antlr.Recognizer<any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | null) {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}

function renderText(text: string) {
    if (_syntaxInfoCache && _syntaxInfoCache[0] === text) {
        return;
    }
    const m_InputStream = antlr.CharStream.fromString(text);
    const m_Lexer = new TBNFLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new antlr.CommonTokenStream(m_Lexer);
    const m_Parser = new TBNFParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    m_Parser.buildParseTrees = false;
    try {
        m_Parser.start();
        _syntaxInfoCache = [text, getRenderCache(), getDefCache()];
    }
    catch {
        // do nothing and reuse the latest cache
    }

}


export class TBNFSemanticTokensProvider implements vscode.DocumentSemanticTokensProvider {
    async provideDocumentSemanticTokens(document: vscode.TextDocument, _: vscode.CancellationToken): Promise<vscode.SemanticTokens> {
        clearRenderCache();
        _syntaxInfoCache = undefined;
        renderText(document.getText());
        const cache = getRenderCache();
        const builder = new vscode.SemanticTokensBuilder();
        for (let [scope, token] of cache) {
            builder.push(token.line - 1, token.column, token.stop - token.start + 1, scope, 0);
        }
        return builder.build();
    }
}

export class TBNFDefinitionProvider implements vscode.DefinitionProvider {
    public provideDefinition(
        document: vscode.TextDocument,
        position: vscode.Position,
        token: vscode.CancellationToken
    ): vscode.ProviderResult<vscode.Definition | vscode.LocationLink[]> {
        if (_syntaxInfoCache === undefined) {
            renderText(document.getText());
            const renderCache = getRenderCache();
            const defCache = getDefCache();
            _syntaxInfoCache = [document.getText(), renderCache, defCache];
        }

        const [, , defCache] = _syntaxInfoCache;

        // Get the word at the current position
        const wordRange = document.getWordRangeAtPosition(position);
        if (!wordRange) return null;

        const word = document.getText(wordRange);

        for (const scope of [TokenType.LEX_IDENT, TokenType.RULE_IDENT, TokenType.MACRO_IDENT]) {
            const key = word + '|' + scope;
            const defToken = defCache.get(key);
            if (defToken) {
                return new vscode.Location(
                    document.uri,
                    new vscode.Range(
                        defToken.line - 1, defToken.column,
                        defToken.line - 1, defToken.column + defToken.stop - defToken.start + 1
                    )
                )
            }
        }

        return null;
    }
}

const kindsWithReferences = [
    TokenType.LEX_IDENT,
    TokenType.RULE_IDENT,
    TokenType.MACRO_IDENT
]

export class TBNFReferenceProvider implements vscode.ReferenceProvider {
    public provideReferences(
        document: vscode.TextDocument,
        position: vscode.Position,
        context: vscode.ReferenceContext,
        token: vscode.CancellationToken
    ): vscode.ProviderResult<vscode.Location[]> {
        if (_syntaxInfoCache === undefined) {
            renderText(document.getText());
            const renderCache = getRenderCache();
            const defCache = getDefCache();
            _syntaxInfoCache = [document.getText(), renderCache, defCache];
        }

        const [text, renderCache, defCache] = _syntaxInfoCache;

        // Get the word at the current position
        const wordRange = document.getWordRangeAtPosition(position);
        if (!wordRange) return null;
        // TODO: resolve symbol kind with interval trees or something

        let word = document.getText(wordRange);
        const references: vscode.Location[] = [];

        // Find all references to the word in renderCache
        for (const [scope, token] of renderCache) {
            if (!kindsWithReferences.includes(scope)) {
                continue;
            }
            if (token.text === word) {
                references.push(
                    new vscode.Location(
                        document.uri,
                        new vscode.Range(
                            token.line - 1, token.column,
                            token.line - 1, token.column + token.stop - token.start + 1
                        )
                    )
                );
            }
        }

        return references;
    }
}

export class TBNFSymbolProvider implements vscode.DocumentSymbolProvider {
    public provideDocumentSymbols(document: vscode.TextDocument, token: vscode.CancellationToken): vscode.ProviderResult<vscode.DocumentSymbol[]> {
        if (_syntaxInfoCache === undefined) {
            renderText(document.getText());
            const renderCache = getRenderCache();
            const defCache = getDefCache();
            _syntaxInfoCache = [document.getText(), renderCache, defCache];
        }
        const [, , defCache] = _syntaxInfoCache;
        const symbols = new Array<vscode.DocumentSymbol>();

        for (let [key, token] of defCache.entries()) {
            let [text, scope_] = key.split('|');
            let scope = parseInt(scope_);

            if (kindsWithReferences.includes(scope)) {
                symbols.push(new vscode.DocumentSymbol(
                    text,
                    "",
                    vscode.SymbolKind.Variable,
                    new vscode.Range(token.line - 1, token.column, token.line - 1, token.column + token.stop - token.start + 1),
                    new vscode.Range(token.line - 1, token.column, token.line - 1, token.column + token.stop - token.start + 1)
                ));

            }
        }

        return symbols;
    }
}

