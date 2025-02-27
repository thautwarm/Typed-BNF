using System.IO;
using Antlr4.Runtime;

namespace Lua;

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
