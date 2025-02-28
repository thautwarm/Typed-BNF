import * as antlr from "antlr4ng";
import { JsonParser } from "./grammar/JsonParser";
import { JsonLexer } from "./grammar/JsonLexer";
import { CommonTokenStream } from "antlr4ng";

class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(recognizer: antlr.Recognizer<any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | null) {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}

export function parseJson(text: string) {
    const m_InputStream = antlr.CharStream.fromString(text);
    const m_Lexer = new JsonLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new CommonTokenStream(m_Lexer);
    const m_Parser = new JsonParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    m_Parser.buildParseTrees = false;
    var start = m_Parser.start();
    return start.result;
}

console.log(parseJson(`{"name": "John", "age": 30, "city": "New York"}`));
