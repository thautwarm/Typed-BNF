"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.parse_lua = parse_lua;
exports.main = main;
const parser = require("./LuaParser");
const lexer = require("./LuaLexer");
const antlr = require("antlr4ng");
const antlr4ng_1 = require("antlr4ng");
const readline = require("readline-sync");
class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(recognizer, offendingSymbol, line, charPositionInLine, msg, e) {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}
function parse_lua(text, filename) {
    const m_InputStream = antlr.CharStream.fromString(text);
    const m_Lexer = new lexer.LuaLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new antlr4ng_1.CommonTokenStream(m_Lexer);
    const m_Parser = new parser.LuaParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    var start = m_Parser.start();
    return start.result;
}
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
//# sourceMappingURL=api.js.map