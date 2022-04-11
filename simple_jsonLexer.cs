//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.9.3
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from ./runtests/csharp_simple_json/simple_json.g4 by ANTLR 4.9.3

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace simple_json {
using System;
using System.IO;
using System.Text;
using Antlr4.Runtime;
using Antlr4.Runtime.Atn;
using Antlr4.Runtime.Misc;
using DFA = Antlr4.Runtime.Dfa.DFA;

[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.9.3")]
[System.CLSCompliant(false)]
public partial class simple_jsonLexer : Lexer {
	protected static DFA[] decisionToDFA;
	protected static PredictionContextCache sharedContextCache = new PredictionContextCache();
	public const int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		INT=10, FLOAT=11, STR=12, SPACE=13;
	public static string[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static string[] modeNames = {
		"DEFAULT_MODE"
	};

	public static readonly string[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"DIGIT", "INT", "FLOAT", "STR", "SPACE"
	};


	public static JsonPair JsonPair (string name,JsonValue value)
	{
	    return (JsonPair) new JsonPair(name,value);
	}
	public static JsonValue JStr (string value)
	{
	    return (JsonValue) new JStr(value);
	}
	public static JsonValue JNull ()
	{
	    return (JsonValue) new JNull();
	}
	public static JsonValue JList (MyList<JsonValue> elements)
	{
	    return (JsonValue) new JList(elements);
	}
	public static JsonValue JInt (int value)
	{
	    return (JsonValue) new JInt(value);
	}
	public static JsonValue JFlt (float value)
	{
	    return (JsonValue) new JFlt(value);
	}
	public static JsonValue JDict (MyList<JsonPair> value)
	{
	    return (JsonValue) new JDict(value);
	}
	public static JsonValue JBool (bool value)
	{
	    return (JsonValue) new JBool(value);
	}


	public simple_jsonLexer(ICharStream input)
	: this(input, Console.Out, Console.Error) { }

	public simple_jsonLexer(ICharStream input, TextWriter output, TextWriter errorOutput)
	: base(input, output, errorOutput)
	{
		Interpreter = new LexerATNSimulator(this, _ATN, decisionToDFA, sharedContextCache);
	}

	private static readonly string[] _LiteralNames = {
		null, "':'", "','", "'null'", "'['", "']'", "'{'", "'}'", "'true'", "'false'"
	};
	private static readonly string[] _SymbolicNames = {
		null, null, null, null, null, null, null, null, null, null, "INT", "FLOAT", 
		"STR", "SPACE"
	};
	public static readonly IVocabulary DefaultVocabulary = new Vocabulary(_LiteralNames, _SymbolicNames);

	[NotNull]
	public override IVocabulary Vocabulary
	{
		get
		{
			return DefaultVocabulary;
		}
	}

	public override string GrammarFileName { get { return "simple_json.g4"; } }

	public override string[] RuleNames { get { return ruleNames; } }

	public override string[] ChannelNames { get { return channelNames; } }

	public override string[] ModeNames { get { return modeNames; } }

	public override string SerializedAtn { get { return new string(_serializedATN); } }

	static simple_jsonLexer() {
		decisionToDFA = new DFA[_ATN.NumberOfDecisions];
		for (int i = 0; i < _ATN.NumberOfDecisions; i++) {
			decisionToDFA[i] = new DFA(_ATN.GetDecisionState(i), i);
		}
	}
	private static char[] _serializedATN = {
		'\x3', '\x608B', '\xA72A', '\x8133', '\xB9ED', '\x417C', '\x3BE7', '\x7786', 
		'\x5964', '\x2', '\xF', ']', '\b', '\x1', '\x4', '\x2', '\t', '\x2', '\x4', 
		'\x3', '\t', '\x3', '\x4', '\x4', '\t', '\x4', '\x4', '\x5', '\t', '\x5', 
		'\x4', '\x6', '\t', '\x6', '\x4', '\a', '\t', '\a', '\x4', '\b', '\t', 
		'\b', '\x4', '\t', '\t', '\t', '\x4', '\n', '\t', '\n', '\x4', '\v', '\t', 
		'\v', '\x4', '\f', '\t', '\f', '\x4', '\r', '\t', '\r', '\x4', '\xE', 
		'\t', '\xE', '\x4', '\xF', '\t', '\xF', '\x3', '\x2', '\x3', '\x2', '\x3', 
		'\x3', '\x3', '\x3', '\x3', '\x4', '\x3', '\x4', '\x3', '\x4', '\x3', 
		'\x4', '\x3', '\x4', '\x3', '\x5', '\x3', '\x5', '\x3', '\x6', '\x3', 
		'\x6', '\x3', '\a', '\x3', '\a', '\x3', '\b', '\x3', '\b', '\x3', '\t', 
		'\x3', '\t', '\x3', '\t', '\x3', '\t', '\x3', '\t', '\x3', '\n', '\x3', 
		'\n', '\x3', '\n', '\x3', '\n', '\x3', '\n', '\x3', '\n', '\x3', '\v', 
		'\x3', '\v', '\x3', '\f', '\x6', '\f', '?', '\n', '\f', '\r', '\f', '\xE', 
		'\f', '@', '\x3', '\r', '\a', '\r', '\x44', '\n', '\r', '\f', '\r', '\xE', 
		'\r', 'G', '\v', '\r', '\x3', '\r', '\x3', '\r', '\x3', '\r', '\x3', '\xE', 
		'\x3', '\xE', '\x3', '\xE', '\x3', '\xE', '\a', '\xE', 'P', '\n', '\xE', 
		'\f', '\xE', '\xE', '\xE', 'S', '\v', '\xE', '\x3', '\xE', '\x3', '\xE', 
		'\x3', '\xF', '\x6', '\xF', 'X', '\n', '\xF', '\r', '\xF', '\xE', '\xF', 
		'Y', '\x3', '\xF', '\x3', '\xF', '\x2', '\x2', '\x10', '\x3', '\x3', '\x5', 
		'\x4', '\a', '\x5', '\t', '\x6', '\v', '\a', '\r', '\b', '\xF', '\t', 
		'\x11', '\n', '\x13', '\v', '\x15', '\x2', '\x17', '\f', '\x19', '\r', 
		'\x1B', '\xE', '\x1D', '\xF', '\x3', '\x2', '\x5', '\x3', '\x2', '\x32', 
		';', '\x3', '\x2', '$', '$', '\x5', '\x2', '\v', '\f', '\xF', '\xF', '\"', 
		'\"', '\x2', '`', '\x2', '\x3', '\x3', '\x2', '\x2', '\x2', '\x2', '\x5', 
		'\x3', '\x2', '\x2', '\x2', '\x2', '\a', '\x3', '\x2', '\x2', '\x2', '\x2', 
		'\t', '\x3', '\x2', '\x2', '\x2', '\x2', '\v', '\x3', '\x2', '\x2', '\x2', 
		'\x2', '\r', '\x3', '\x2', '\x2', '\x2', '\x2', '\xF', '\x3', '\x2', '\x2', 
		'\x2', '\x2', '\x11', '\x3', '\x2', '\x2', '\x2', '\x2', '\x13', '\x3', 
		'\x2', '\x2', '\x2', '\x2', '\x17', '\x3', '\x2', '\x2', '\x2', '\x2', 
		'\x19', '\x3', '\x2', '\x2', '\x2', '\x2', '\x1B', '\x3', '\x2', '\x2', 
		'\x2', '\x2', '\x1D', '\x3', '\x2', '\x2', '\x2', '\x3', '\x1F', '\x3', 
		'\x2', '\x2', '\x2', '\x5', '!', '\x3', '\x2', '\x2', '\x2', '\a', '#', 
		'\x3', '\x2', '\x2', '\x2', '\t', '(', '\x3', '\x2', '\x2', '\x2', '\v', 
		'*', '\x3', '\x2', '\x2', '\x2', '\r', ',', '\x3', '\x2', '\x2', '\x2', 
		'\xF', '.', '\x3', '\x2', '\x2', '\x2', '\x11', '\x30', '\x3', '\x2', 
		'\x2', '\x2', '\x13', '\x35', '\x3', '\x2', '\x2', '\x2', '\x15', ';', 
		'\x3', '\x2', '\x2', '\x2', '\x17', '>', '\x3', '\x2', '\x2', '\x2', '\x19', 
		'\x45', '\x3', '\x2', '\x2', '\x2', '\x1B', 'K', '\x3', '\x2', '\x2', 
		'\x2', '\x1D', 'W', '\x3', '\x2', '\x2', '\x2', '\x1F', ' ', '\a', '<', 
		'\x2', '\x2', ' ', '\x4', '\x3', '\x2', '\x2', '\x2', '!', '\"', '\a', 
		'.', '\x2', '\x2', '\"', '\x6', '\x3', '\x2', '\x2', '\x2', '#', '$', 
		'\a', 'p', '\x2', '\x2', '$', '%', '\a', 'w', '\x2', '\x2', '%', '&', 
		'\a', 'n', '\x2', '\x2', '&', '\'', '\a', 'n', '\x2', '\x2', '\'', '\b', 
		'\x3', '\x2', '\x2', '\x2', '(', ')', '\a', ']', '\x2', '\x2', ')', '\n', 
		'\x3', '\x2', '\x2', '\x2', '*', '+', '\a', '_', '\x2', '\x2', '+', '\f', 
		'\x3', '\x2', '\x2', '\x2', ',', '-', '\a', '}', '\x2', '\x2', '-', '\xE', 
		'\x3', '\x2', '\x2', '\x2', '.', '/', '\a', '\x7F', '\x2', '\x2', '/', 
		'\x10', '\x3', '\x2', '\x2', '\x2', '\x30', '\x31', '\a', 'v', '\x2', 
		'\x2', '\x31', '\x32', '\a', 't', '\x2', '\x2', '\x32', '\x33', '\a', 
		'w', '\x2', '\x2', '\x33', '\x34', '\a', 'g', '\x2', '\x2', '\x34', '\x12', 
		'\x3', '\x2', '\x2', '\x2', '\x35', '\x36', '\a', 'h', '\x2', '\x2', '\x36', 
		'\x37', '\a', '\x63', '\x2', '\x2', '\x37', '\x38', '\a', 'n', '\x2', 
		'\x2', '\x38', '\x39', '\a', 'u', '\x2', '\x2', '\x39', ':', '\a', 'g', 
		'\x2', '\x2', ':', '\x14', '\x3', '\x2', '\x2', '\x2', ';', '<', '\t', 
		'\x2', '\x2', '\x2', '<', '\x16', '\x3', '\x2', '\x2', '\x2', '=', '?', 
		'\x5', '\x15', '\v', '\x2', '>', '=', '\x3', '\x2', '\x2', '\x2', '?', 
		'@', '\x3', '\x2', '\x2', '\x2', '@', '>', '\x3', '\x2', '\x2', '\x2', 
		'@', '\x41', '\x3', '\x2', '\x2', '\x2', '\x41', '\x18', '\x3', '\x2', 
		'\x2', '\x2', '\x42', '\x44', '\x5', '\x15', '\v', '\x2', '\x43', '\x42', 
		'\x3', '\x2', '\x2', '\x2', '\x44', 'G', '\x3', '\x2', '\x2', '\x2', '\x45', 
		'\x43', '\x3', '\x2', '\x2', '\x2', '\x45', '\x46', '\x3', '\x2', '\x2', 
		'\x2', '\x46', 'H', '\x3', '\x2', '\x2', '\x2', 'G', '\x45', '\x3', '\x2', 
		'\x2', '\x2', 'H', 'I', '\a', '\x30', '\x2', '\x2', 'I', 'J', '\x5', '\x17', 
		'\f', '\x2', 'J', '\x1A', '\x3', '\x2', '\x2', '\x2', 'K', 'Q', '\a', 
		'$', '\x2', '\x2', 'L', 'M', '\a', '^', '\x2', '\x2', 'M', 'P', '\v', 
		'\x2', '\x2', '\x2', 'N', 'P', '\n', '\x3', '\x2', '\x2', 'O', 'L', '\x3', 
		'\x2', '\x2', '\x2', 'O', 'N', '\x3', '\x2', '\x2', '\x2', 'P', 'S', '\x3', 
		'\x2', '\x2', '\x2', 'Q', 'O', '\x3', '\x2', '\x2', '\x2', 'Q', 'R', '\x3', 
		'\x2', '\x2', '\x2', 'R', 'T', '\x3', '\x2', '\x2', '\x2', 'S', 'Q', '\x3', 
		'\x2', '\x2', '\x2', 'T', 'U', '\a', '$', '\x2', '\x2', 'U', '\x1C', '\x3', 
		'\x2', '\x2', '\x2', 'V', 'X', '\t', '\x4', '\x2', '\x2', 'W', 'V', '\x3', 
		'\x2', '\x2', '\x2', 'X', 'Y', '\x3', '\x2', '\x2', '\x2', 'Y', 'W', '\x3', 
		'\x2', '\x2', '\x2', 'Y', 'Z', '\x3', '\x2', '\x2', '\x2', 'Z', '[', '\x3', 
		'\x2', '\x2', '\x2', '[', '\\', '\b', '\xF', '\x2', '\x2', '\\', '\x1E', 
		'\x3', '\x2', '\x2', '\x2', '\b', '\x2', '@', '\x45', 'O', 'Q', 'Y', '\x3', 
		'\x2', '\x3', '\x2',
	};

	public static readonly ATN _ATN =
		new ATNDeserializer().Deserialize(_serializedATN);


}
} // namespace simple_json
