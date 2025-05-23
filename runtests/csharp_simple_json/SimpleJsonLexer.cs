//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.13.2
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from ./runtests/csharp_simple_json/SimpleJson.g4 by ANTLR 4.13.2

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace SimpleJson {
using System;
using System.IO;
using System.Text;
using Antlr4.Runtime;
using Antlr4.Runtime.Atn;
using Antlr4.Runtime.Misc;
using DFA = Antlr4.Runtime.Dfa.DFA;

[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.13.2")]
[System.CLSCompliant(false)]
public partial class SimpleJsonLexer : Lexer {
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


	public SimpleJsonLexer(ICharStream input)
	: this(input, Console.Out, Console.Error) { }

	public SimpleJsonLexer(ICharStream input, TextWriter output, TextWriter errorOutput)
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

	public override string GrammarFileName { get { return "SimpleJson.g4"; } }

	public override string[] RuleNames { get { return ruleNames; } }

	public override string[] ChannelNames { get { return channelNames; } }

	public override string[] ModeNames { get { return modeNames; } }

	public override int[] SerializedAtn { get { return _serializedATN; } }

	static SimpleJsonLexer() {
		decisionToDFA = new DFA[_ATN.NumberOfDecisions];
		for (int i = 0; i < _ATN.NumberOfDecisions; i++) {
			decisionToDFA[i] = new DFA(_ATN.GetDecisionState(i), i);
		}
	}
	private static int[] _serializedATN = {
		4,0,13,91,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
		2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,0,1,
		0,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,6,1,6,1,7,1,7,
		1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,10,4,10,61,8,10,11,10,12,
		10,62,1,11,5,11,66,8,11,10,11,12,11,69,9,11,1,11,1,11,1,11,1,12,1,12,1,
		12,1,12,5,12,78,8,12,10,12,12,12,81,9,12,1,12,1,12,1,13,4,13,86,8,13,11,
		13,12,13,87,1,13,1,13,0,0,14,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,
		0,21,10,23,11,25,12,27,13,1,0,3,1,0,48,57,1,0,34,34,3,0,9,10,13,13,32,
		32,94,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,
		1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,
		0,0,25,1,0,0,0,0,27,1,0,0,0,1,29,1,0,0,0,3,31,1,0,0,0,5,33,1,0,0,0,7,38,
		1,0,0,0,9,40,1,0,0,0,11,42,1,0,0,0,13,44,1,0,0,0,15,46,1,0,0,0,17,51,1,
		0,0,0,19,57,1,0,0,0,21,60,1,0,0,0,23,67,1,0,0,0,25,73,1,0,0,0,27,85,1,
		0,0,0,29,30,5,58,0,0,30,2,1,0,0,0,31,32,5,44,0,0,32,4,1,0,0,0,33,34,5,
		110,0,0,34,35,5,117,0,0,35,36,5,108,0,0,36,37,5,108,0,0,37,6,1,0,0,0,38,
		39,5,91,0,0,39,8,1,0,0,0,40,41,5,93,0,0,41,10,1,0,0,0,42,43,5,123,0,0,
		43,12,1,0,0,0,44,45,5,125,0,0,45,14,1,0,0,0,46,47,5,116,0,0,47,48,5,114,
		0,0,48,49,5,117,0,0,49,50,5,101,0,0,50,16,1,0,0,0,51,52,5,102,0,0,52,53,
		5,97,0,0,53,54,5,108,0,0,54,55,5,115,0,0,55,56,5,101,0,0,56,18,1,0,0,0,
		57,58,7,0,0,0,58,20,1,0,0,0,59,61,3,19,9,0,60,59,1,0,0,0,61,62,1,0,0,0,
		62,60,1,0,0,0,62,63,1,0,0,0,63,22,1,0,0,0,64,66,3,19,9,0,65,64,1,0,0,0,
		66,69,1,0,0,0,67,65,1,0,0,0,67,68,1,0,0,0,68,70,1,0,0,0,69,67,1,0,0,0,
		70,71,5,46,0,0,71,72,3,21,10,0,72,24,1,0,0,0,73,79,5,34,0,0,74,75,5,92,
		0,0,75,78,9,0,0,0,76,78,8,1,0,0,77,74,1,0,0,0,77,76,1,0,0,0,78,81,1,0,
		0,0,79,77,1,0,0,0,79,80,1,0,0,0,80,82,1,0,0,0,81,79,1,0,0,0,82,83,5,34,
		0,0,83,26,1,0,0,0,84,86,7,2,0,0,85,84,1,0,0,0,86,87,1,0,0,0,87,85,1,0,
		0,0,87,88,1,0,0,0,88,89,1,0,0,0,89,90,6,13,0,0,90,28,1,0,0,0,6,0,62,67,
		77,79,87,1,0,1,0
	};

	public static readonly ATN _ATN =
		new ATNDeserializer().Deserialize(_serializedATN);


}
} // namespace SimpleJson
