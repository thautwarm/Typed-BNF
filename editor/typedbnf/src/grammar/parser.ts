import * as ctor from './TBNFConstructor'
import { TBNFParser } from './TBNFParser'
import { TBNFLexer } from './TBNFLexer'
import * as antlr from "antlr4ng"
import { CommonTokenStream } from "antlr4ng";

class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(recognizer: antlr.Recognizer<any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | null) {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}

function parseTBNF(text: string) {
    const m_InputStream = antlr.CharStream.fromString(text);
    const m_Lexer = new TBNFLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new CommonTokenStream(m_Lexer);
    const m_Parser = new TBNFParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    var start = m_Parser.start();
    return start.result;
}


export { parseTBNF };