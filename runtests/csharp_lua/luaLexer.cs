//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.11.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from ./runtests/csharp_lua/lua.g4 by ANTLR 4.11.1

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace lua {
using System;
using System.IO;
using System.Text;
using Antlr4.Runtime;
using Antlr4.Runtime.Atn;
using Antlr4.Runtime.Misc;
using DFA = Antlr4.Runtime.Dfa.DFA;

[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.11.1")]
[System.CLSCompliant(false)]
public partial class luaLexer : Lexer {
	protected static DFA[] decisionToDFA;
	protected static PredictionContextCache sharedContextCache = new PredictionContextCache();
	public const int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, LINE_COMMENT=56, SPACE=57, NAME=58, NUMERAL=59, 
		STR_LIT=60, NESTED_STR=61;
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
		"T__25", "T__26", "T__27", "T__28", "T__29", "T__30", "T__31", "T__32", 
		"T__33", "T__34", "T__35", "T__36", "T__37", "T__38", "T__39", "T__40", 
		"T__41", "T__42", "T__43", "T__44", "T__45", "T__46", "T__47", "T__48", 
		"T__49", "T__50", "T__51", "T__52", "T__53", "T__54", "LINE_COMMENT", 
		"SPACE", "DIGIT", "HEXCHAR", "UCHAR", "NAME", "INT", "INTEGRAL", "HEX", 
		"NUMERAL", "STR_LIT", "NESTED_STR1", "NESTED_STR2", "NESTED_STR"
	};


	public luaLexer(ICharStream input)
	: this(input, Console.Out, Console.Error) { }

	public luaLexer(ICharStream input, TextWriter output, TextWriter errorOutput)
	: base(input, output, errorOutput)
	{
		Interpreter = new LexerATNSimulator(this, _ATN, decisionToDFA, sharedContextCache);
	}

	private static readonly string[] _LiteralNames = {
		null, "';'", "'return'", "'='", "'::'", "'break'", "'goto'", "'do'", "'end'", 
		"'while'", "'repeat'", "'until'", "'if'", "'then'", "'for'", "'in'", "'local'", 
		"'function'", "'('", "')'", "','", "'elseif'", "'else'", "'#'", "'-'", 
		"'~'", "'not'", "'^'", "':'", "'['", "']'", "'.'", "'nil'", "'false'", 
		"'true'", "'...'", "'{'", "'}'", "'or'", "'and'", "'<'", "'>'", "'<='", 
		"'>='", "'~='", "'=='", "'|'", "'&'", "'<<'", "'>>'", "'..'", "'+'", "'*'", 
		"'/'", "'//'", "'%'"
	};
	private static readonly string[] _SymbolicNames = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, "LINE_COMMENT", "SPACE", 
		"NAME", "NUMERAL", "STR_LIT", "NESTED_STR"
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

	public override string GrammarFileName { get { return "lua.g4"; } }

	public override string[] RuleNames { get { return ruleNames; } }

	public override string[] ChannelNames { get { return channelNames; } }

	public override string[] ModeNames { get { return modeNames; } }

	public override int[] SerializedAtn { get { return _serializedATN; } }

	static luaLexer() {
		decisionToDFA = new DFA[_ATN.NumberOfDecisions];
		for (int i = 0; i < _ATN.NumberOfDecisions; i++) {
			decisionToDFA[i] = new DFA(_ATN.GetDecisionState(i), i);
		}
	}
	private static int[] _serializedATN = {
		4,0,61,442,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
		6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
		7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
		7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
		7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
		7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
		7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,
		7,49,2,50,7,50,2,51,7,51,2,52,7,52,2,53,7,53,2,54,7,54,2,55,7,55,2,56,
		7,56,2,57,7,57,2,58,7,58,2,59,7,59,2,60,7,60,2,61,7,61,2,62,7,62,2,63,
		7,63,2,64,7,64,2,65,7,65,2,66,7,66,2,67,7,67,2,68,7,68,1,0,1,0,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,
		5,1,5,1,5,1,5,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,9,
		1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,11,1,
		12,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,15,1,15,1,
		15,1,15,1,15,1,15,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,17,1,
		17,1,18,1,18,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,21,1,21,1,
		21,1,21,1,21,1,22,1,22,1,23,1,23,1,24,1,24,1,25,1,25,1,25,1,25,1,26,1,
		26,1,27,1,27,1,28,1,28,1,29,1,29,1,30,1,30,1,31,1,31,1,31,1,31,1,32,1,
		32,1,32,1,32,1,32,1,32,1,33,1,33,1,33,1,33,1,33,1,34,1,34,1,34,1,34,1,
		35,1,35,1,36,1,36,1,37,1,37,1,37,1,38,1,38,1,38,1,38,1,39,1,39,1,40,1,
		40,1,41,1,41,1,41,1,42,1,42,1,42,1,43,1,43,1,43,1,44,1,44,1,44,1,45,1,
		45,1,46,1,46,1,47,1,47,1,47,1,48,1,48,1,48,1,49,1,49,1,49,1,50,1,50,1,
		51,1,51,1,52,1,52,1,53,1,53,1,53,1,54,1,54,1,55,1,55,1,55,5,55,332,8,55,
		10,55,12,55,335,9,55,1,55,1,55,1,55,1,55,1,56,1,56,1,56,1,56,1,57,1,57,
		1,58,3,58,348,8,58,1,59,3,59,351,8,59,1,60,1,60,1,60,5,60,356,8,60,10,
		60,12,60,359,9,60,1,61,4,61,362,8,61,11,61,12,61,363,1,62,1,62,1,62,3,
		62,369,8,62,1,62,1,62,3,62,373,8,62,1,63,1,63,1,63,1,63,4,63,379,8,63,
		11,63,12,63,380,1,64,1,64,3,64,385,8,64,1,65,1,65,1,65,1,65,5,65,391,8,
		65,10,65,12,65,394,9,65,1,65,1,65,1,66,1,66,1,66,1,66,5,66,402,8,66,10,
		66,12,66,405,9,66,1,66,1,66,1,67,1,67,1,67,1,67,1,67,1,67,1,67,3,67,416,
		8,67,5,67,418,8,67,10,67,12,67,421,9,67,1,67,1,67,1,67,1,67,5,67,427,8,
		67,10,67,12,67,430,9,67,3,67,432,8,67,1,67,1,67,1,68,1,68,1,68,3,68,439,
		8,68,1,68,1,68,0,0,69,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,
		11,23,12,25,13,27,14,29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,
		23,47,24,49,25,51,26,53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,34,69,
		35,71,36,73,37,75,38,77,39,79,40,81,41,83,42,85,43,87,44,89,45,91,46,93,
		47,95,48,97,49,99,50,101,51,103,52,105,53,107,54,109,55,111,56,113,57,
		115,0,117,0,119,0,121,58,123,0,125,0,127,0,129,59,131,60,133,0,135,0,137,
		61,1,0,9,1,0,10,10,3,0,9,10,13,13,32,32,1,0,48,57,3,0,48,57,65,90,97,122,
		3,0,65,90,95,95,97,122,2,0,69,69,101,101,1,0,34,34,1,0,93,93,1,0,61,61,
		452,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,
		0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,
		0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,0,0,31,1,0,0,0,0,33,
		1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,0,41,1,0,0,0,0,43,1,0,0,
		0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,1,0,0,0,0,53,1,0,0,0,0,55,
		1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,0,0,0,63,1,0,0,0,0,65,1,0,0,
		0,0,67,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,0,73,1,0,0,0,0,75,1,0,0,0,0,77,
		1,0,0,0,0,79,1,0,0,0,0,81,1,0,0,0,0,83,1,0,0,0,0,85,1,0,0,0,0,87,1,0,0,
		0,0,89,1,0,0,0,0,91,1,0,0,0,0,93,1,0,0,0,0,95,1,0,0,0,0,97,1,0,0,0,0,99,
		1,0,0,0,0,101,1,0,0,0,0,103,1,0,0,0,0,105,1,0,0,0,0,107,1,0,0,0,0,109,
		1,0,0,0,0,111,1,0,0,0,0,113,1,0,0,0,0,121,1,0,0,0,0,129,1,0,0,0,0,131,
		1,0,0,0,0,137,1,0,0,0,1,139,1,0,0,0,3,141,1,0,0,0,5,148,1,0,0,0,7,150,
		1,0,0,0,9,153,1,0,0,0,11,159,1,0,0,0,13,164,1,0,0,0,15,167,1,0,0,0,17,
		171,1,0,0,0,19,177,1,0,0,0,21,184,1,0,0,0,23,190,1,0,0,0,25,193,1,0,0,
		0,27,198,1,0,0,0,29,202,1,0,0,0,31,205,1,0,0,0,33,211,1,0,0,0,35,220,1,
		0,0,0,37,222,1,0,0,0,39,224,1,0,0,0,41,226,1,0,0,0,43,233,1,0,0,0,45,238,
		1,0,0,0,47,240,1,0,0,0,49,242,1,0,0,0,51,244,1,0,0,0,53,248,1,0,0,0,55,
		250,1,0,0,0,57,252,1,0,0,0,59,254,1,0,0,0,61,256,1,0,0,0,63,258,1,0,0,
		0,65,262,1,0,0,0,67,268,1,0,0,0,69,273,1,0,0,0,71,277,1,0,0,0,73,279,1,
		0,0,0,75,281,1,0,0,0,77,284,1,0,0,0,79,288,1,0,0,0,81,290,1,0,0,0,83,292,
		1,0,0,0,85,295,1,0,0,0,87,298,1,0,0,0,89,301,1,0,0,0,91,304,1,0,0,0,93,
		306,1,0,0,0,95,308,1,0,0,0,97,311,1,0,0,0,99,314,1,0,0,0,101,317,1,0,0,
		0,103,319,1,0,0,0,105,321,1,0,0,0,107,323,1,0,0,0,109,326,1,0,0,0,111,
		328,1,0,0,0,113,340,1,0,0,0,115,344,1,0,0,0,117,347,1,0,0,0,119,350,1,
		0,0,0,121,352,1,0,0,0,123,361,1,0,0,0,125,365,1,0,0,0,127,374,1,0,0,0,
		129,384,1,0,0,0,131,386,1,0,0,0,133,397,1,0,0,0,135,408,1,0,0,0,137,435,
		1,0,0,0,139,140,5,59,0,0,140,2,1,0,0,0,141,142,5,114,0,0,142,143,5,101,
		0,0,143,144,5,116,0,0,144,145,5,117,0,0,145,146,5,114,0,0,146,147,5,110,
		0,0,147,4,1,0,0,0,148,149,5,61,0,0,149,6,1,0,0,0,150,151,5,58,0,0,151,
		152,5,58,0,0,152,8,1,0,0,0,153,154,5,98,0,0,154,155,5,114,0,0,155,156,
		5,101,0,0,156,157,5,97,0,0,157,158,5,107,0,0,158,10,1,0,0,0,159,160,5,
		103,0,0,160,161,5,111,0,0,161,162,5,116,0,0,162,163,5,111,0,0,163,12,1,
		0,0,0,164,165,5,100,0,0,165,166,5,111,0,0,166,14,1,0,0,0,167,168,5,101,
		0,0,168,169,5,110,0,0,169,170,5,100,0,0,170,16,1,0,0,0,171,172,5,119,0,
		0,172,173,5,104,0,0,173,174,5,105,0,0,174,175,5,108,0,0,175,176,5,101,
		0,0,176,18,1,0,0,0,177,178,5,114,0,0,178,179,5,101,0,0,179,180,5,112,0,
		0,180,181,5,101,0,0,181,182,5,97,0,0,182,183,5,116,0,0,183,20,1,0,0,0,
		184,185,5,117,0,0,185,186,5,110,0,0,186,187,5,116,0,0,187,188,5,105,0,
		0,188,189,5,108,0,0,189,22,1,0,0,0,190,191,5,105,0,0,191,192,5,102,0,0,
		192,24,1,0,0,0,193,194,5,116,0,0,194,195,5,104,0,0,195,196,5,101,0,0,196,
		197,5,110,0,0,197,26,1,0,0,0,198,199,5,102,0,0,199,200,5,111,0,0,200,201,
		5,114,0,0,201,28,1,0,0,0,202,203,5,105,0,0,203,204,5,110,0,0,204,30,1,
		0,0,0,205,206,5,108,0,0,206,207,5,111,0,0,207,208,5,99,0,0,208,209,5,97,
		0,0,209,210,5,108,0,0,210,32,1,0,0,0,211,212,5,102,0,0,212,213,5,117,0,
		0,213,214,5,110,0,0,214,215,5,99,0,0,215,216,5,116,0,0,216,217,5,105,0,
		0,217,218,5,111,0,0,218,219,5,110,0,0,219,34,1,0,0,0,220,221,5,40,0,0,
		221,36,1,0,0,0,222,223,5,41,0,0,223,38,1,0,0,0,224,225,5,44,0,0,225,40,
		1,0,0,0,226,227,5,101,0,0,227,228,5,108,0,0,228,229,5,115,0,0,229,230,
		5,101,0,0,230,231,5,105,0,0,231,232,5,102,0,0,232,42,1,0,0,0,233,234,5,
		101,0,0,234,235,5,108,0,0,235,236,5,115,0,0,236,237,5,101,0,0,237,44,1,
		0,0,0,238,239,5,35,0,0,239,46,1,0,0,0,240,241,5,45,0,0,241,48,1,0,0,0,
		242,243,5,126,0,0,243,50,1,0,0,0,244,245,5,110,0,0,245,246,5,111,0,0,246,
		247,5,116,0,0,247,52,1,0,0,0,248,249,5,94,0,0,249,54,1,0,0,0,250,251,5,
		58,0,0,251,56,1,0,0,0,252,253,5,91,0,0,253,58,1,0,0,0,254,255,5,93,0,0,
		255,60,1,0,0,0,256,257,5,46,0,0,257,62,1,0,0,0,258,259,5,110,0,0,259,260,
		5,105,0,0,260,261,5,108,0,0,261,64,1,0,0,0,262,263,5,102,0,0,263,264,5,
		97,0,0,264,265,5,108,0,0,265,266,5,115,0,0,266,267,5,101,0,0,267,66,1,
		0,0,0,268,269,5,116,0,0,269,270,5,114,0,0,270,271,5,117,0,0,271,272,5,
		101,0,0,272,68,1,0,0,0,273,274,5,46,0,0,274,275,5,46,0,0,275,276,5,46,
		0,0,276,70,1,0,0,0,277,278,5,123,0,0,278,72,1,0,0,0,279,280,5,125,0,0,
		280,74,1,0,0,0,281,282,5,111,0,0,282,283,5,114,0,0,283,76,1,0,0,0,284,
		285,5,97,0,0,285,286,5,110,0,0,286,287,5,100,0,0,287,78,1,0,0,0,288,289,
		5,60,0,0,289,80,1,0,0,0,290,291,5,62,0,0,291,82,1,0,0,0,292,293,5,60,0,
		0,293,294,5,61,0,0,294,84,1,0,0,0,295,296,5,62,0,0,296,297,5,61,0,0,297,
		86,1,0,0,0,298,299,5,126,0,0,299,300,5,61,0,0,300,88,1,0,0,0,301,302,5,
		61,0,0,302,303,5,61,0,0,303,90,1,0,0,0,304,305,5,124,0,0,305,92,1,0,0,
		0,306,307,5,38,0,0,307,94,1,0,0,0,308,309,5,60,0,0,309,310,5,60,0,0,310,
		96,1,0,0,0,311,312,5,62,0,0,312,313,5,62,0,0,313,98,1,0,0,0,314,315,5,
		46,0,0,315,316,5,46,0,0,316,100,1,0,0,0,317,318,5,43,0,0,318,102,1,0,0,
		0,319,320,5,42,0,0,320,104,1,0,0,0,321,322,5,47,0,0,322,106,1,0,0,0,323,
		324,5,47,0,0,324,325,5,47,0,0,325,108,1,0,0,0,326,327,5,37,0,0,327,110,
		1,0,0,0,328,329,5,45,0,0,329,333,5,45,0,0,330,332,8,0,0,0,331,330,1,0,
		0,0,332,335,1,0,0,0,333,331,1,0,0,0,333,334,1,0,0,0,334,336,1,0,0,0,335,
		333,1,0,0,0,336,337,5,10,0,0,337,338,1,0,0,0,338,339,6,55,0,0,339,112,
		1,0,0,0,340,341,7,1,0,0,341,342,1,0,0,0,342,343,6,56,0,0,343,114,1,0,0,
		0,344,345,7,2,0,0,345,116,1,0,0,0,346,348,7,3,0,0,347,346,1,0,0,0,348,
		118,1,0,0,0,349,351,7,4,0,0,350,349,1,0,0,0,351,120,1,0,0,0,352,357,3,
		119,59,0,353,356,3,119,59,0,354,356,3,115,57,0,355,353,1,0,0,0,355,354,
		1,0,0,0,356,359,1,0,0,0,357,355,1,0,0,0,357,358,1,0,0,0,358,122,1,0,0,
		0,359,357,1,0,0,0,360,362,3,115,57,0,361,360,1,0,0,0,362,363,1,0,0,0,363,
		361,1,0,0,0,363,364,1,0,0,0,364,124,1,0,0,0,365,368,3,123,61,0,366,367,
		5,46,0,0,367,369,3,123,61,0,368,366,1,0,0,0,368,369,1,0,0,0,369,372,1,
		0,0,0,370,371,7,5,0,0,371,373,3,123,61,0,372,370,1,0,0,0,372,373,1,0,0,
		0,373,126,1,0,0,0,374,375,5,48,0,0,375,376,5,120,0,0,376,378,1,0,0,0,377,
		379,3,117,58,0,378,377,1,0,0,0,379,380,1,0,0,0,380,378,1,0,0,0,380,381,
		1,0,0,0,381,128,1,0,0,0,382,385,3,127,63,0,383,385,3,125,62,0,384,382,
		1,0,0,0,384,383,1,0,0,0,385,130,1,0,0,0,386,392,5,34,0,0,387,388,5,92,
		0,0,388,391,9,0,0,0,389,391,8,6,0,0,390,387,1,0,0,0,390,389,1,0,0,0,391,
		394,1,0,0,0,392,390,1,0,0,0,392,393,1,0,0,0,393,395,1,0,0,0,394,392,1,
		0,0,0,395,396,5,34,0,0,396,132,1,0,0,0,397,403,5,91,0,0,398,399,5,93,0,
		0,399,402,8,7,0,0,400,402,8,7,0,0,401,398,1,0,0,0,401,400,1,0,0,0,402,
		405,1,0,0,0,403,401,1,0,0,0,403,404,1,0,0,0,404,406,1,0,0,0,405,403,1,
		0,0,0,406,407,5,93,0,0,407,134,1,0,0,0,408,431,5,61,0,0,409,419,5,91,0,
		0,410,418,8,7,0,0,411,415,5,93,0,0,412,416,8,8,0,0,413,414,5,61,0,0,414,
		416,8,7,0,0,415,412,1,0,0,0,415,413,1,0,0,0,416,418,1,0,0,0,417,410,1,
		0,0,0,417,411,1,0,0,0,418,421,1,0,0,0,419,417,1,0,0,0,419,420,1,0,0,0,
		420,422,1,0,0,0,421,419,1,0,0,0,422,432,5,93,0,0,423,424,5,61,0,0,424,
		427,8,7,0,0,425,427,8,8,0,0,426,423,1,0,0,0,426,425,1,0,0,0,427,430,1,
		0,0,0,428,426,1,0,0,0,428,429,1,0,0,0,429,432,1,0,0,0,430,428,1,0,0,0,
		431,409,1,0,0,0,431,428,1,0,0,0,432,433,1,0,0,0,433,434,5,61,0,0,434,136,
		1,0,0,0,435,438,5,91,0,0,436,439,3,133,66,0,437,439,3,135,67,0,438,436,
		1,0,0,0,438,437,1,0,0,0,439,440,1,0,0,0,440,441,5,93,0,0,441,138,1,0,0,
		0,22,0,333,347,350,355,357,363,368,372,380,384,390,392,401,403,415,417,
		419,426,428,431,438,1,0,1,0
	};

	public static readonly ATN _ATN =
		new ATNDeserializer().Deserialize(_serializedATN);


}
} // namespace lua
