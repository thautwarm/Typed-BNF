import * as ctor from './lua-constructor'
import * as parser from './luaParser'
import * as lexer from './luaLexer'
import * as antlr from "antlr4ts"
import { CommonTokenStream } from "antlr4ts";
import * as readline from 'readline-sync';

class ExcErrorListener implements antlr.ANTLRErrorListener<any> {
    syntaxError(recognizer: antlr.Recognizer<any, any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | undefined)
    {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}

export function parse_lua(text: string, filename: string) {
    const m_InputStream = antlr.CharStreams.fromString(text);
    const m_Lexer = new lexer.luaLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new CommonTokenStream(m_Lexer);
    const m_Parser = new parser.luaParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    var start = m_Parser.start();
    return start.result;
}

export function main()
{
    while (true)
    {
        let code = readline.question("Enter Lua code: ");
        try
        {
            const result = parse_lua(code, "<repl>");
            console.dir(result, { depth: 5 });
        }
        catch (e)
        {
            if (e instanceof Error) 
            {
                console.log(e.message);
            }
            else
            {
                console.log(e);
            }

        }
        
    }
}
