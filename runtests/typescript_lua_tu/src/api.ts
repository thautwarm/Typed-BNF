import * as ctor from './LuaConstructor'
import * as parser from './LuaParser'
import * as lexer from './LuaLexer'
import * as antlr from "antlr4ng"
import { CommonTokenStream } from "antlr4ng";
import * as readline from 'readline-sync';

class ExcErrorListener extends antlr.BaseErrorListener {
    syntaxError(recognizer: antlr.Recognizer<any>, offendingSymbol: any, line: number, charPositionInLine: number, msg: string, e: antlr.RecognitionException | undefined)
    {
        throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
    }
}

export function parse_lua(text: string, filename: string) {
    const m_InputStream = antlr.CharStream.fromString(text);
    const m_Lexer = new lexer.LuaLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new CommonTokenStream(m_Lexer);
    const m_Parser = new parser.LuaParser(m_tokenStream);
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
