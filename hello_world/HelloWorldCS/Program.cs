namespace JsonCS;

using Antlr4.Runtime;

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

public partial class JsonCSParser
{
    public static Json Parse(string s)
    {
        ICharStream stream = CharStreams.fromString(s);
        var lexer = new JsonCSLexer(stream);
        lexer.RemoveErrorListeners();
        lexer.AddErrorListener(new LexerErrorListener());
        ITokenStream tokens = new CommonTokenStream(lexer);
        var parser = new JsonCSParser(tokens);
        parser.RemoveErrorListeners();
        parser.AddErrorListener(new ExcErrorListener());
        parser.BuildParseTree = false;
        var result = parser.start().result;
        return result;
    }
}


public static class Program
{
    public static void Main(string[] args)
    {
        var json = JsonCSParser.Parse("{\"name\": \"John\", \"age\": 30, \"city\": \"New York\"}");
        Console.WriteLine(json);
    }
}
