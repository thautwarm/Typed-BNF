//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.13.2
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from ./CLI/Grammar/TypedBNF.g4 by ANTLR 4.13.2

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace TypedBNF {
using System;
using System.IO;
using System.Text;
using Antlr4.Runtime;
using Antlr4.Runtime.Atn;
using Antlr4.Runtime.Misc;
using DFA = Antlr4.Runtime.Dfa.DFA;

[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.13.2")]
[System.CLSCompliant(false)]
public partial class TypedBNFLexer : Lexer {
	protected static DFA[] decisionToDFA;
	protected static PredictionContextCache sharedContextCache = new PredictionContextCache();
	public const int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, UNICODE_RANGE=33, RANGE=34, CNAMEPLUS=35, INT=36, WS=37, FLOAT=38, 
		ESCAPED_STRING=39, CPP_COMMENT=40, C_COMMENT=41;
	public static string[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static string[] modeNames = {
		"DEFAULT_MODE"
	};

	public static readonly string[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", "T__24", 
		"T__25", "T__26", "T__27", "T__28", "T__29", "T__30", "T__31", "UCODE", 
		"UNICODE", "UNICODE_RANGE", "RANGE", "LCASE_LETTER", "UCASE_LETTER", "LETTER", 
		"WORD", "CNAMEPLUS", "INT", "DIGIT", "WS", "FLOAT", "ESC1", "ESC2", "ESCAPED_STRING", 
		"CPP_COMMENT", "C_COMMENT"
	};


	public TypedBNFLexer(ICharStream input)
	: this(input, Console.Out, Console.Error) { }

	public TypedBNFLexer(ICharStream input, TextWriter output, TextWriter errorOutput)
	: base(input, output, errorOutput)
	{
		Interpreter = new LexerATNSimulator(this, _ATN, decisionToDFA, sharedContextCache);
	}

	private static readonly string[] _LiteralNames = {
		null, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "':'", "'extern'", 
		"'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", "'let'", 
		"'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", "'false'", 
		"'+'", "'?'", "'!'", "'\\d'", "'_'"
	};
	private static readonly string[] _SymbolicNames = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, "UNICODE_RANGE", 
		"RANGE", "CNAMEPLUS", "INT", "WS", "FLOAT", "ESCAPED_STRING", "CPP_COMMENT", 
		"C_COMMENT"
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

	public override string GrammarFileName { get { return "TypedBNF.g4"; } }

	public override string[] RuleNames { get { return ruleNames; } }

	public override string[] ChannelNames { get { return channelNames; } }

	public override string[] ModeNames { get { return modeNames; } }

	public override int[] SerializedAtn { get { return _serializedATN; } }

	static TypedBNFLexer() {
		decisionToDFA = new DFA[_ATN.NumberOfDecisions];
		for (int i = 0; i < _ATN.NumberOfDecisions; i++) {
			decisionToDFA[i] = new DFA(_ATN.GetDecisionState(i), i);
		}
	}
	private static int[] _serializedATN = {
		4,0,41,316,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
		6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
		7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
		7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
		7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
		7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
		7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,
		7,49,1,0,1,0,1,1,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,6,1,6,1,7,1,
		7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,
		1,11,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,13,1,13,
		1,14,1,14,1,15,1,15,1,16,1,16,1,16,1,16,1,17,1,17,1,18,1,18,1,18,1,19,
		1,19,1,19,1,19,1,20,1,20,1,21,1,21,1,22,1,22,1,23,1,23,1,24,1,24,1,25,
		1,25,1,25,1,25,1,25,1,26,1,26,1,26,1,26,1,26,1,26,1,27,1,27,1,28,1,28,
		1,29,1,29,1,30,1,30,1,30,1,31,1,31,1,32,1,32,3,32,200,8,32,1,33,1,33,1,
		33,1,33,1,33,1,33,1,33,1,34,1,34,1,34,1,34,1,34,1,34,1,35,1,35,1,35,1,
		35,1,35,1,35,1,36,1,36,1,37,1,37,1,38,1,38,3,38,227,8,38,1,39,4,39,230,
		8,39,11,39,12,39,231,1,40,1,40,3,40,236,8,40,1,40,1,40,1,40,5,40,241,8,
		40,10,40,12,40,244,9,40,1,41,4,41,247,8,41,11,41,12,41,248,1,42,1,42,1,
		43,1,43,1,43,1,43,1,44,1,44,1,44,3,44,260,8,44,1,44,1,44,3,44,264,8,44,
		1,45,1,45,1,46,1,46,1,47,1,47,1,47,1,47,5,47,274,8,47,10,47,12,47,277,
		9,47,1,47,1,47,1,47,1,47,1,47,5,47,284,8,47,10,47,12,47,287,9,47,1,47,
		3,47,290,8,47,1,48,1,48,1,48,1,48,5,48,296,8,48,10,48,12,48,299,9,48,1,
		48,1,48,1,48,1,48,1,48,1,49,1,49,1,49,1,49,5,49,310,8,49,10,49,12,49,313,
		9,49,1,49,1,49,1,297,0,50,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,
		21,11,23,12,25,13,27,14,29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,
		45,23,47,24,49,25,51,26,53,27,55,28,57,29,59,30,61,31,63,32,65,0,67,0,
		69,33,71,34,73,0,75,0,77,0,79,0,81,35,83,36,85,0,87,37,89,38,91,0,93,0,
		95,39,97,40,99,41,1,0,12,2,0,65,70,97,102,1,0,97,122,1,0,65,90,2,0,45,
		45,95,95,1,0,48,57,3,0,9,10,13,13,32,32,2,0,69,69,101,101,6,0,34,34,92,
		92,97,98,110,110,114,114,116,116,6,0,39,39,92,92,97,98,110,110,114,114,
		116,116,2,0,34,34,92,92,2,0,39,39,92,92,1,0,10,10,323,0,1,1,0,0,0,0,3,
		1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,
		0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,
		1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,0,0,31,1,0,0,0,0,33,1,0,0,0,0,35,1,0,0,
		0,0,37,1,0,0,0,0,39,1,0,0,0,0,41,1,0,0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,
		1,0,0,0,0,49,1,0,0,0,0,51,1,0,0,0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,
		0,0,59,1,0,0,0,0,61,1,0,0,0,0,63,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,0,81,
		1,0,0,0,0,83,1,0,0,0,0,87,1,0,0,0,0,89,1,0,0,0,0,95,1,0,0,0,0,97,1,0,0,
		0,0,99,1,0,0,0,1,101,1,0,0,0,3,103,1,0,0,0,5,106,1,0,0,0,7,108,1,0,0,0,
		9,110,1,0,0,0,11,112,1,0,0,0,13,114,1,0,0,0,15,116,1,0,0,0,17,118,1,0,
		0,0,19,125,1,0,0,0,21,129,1,0,0,0,23,134,1,0,0,0,25,139,1,0,0,0,27,146,
		1,0,0,0,29,148,1,0,0,0,31,150,1,0,0,0,33,152,1,0,0,0,35,156,1,0,0,0,37,
		158,1,0,0,0,39,161,1,0,0,0,41,165,1,0,0,0,43,167,1,0,0,0,45,169,1,0,0,
		0,47,171,1,0,0,0,49,173,1,0,0,0,51,175,1,0,0,0,53,180,1,0,0,0,55,186,1,
		0,0,0,57,188,1,0,0,0,59,190,1,0,0,0,61,192,1,0,0,0,63,195,1,0,0,0,65,199,
		1,0,0,0,67,201,1,0,0,0,69,208,1,0,0,0,71,214,1,0,0,0,73,220,1,0,0,0,75,
		222,1,0,0,0,77,226,1,0,0,0,79,229,1,0,0,0,81,235,1,0,0,0,83,246,1,0,0,
		0,85,250,1,0,0,0,87,252,1,0,0,0,89,256,1,0,0,0,91,265,1,0,0,0,93,267,1,
		0,0,0,95,289,1,0,0,0,97,291,1,0,0,0,99,305,1,0,0,0,101,102,5,44,0,0,102,
		2,1,0,0,0,103,104,5,45,0,0,104,105,5,62,0,0,105,4,1,0,0,0,106,107,5,40,
		0,0,107,6,1,0,0,0,108,109,5,41,0,0,109,8,1,0,0,0,110,111,5,60,0,0,111,
		10,1,0,0,0,112,113,5,62,0,0,113,12,1,0,0,0,114,115,5,42,0,0,115,14,1,0,
		0,0,116,117,5,58,0,0,117,16,1,0,0,0,118,119,5,101,0,0,119,120,5,120,0,
		0,120,121,5,116,0,0,121,122,5,101,0,0,122,123,5,114,0,0,123,124,5,110,
		0,0,124,18,1,0,0,0,125,126,5,118,0,0,126,127,5,97,0,0,127,128,5,114,0,
		0,128,20,1,0,0,0,129,130,5,99,0,0,130,131,5,97,0,0,131,132,5,115,0,0,132,
		133,5,101,0,0,133,22,1,0,0,0,134,135,5,116,0,0,135,136,5,121,0,0,136,137,
		5,112,0,0,137,138,5,101,0,0,138,24,1,0,0,0,139,140,5,105,0,0,140,141,5,
		103,0,0,141,142,5,110,0,0,142,143,5,111,0,0,143,144,5,114,0,0,144,145,
		5,101,0,0,145,26,1,0,0,0,146,147,5,124,0,0,147,28,1,0,0,0,148,149,5,123,
		0,0,149,30,1,0,0,0,150,151,5,125,0,0,151,32,1,0,0,0,152,153,5,108,0,0,
		153,154,5,101,0,0,154,155,5,116,0,0,155,34,1,0,0,0,156,157,5,61,0,0,157,
		36,1,0,0,0,158,159,5,105,0,0,159,160,5,110,0,0,160,38,1,0,0,0,161,162,
		5,102,0,0,162,163,5,117,0,0,163,164,5,110,0,0,164,40,1,0,0,0,165,166,5,
		59,0,0,166,42,1,0,0,0,167,168,5,36,0,0,168,44,1,0,0,0,169,170,5,91,0,0,
		170,46,1,0,0,0,171,172,5,93,0,0,172,48,1,0,0,0,173,174,5,46,0,0,174,50,
		1,0,0,0,175,176,5,116,0,0,176,177,5,114,0,0,177,178,5,117,0,0,178,179,
		5,101,0,0,179,52,1,0,0,0,180,181,5,102,0,0,181,182,5,97,0,0,182,183,5,
		108,0,0,183,184,5,115,0,0,184,185,5,101,0,0,185,54,1,0,0,0,186,187,5,43,
		0,0,187,56,1,0,0,0,188,189,5,63,0,0,189,58,1,0,0,0,190,191,5,33,0,0,191,
		60,1,0,0,0,192,193,5,92,0,0,193,194,5,100,0,0,194,62,1,0,0,0,195,196,5,
		95,0,0,196,64,1,0,0,0,197,200,3,85,42,0,198,200,7,0,0,0,199,197,1,0,0,
		0,199,198,1,0,0,0,200,66,1,0,0,0,201,202,5,92,0,0,202,203,5,117,0,0,203,
		204,3,65,32,0,204,205,3,65,32,0,205,206,3,65,32,0,206,207,3,65,32,0,207,
		68,1,0,0,0,208,209,5,91,0,0,209,210,3,67,33,0,210,211,5,45,0,0,211,212,
		3,67,33,0,212,213,5,93,0,0,213,70,1,0,0,0,214,215,5,91,0,0,215,216,9,0,
		0,0,216,217,5,45,0,0,217,218,9,0,0,0,218,219,5,93,0,0,219,72,1,0,0,0,220,
		221,7,1,0,0,221,74,1,0,0,0,222,223,7,2,0,0,223,76,1,0,0,0,224,227,3,75,
		37,0,225,227,3,73,36,0,226,224,1,0,0,0,226,225,1,0,0,0,227,78,1,0,0,0,
		228,230,3,77,38,0,229,228,1,0,0,0,230,231,1,0,0,0,231,229,1,0,0,0,231,
		232,1,0,0,0,232,80,1,0,0,0,233,236,5,95,0,0,234,236,3,77,38,0,235,233,
		1,0,0,0,235,234,1,0,0,0,236,242,1,0,0,0,237,241,7,3,0,0,238,241,3,77,38,
		0,239,241,3,85,42,0,240,237,1,0,0,0,240,238,1,0,0,0,240,239,1,0,0,0,241,
		244,1,0,0,0,242,240,1,0,0,0,242,243,1,0,0,0,243,82,1,0,0,0,244,242,1,0,
		0,0,245,247,3,85,42,0,246,245,1,0,0,0,247,248,1,0,0,0,248,246,1,0,0,0,
		248,249,1,0,0,0,249,84,1,0,0,0,250,251,7,4,0,0,251,86,1,0,0,0,252,253,
		7,5,0,0,253,254,1,0,0,0,254,255,6,43,0,0,255,88,1,0,0,0,256,259,3,83,41,
		0,257,258,5,46,0,0,258,260,3,83,41,0,259,257,1,0,0,0,259,260,1,0,0,0,260,
		263,1,0,0,0,261,262,7,6,0,0,262,264,3,83,41,0,263,261,1,0,0,0,263,264,
		1,0,0,0,264,90,1,0,0,0,265,266,7,7,0,0,266,92,1,0,0,0,267,268,7,8,0,0,
		268,94,1,0,0,0,269,275,5,34,0,0,270,271,5,92,0,0,271,274,3,91,45,0,272,
		274,8,9,0,0,273,270,1,0,0,0,273,272,1,0,0,0,274,277,1,0,0,0,275,273,1,
		0,0,0,275,276,1,0,0,0,276,278,1,0,0,0,277,275,1,0,0,0,278,290,5,34,0,0,
		279,285,5,39,0,0,280,281,5,92,0,0,281,284,3,93,46,0,282,284,8,10,0,0,283,
		280,1,0,0,0,283,282,1,0,0,0,284,287,1,0,0,0,285,283,1,0,0,0,285,286,1,
		0,0,0,286,288,1,0,0,0,287,285,1,0,0,0,288,290,5,39,0,0,289,269,1,0,0,0,
		289,279,1,0,0,0,290,96,1,0,0,0,291,292,5,47,0,0,292,293,5,42,0,0,293,297,
		1,0,0,0,294,296,9,0,0,0,295,294,1,0,0,0,296,299,1,0,0,0,297,298,1,0,0,
		0,297,295,1,0,0,0,298,300,1,0,0,0,299,297,1,0,0,0,300,301,5,42,0,0,301,
		302,5,47,0,0,302,303,1,0,0,0,303,304,6,48,0,0,304,98,1,0,0,0,305,306,5,
		47,0,0,306,307,5,47,0,0,307,311,1,0,0,0,308,310,8,11,0,0,309,308,1,0,0,
		0,310,313,1,0,0,0,311,309,1,0,0,0,311,312,1,0,0,0,312,314,1,0,0,0,313,
		311,1,0,0,0,314,315,6,49,0,0,315,100,1,0,0,0,17,0,199,226,231,235,240,
		242,248,259,263,273,275,283,285,289,297,311,1,0,1,0
	};

	public static readonly ATN _ATN =
		new ATNDeserializer().Deserialize(_serializedATN);


}
} // namespace TypedBNF
