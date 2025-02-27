using System.IO;
using Antlr4.Runtime;

namespace TypedBNF;

sealed class SyntaxError : System.Exception
{
    public int Line { get; }
    public int Column { get; }
    public SyntaxError(string message, int line, int column) : base(message)
    {
        Line = line;
        Column = column;
    }
}

class ExcErrorListener : BaseErrorListener
{
    public override void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        throw new SyntaxError(
            "Syntax error at line " + line + ":" + charPositionInLine + ": " + msg,
            line,
            charPositionInLine
        );
    }
}

class LexerErrorListener : IAntlrErrorListener<int>
{
    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        throw new SyntaxError(msg, line, charPositionInLine);
    }
}


public partial class TypedBNFParser
{
    public static definition[] ParseTBNF(
        string text,
        string filename
    )
    {
        var inputStream = new CodePointCharStream(text)
        {
            name = filename
        };
        var lexer = new TypedBNFLexer(inputStream);
        lexer.RemoveErrorListeners();
        lexer.AddErrorListener(new LexerErrorListener());

        var tokenStream = new CommonTokenStream(lexer);
        var parser = new TypedBNFParser(tokenStream);
        parser.RemoveErrorListeners();
        parser.AddErrorListener(new ExcErrorListener());
        parser.BuildParseTree = false;

        var start = parser.start();
        return start.result;
    }
}