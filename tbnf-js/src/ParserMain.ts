import * as api from "./TypedBNF-require";
import * as lexer from "./TypedBNFLexer";
import * as parser from "./TypedBNFParser";
import * as antlr from "antlr4ng";
import { CommonTokenStream } from "antlr4ng";

class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(
        recognizer: antlr.Recognizer<any>,
        offendingSymbol: any,
        line: number,
        charPositionInLine: number,
        msg: string,
        e: antlr.RecognitionException | undefined,
    ) {
        throw new SyntaxError(
            "Syntax error at line " + line + ":" + charPositionInLine + ": " +
                msg,
        );
    }
}

export function parse_tbnf(text: string, filename: string) {
    var fname = api.getfilename();
    try {
        api.setfilename(filename);
        const m_InputStream = antlr.CharStream.fromString(text);
        const m_Lexer = new lexer.TypedBNFLexer(m_InputStream);
        m_Lexer.removeErrorListeners();
        m_Lexer.addErrorListener(new ExcErrorListener());
        const m_tokenStream = new CommonTokenStream(m_Lexer);
        const m_Parser = new parser.TypedBNFParser(m_tokenStream);
        m_Parser.removeErrorListeners();
        m_Parser.buildParseTrees = false;
        m_Parser.addErrorListener(new ExcErrorListener());
        var start = m_Parser.start();
        return start.result;
    } finally {
        api.setfilename(fname);
    }
}
