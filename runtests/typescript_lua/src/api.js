"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.main = exports.parse_lua = void 0;
const parser = require("./luaParser");
const lexer = require("./luaLexer");
const antlr = require("antlr4ts");
const antlr4ts_1 = require("antlr4ts");
const readline = require("readline-sync");
class ExcErrorListener {
    syntaxError(recognizer, offendingSymbol, line, charPositionInLine, msg, e) {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}
function parse_lua(text, filename) {
    const m_InputStream = antlr.CharStreams.fromString(text);
    const m_Lexer = new lexer.luaLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new antlr4ts_1.CommonTokenStream(m_Lexer);
    const m_Parser = new parser.luaParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    var start = m_Parser.start();
    return start.result;
}
exports.parse_lua = parse_lua;
function main() {
    while (true) {
        let code = readline.question("Enter Lua code: ");
        try {
            const result = parse_lua(code, "<repl>");
            console.dir(result, { depth: 5 });
        }
        catch (e) {
            if (e instanceof Error) {
                console.log(e.message);
            }
            else {
                console.log(e);
            }
        }
    }
}
exports.main = main;
//# sourceMappingURL=api.js.map