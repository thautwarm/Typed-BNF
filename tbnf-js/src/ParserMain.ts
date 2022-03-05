import * as api from "./TypedBNF_require"
import * as lexer from "./TypedBNFLexer"
import * as parser from "./TypedBNFParser"
import * as antlr from "antlr4ts"
import { CommonTokenStream } from "antlr4ts";

class ExcErrorListener implements antlr.ANTLRErrorListener<any> {
    syntaxError(recognizer: antlr.Recognizer<any, any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | undefined)
    {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}


export function parse_tbnf(text: string, filename: string) {
    var fname = api.getfilename();
    try {
        api.setfilename(filename);
        const m_InputStream = antlr.CharStreams.fromString(text);
        const m_Lexer = new lexer.TypedBNFLexer(m_InputStream);
        m_Lexer.removeErrorListeners();
        m_Lexer.addErrorListener(new ExcErrorListener());
        const m_tokenStream = new CommonTokenStream(m_Lexer);
        const m_Parser = new parser.TypedBNFParser(m_tokenStream);
        m_Parser.removeErrorListeners();
        m_Parser.addErrorListener(new ExcErrorListener());
        var start = m_Parser.start();
        return start.result;
    }
    finally
    {
        api.setfilename(fname);
    }
}