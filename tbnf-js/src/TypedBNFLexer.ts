// Generated from ./tbnf-js/src/TypedBNF.g4 by ANTLR 4.9.0-SNAPSHOT


import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF_require"


import { ATN } from "antlr4ts/atn/ATN";
import { ATNDeserializer } from "antlr4ts/atn/ATNDeserializer";
import { CharStream } from "antlr4ts/CharStream";
import { Lexer } from "antlr4ts/Lexer";
import { LexerATNSimulator } from "antlr4ts/atn/LexerATNSimulator";
import { NotNull } from "antlr4ts/Decorators";
import { Override } from "antlr4ts/Decorators";
import { RuleContext } from "antlr4ts/RuleContext";
import { Vocabulary } from "antlr4ts/Vocabulary";
import { VocabularyImpl } from "antlr4ts/VocabularyImpl";

import * as Utils from "antlr4ts/misc/Utils";


export class TypedBNFLexer extends Lexer {
	public static readonly T__0 = 1;
	public static readonly T__1 = 2;
	public static readonly T__2 = 3;
	public static readonly T__3 = 4;
	public static readonly T__4 = 5;
	public static readonly T__5 = 6;
	public static readonly T__6 = 7;
	public static readonly T__7 = 8;
	public static readonly T__8 = 9;
	public static readonly T__9 = 10;
	public static readonly T__10 = 11;
	public static readonly T__11 = 12;
	public static readonly T__12 = 13;
	public static readonly T__13 = 14;
	public static readonly T__14 = 15;
	public static readonly T__15 = 16;
	public static readonly T__16 = 17;
	public static readonly T__17 = 18;
	public static readonly T__18 = 19;
	public static readonly T__19 = 20;
	public static readonly T__20 = 21;
	public static readonly T__21 = 22;
	public static readonly T__22 = 23;
	public static readonly T__23 = 24;
	public static readonly T__24 = 25;
	public static readonly T__25 = 26;
	public static readonly T__26 = 27;
	public static readonly T__27 = 28;
	public static readonly T__28 = 29;
	public static readonly T__29 = 30;
	public static readonly T__30 = 31;
	public static readonly T__31 = 32;
	public static readonly UNICODE_RANGE = 33;
	public static readonly RANGE = 34;
	public static readonly CNAMEPLUS = 35;
	public static readonly INT = 36;
	public static readonly WS = 37;
	public static readonly FLOAT = 38;
	public static readonly ESCAPED_STRING = 39;
	public static readonly CPP_COMMENT = 40;
	public static readonly C_COMMENT = 41;

	// tslint:disable:no-trailing-whitespace
	public static readonly channelNames: string[] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN",
	];

	// tslint:disable:no-trailing-whitespace
	public static readonly modeNames: string[] = [
		"DEFAULT_MODE",
	];

	public static readonly ruleNames: string[] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", "T__24", 
		"T__25", "T__26", "T__27", "T__28", "T__29", "T__30", "T__31", "UCODE", 
		"UNICODE", "UNICODE_RANGE", "RANGE", "LCASE_LETTER", "UCASE_LETTER", "LETTER", 
		"WORD", "CNAMEPLUS", "INT", "DIGIT", "WS", "FLOAT", "ESC1", "ESC2", "ESCAPED_STRING", 
		"CPP_COMMENT", "C_COMMENT",
	];

	private static readonly _LITERAL_NAMES: Array<string | undefined> = [
		undefined, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "':'", "'extern'", 
		"'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", "'let'", 
		"'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", "'false'", 
		"'+'", "'?'", "'!'", "'\\'", "'_'",
	];
	private static readonly _SYMBOLIC_NAMES: Array<string | undefined> = [
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, "UNICODE_RANGE", 
		"RANGE", "CNAMEPLUS", "INT", "WS", "FLOAT", "ESCAPED_STRING", "CPP_COMMENT", 
		"C_COMMENT",
	];
	public static readonly VOCABULARY: Vocabulary = new VocabularyImpl(TypedBNFLexer._LITERAL_NAMES, TypedBNFLexer._SYMBOLIC_NAMES, []);

	// @Override
	// @NotNull
	public get vocabulary(): Vocabulary {
		return TypedBNFLexer.VOCABULARY;
	}
	// tslint:enable:no-trailing-whitespace


	constructor(input: CharStream) {
		super(input);
		this._interp = new LexerATNSimulator(TypedBNFLexer._ATN, this);
	}

	// @Override
	public get grammarFileName(): string { return "TypedBNF.g4"; }

	// @Override
	public get ruleNames(): string[] { return TypedBNFLexer.ruleNames; }

	// @Override
	public get serializedATN(): string { return TypedBNFLexer._serializedATN; }

	// @Override
	public get channelNames(): string[] { return TypedBNFLexer.channelNames; }

	// @Override
	public get modeNames(): string[] { return TypedBNFLexer.modeNames; }

	public static readonly _serializedATN: string =
		"\x03\uC91D\uCABA\u058D\uAFBA\u4F53\u0607\uEA8B\uC241\x02+\u013E\b\x01" +
		"\x04\x02\t\x02\x04\x03\t\x03\x04\x04\t\x04\x04\x05\t\x05\x04\x06\t\x06" +
		"\x04\x07\t\x07\x04\b\t\b\x04\t\t\t\x04\n\t\n\x04\v\t\v\x04\f\t\f\x04\r" +
		"\t\r\x04\x0E\t\x0E\x04\x0F\t\x0F\x04\x10\t\x10\x04\x11\t\x11\x04\x12\t" +
		"\x12\x04\x13\t\x13\x04\x14\t\x14\x04\x15\t\x15\x04\x16\t\x16\x04\x17\t" +
		"\x17\x04\x18\t\x18\x04\x19\t\x19\x04\x1A\t\x1A\x04\x1B\t\x1B\x04\x1C\t" +
		"\x1C\x04\x1D\t\x1D\x04\x1E\t\x1E\x04\x1F\t\x1F\x04 \t \x04!\t!\x04\"\t" +
		"\"\x04#\t#\x04$\t$\x04%\t%\x04&\t&\x04\'\t\'\x04(\t(\x04)\t)\x04*\t*\x04" +
		"+\t+\x04,\t,\x04-\t-\x04.\t.\x04/\t/\x040\t0\x041\t1\x042\t2\x043\t3\x03" +
		"\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x04\x03\x04\x03\x05\x03\x05\x03" +
		"\x06\x03\x06\x03\x07\x03\x07\x03\b\x03\b\x03\t\x03\t\x03\n\x03\n\x03\n" +
		"\x03\n\x03\n\x03\n\x03\n\x03\v\x03\v\x03\v\x03\v\x03\f\x03\f\x03\f\x03" +
		"\f\x03\f\x03\r\x03\r\x03\r\x03\r\x03\r\x03\x0E\x03\x0E\x03\x0E\x03\x0E" +
		"\x03\x0E\x03\x0E\x03\x0E\x03\x0F\x03\x0F\x03\x10\x03\x10\x03\x11\x03\x11" +
		"\x03\x12\x03\x12\x03\x12\x03\x12\x03\x13\x03\x13\x03\x14\x03\x14\x03\x14" +
		"\x03\x15\x03\x15\x03\x15\x03\x15\x03\x16\x03\x16\x03\x17\x03\x17\x03\x18" +
		"\x03\x18\x03\x19\x03\x19\x03\x1A\x03\x1A\x03\x1B\x03\x1B\x03\x1B\x03\x1B" +
		"\x03\x1B\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1D\x03\x1D" +
		"\x03\x1E\x03\x1E\x03\x1F\x03\x1F\x03 \x03 \x03 \x03!\x03!\x03\"\x03\"" +
		"\x05\"\xCA\n\"\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03$\x03$\x03$\x03$" +
		"\x03$\x03$\x03%\x03%\x03%\x03%\x03%\x03%\x03&\x03&\x03\'\x03\'\x03(\x03" +
		"(\x05(\xE5\n(\x03)\x06)\xE8\n)\r)\x0E)\xE9\x03*\x03*\x05*\xEE\n*\x03*" +
		"\x03*\x03*\x07*\xF3\n*\f*\x0E*\xF6\v*\x03+\x06+\xF9\n+\r+\x0E+\xFA\x03" +
		",\x03,\x03-\x03-\x03-\x03-\x03.\x03.\x03.\x05.\u0106\n.\x03.\x03.\x05" +
		".\u010A\n.\x03/\x03/\x030\x030\x031\x031\x031\x031\x071\u0114\n1\f1\x0E" +
		"1\u0117\v1\x031\x031\x031\x031\x031\x071\u011E\n1\f1\x0E1\u0121\v1\x03" +
		"1\x051\u0124\n1\x032\x032\x032\x032\x072\u012A\n2\f2\x0E2\u012D\v2\x03" +
		"2\x032\x032\x032\x032\x033\x033\x033\x033\x073\u0138\n3\f3\x0E3\u013B" +
		"\v3\x033\x033\x03\u012B\x02\x024\x03\x02\x03\x05\x02\x04\x07\x02\x05\t" +
		"\x02\x06\v\x02\x07\r\x02\b\x0F\x02\t\x11\x02\n\x13\x02\v\x15\x02\f\x17" +
		"\x02\r\x19\x02\x0E\x1B\x02\x0F\x1D\x02\x10\x1F\x02\x11!\x02\x12#\x02\x13" +
		"%\x02\x14\'\x02\x15)\x02\x16+\x02\x17-\x02\x18/\x02\x191\x02\x1A3\x02" +
		"\x1B5\x02\x1C7\x02\x1D9\x02\x1E;\x02\x1F=\x02 ?\x02!A\x02\"C\x02\x02E" +
		"\x02\x02G\x02#I\x02$K\x02\x02M\x02\x02O\x02\x02Q\x02\x02S\x02%U\x02&W" +
		"\x02\x02Y\x02\'[\x02(]\x02\x02_\x02\x02a\x02)c\x02*e\x02+\x03\x02\x0E" +
		"\x04\x02CHch\x03\x02c|\x03\x02C\\\x04\x02//aa\x03\x022;\x05\x02\v\f\x0F" +
		"\x0F\"\"\x04\x02GGgg\b\x02$$^^cdppttvv\b\x02))^^cdppttvv\x04\x02$$^^\x04" +
		"\x02))^^\x03\x02\f\f\x02\u0145\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02" +
		"\x02\x02\x02\x07\x03\x02\x02\x02\x02\t\x03\x02\x02\x02\x02\v\x03\x02\x02" +
		"\x02\x02\r\x03\x02\x02\x02\x02\x0F\x03\x02\x02\x02\x02\x11\x03\x02\x02" +
		"\x02\x02\x13\x03\x02\x02\x02\x02\x15\x03\x02\x02\x02\x02\x17\x03\x02\x02" +
		"\x02\x02\x19\x03\x02\x02\x02\x02\x1B\x03\x02\x02\x02\x02\x1D\x03\x02\x02" +
		"\x02\x02\x1F\x03\x02\x02\x02\x02!\x03\x02\x02\x02\x02#\x03\x02\x02\x02" +
		"\x02%\x03\x02\x02\x02\x02\'\x03\x02\x02\x02\x02)\x03\x02\x02\x02\x02+" +
		"\x03\x02\x02\x02\x02-\x03\x02\x02\x02\x02/\x03\x02\x02\x02\x021\x03\x02" +
		"\x02\x02\x023\x03\x02\x02\x02\x025\x03\x02\x02\x02\x027\x03\x02\x02\x02" +
		"\x029\x03\x02\x02\x02\x02;\x03\x02\x02\x02\x02=\x03\x02\x02\x02\x02?\x03" +
		"\x02\x02\x02\x02A\x03\x02\x02\x02\x02G\x03\x02\x02\x02\x02I\x03\x02\x02" +
		"\x02\x02S\x03\x02\x02\x02\x02U\x03\x02\x02\x02\x02Y\x03\x02\x02\x02\x02" +
		"[\x03\x02\x02\x02\x02a\x03\x02\x02\x02\x02c\x03\x02\x02\x02\x02e\x03\x02" +
		"\x02\x02\x03g\x03\x02\x02\x02\x05i\x03\x02\x02\x02\x07l\x03\x02\x02\x02" +
		"\tn\x03\x02\x02\x02\vp\x03\x02\x02\x02\rr\x03\x02\x02\x02\x0Ft\x03\x02" +
		"\x02\x02\x11v\x03\x02\x02\x02\x13x\x03\x02\x02\x02\x15\x7F\x03\x02\x02" +
		"\x02\x17\x83\x03\x02\x02\x02\x19\x88\x03\x02\x02\x02\x1B\x8D\x03\x02\x02" +
		"\x02\x1D\x94\x03\x02\x02\x02\x1F\x96\x03\x02\x02\x02!\x98\x03\x02\x02" +
		"\x02#\x9A\x03\x02\x02\x02%\x9E\x03\x02\x02\x02\'\xA0\x03\x02\x02\x02)" +
		"\xA3\x03\x02\x02\x02+\xA7\x03\x02\x02\x02-\xA9\x03\x02\x02\x02/\xAB\x03" +
		"\x02\x02\x021\xAD\x03\x02\x02\x023\xAF\x03\x02\x02\x025\xB1\x03\x02\x02" +
		"\x027\xB6\x03\x02\x02\x029\xBC\x03\x02\x02\x02;\xBE\x03\x02\x02\x02=\xC0" +
		"\x03\x02\x02\x02?\xC2\x03\x02\x02\x02A\xC5\x03\x02\x02\x02C\xC9\x03\x02" +
		"\x02\x02E\xCB\x03\x02\x02\x02G\xD2\x03\x02\x02\x02I\xD8\x03\x02\x02\x02" +
		"K\xDE\x03\x02\x02\x02M\xE0\x03\x02\x02\x02O\xE4\x03\x02\x02\x02Q\xE7\x03" +
		"\x02\x02\x02S\xED\x03\x02\x02\x02U\xF8\x03\x02\x02\x02W\xFC\x03\x02\x02" +
		"\x02Y\xFE\x03\x02\x02\x02[\u0102\x03\x02\x02\x02]\u010B\x03\x02\x02\x02" +
		"_\u010D\x03\x02\x02\x02a\u0123\x03\x02\x02\x02c\u0125\x03\x02\x02\x02" +
		"e\u0133\x03\x02\x02\x02gh\x07.\x02\x02h\x04\x03\x02\x02\x02ij\x07/\x02" +
		"\x02jk\x07@\x02\x02k\x06\x03\x02\x02\x02lm\x07*\x02\x02m\b\x03\x02\x02" +
		"\x02no\x07+\x02\x02o\n\x03\x02\x02\x02pq\x07>\x02\x02q\f\x03\x02\x02\x02" +
		"rs\x07@\x02\x02s\x0E\x03\x02\x02\x02tu\x07,\x02\x02u\x10\x03\x02\x02\x02" +
		"vw\x07<\x02\x02w\x12\x03\x02\x02\x02xy\x07g\x02\x02yz\x07z\x02\x02z{\x07" +
		"v\x02\x02{|\x07g\x02\x02|}\x07t\x02\x02}~\x07p\x02\x02~\x14\x03\x02\x02" +
		"\x02\x7F\x80\x07x\x02\x02\x80\x81\x07c\x02\x02\x81\x82\x07t\x02\x02\x82" +
		"\x16\x03\x02\x02\x02\x83\x84\x07e\x02\x02\x84\x85\x07c\x02\x02\x85\x86" +
		"\x07u\x02\x02\x86\x87\x07g\x02\x02\x87\x18\x03\x02\x02\x02\x88\x89\x07" +
		"v\x02\x02\x89\x8A\x07{\x02\x02\x8A\x8B\x07r\x02\x02\x8B\x8C\x07g\x02\x02" +
		"\x8C\x1A\x03\x02\x02\x02\x8D\x8E\x07k\x02\x02\x8E\x8F\x07i\x02\x02\x8F" +
		"\x90\x07p\x02\x02\x90\x91\x07q\x02\x02\x91\x92\x07t\x02\x02\x92\x93\x07" +
		"g\x02\x02\x93\x1C\x03\x02\x02\x02\x94\x95\x07~\x02\x02\x95\x1E\x03\x02" +
		"\x02\x02\x96\x97\x07}\x02\x02\x97 \x03\x02\x02\x02\x98\x99\x07\x7F\x02" +
		"\x02\x99\"\x03\x02\x02\x02\x9A\x9B\x07n\x02\x02\x9B\x9C\x07g\x02\x02\x9C" +
		"\x9D\x07v\x02\x02\x9D$\x03\x02\x02\x02\x9E\x9F\x07?\x02\x02\x9F&\x03\x02" +
		"\x02\x02\xA0\xA1\x07k\x02\x02\xA1\xA2\x07p\x02\x02\xA2(\x03\x02\x02\x02" +
		"\xA3\xA4\x07h\x02\x02\xA4\xA5\x07w\x02\x02\xA5\xA6\x07p\x02\x02\xA6*\x03" +
		"\x02\x02\x02\xA7\xA8\x07=\x02\x02\xA8,\x03\x02\x02\x02\xA9\xAA\x07&\x02" +
		"\x02\xAA.\x03\x02\x02\x02\xAB\xAC\x07]\x02\x02\xAC0\x03\x02\x02\x02\xAD" +
		"\xAE\x07_\x02\x02\xAE2\x03\x02\x02\x02\xAF\xB0\x070\x02\x02\xB04\x03\x02" +
		"\x02\x02\xB1\xB2\x07v\x02\x02\xB2\xB3\x07t\x02\x02\xB3\xB4\x07w\x02\x02" +
		"\xB4\xB5\x07g\x02\x02\xB56\x03\x02\x02\x02\xB6\xB7\x07h\x02\x02\xB7\xB8" +
		"\x07c\x02\x02\xB8\xB9\x07n\x02\x02\xB9\xBA\x07u\x02\x02\xBA\xBB\x07g\x02" +
		"\x02\xBB8\x03\x02\x02\x02\xBC\xBD\x07-\x02\x02\xBD:\x03\x02\x02\x02\xBE" +
		"\xBF\x07A\x02\x02\xBF<\x03\x02\x02\x02\xC0\xC1\x07#\x02\x02\xC1>\x03\x02" +
		"\x02\x02\xC2\xC3\x07^\x02\x02\xC3\xC4\x07f\x02\x02\xC4@\x03\x02\x02\x02" +
		"\xC5\xC6\x07a\x02\x02\xC6B\x03\x02\x02\x02\xC7\xCA\x05W,\x02\xC8\xCA\t" +
		"\x02\x02\x02\xC9\xC7\x03\x02\x02\x02\xC9\xC8\x03\x02\x02\x02\xCAD\x03" +
		"\x02\x02\x02\xCB\xCC\x07^\x02\x02\xCC\xCD\x07w\x02\x02\xCD\xCE\x05C\"" +
		"\x02\xCE\xCF\x05C\"\x02\xCF\xD0\x05C\"\x02\xD0\xD1\x05C\"\x02\xD1F\x03" +
		"\x02\x02\x02\xD2\xD3\x07]\x02\x02\xD3\xD4\x05E#\x02\xD4\xD5\x07/\x02\x02" +
		"\xD5\xD6\x05E#\x02\xD6\xD7\x07_\x02\x02\xD7H\x03\x02\x02\x02\xD8\xD9\x07" +
		"]\x02\x02\xD9\xDA\v\x02\x02\x02\xDA\xDB\x07/\x02\x02\xDB\xDC\v\x02\x02" +
		"\x02\xDC\xDD\x07_\x02\x02\xDDJ\x03\x02\x02\x02\xDE\xDF\t\x03\x02\x02\xDF" +
		"L\x03\x02\x02\x02\xE0\xE1\t\x04\x02\x02\xE1N\x03\x02\x02\x02\xE2\xE5\x05" +
		"M\'\x02\xE3\xE5\x05K&\x02\xE4\xE2\x03\x02\x02\x02\xE4\xE3\x03\x02\x02" +
		"\x02\xE5P\x03\x02\x02\x02\xE6\xE8\x05O(\x02\xE7\xE6\x03\x02\x02\x02\xE8" +
		"\xE9\x03\x02\x02\x02\xE9\xE7\x03\x02\x02\x02\xE9\xEA\x03\x02\x02\x02\xEA" +
		"R\x03\x02\x02\x02\xEB\xEE\x07a\x02\x02\xEC\xEE\x05O(\x02\xED\xEB\x03\x02" +
		"\x02\x02\xED\xEC\x03\x02\x02\x02\xEE\xF4\x03\x02\x02\x02\xEF\xF3\t\x05" +
		"\x02\x02\xF0\xF3\x05O(\x02\xF1\xF3\x05W,\x02\xF2\xEF\x03\x02\x02\x02\xF2" +
		"\xF0\x03\x02\x02\x02\xF2\xF1\x03\x02\x02\x02\xF3\xF6\x03\x02\x02\x02\xF4" +
		"\xF2\x03\x02\x02\x02\xF4\xF5\x03\x02\x02\x02\xF5T\x03\x02\x02\x02\xF6" +
		"\xF4\x03\x02\x02\x02\xF7\xF9\x05W,\x02\xF8\xF7\x03\x02\x02\x02\xF9\xFA" +
		"\x03\x02\x02\x02\xFA\xF8\x03\x02\x02\x02\xFA\xFB\x03\x02\x02\x02\xFBV" +
		"\x03\x02\x02\x02\xFC\xFD\t\x06\x02\x02\xFDX\x03\x02\x02\x02\xFE\xFF\t" +
		"\x07\x02\x02\xFF\u0100\x03\x02\x02\x02\u0100\u0101\b-\x02\x02\u0101Z\x03" +
		"\x02\x02\x02\u0102\u0105\x05U+\x02\u0103\u0104\x070\x02\x02\u0104\u0106" +
		"\x05U+\x02\u0105\u0103\x03\x02\x02\x02\u0105\u0106\x03\x02\x02\x02\u0106" +
		"\u0109\x03\x02\x02\x02\u0107\u0108\t\b\x02\x02\u0108\u010A\x05U+\x02\u0109" +
		"\u0107\x03\x02\x02\x02\u0109\u010A\x03\x02\x02\x02\u010A\\\x03\x02\x02" +
		"\x02\u010B\u010C\t\t\x02\x02\u010C^\x03\x02\x02\x02\u010D\u010E\t\n\x02" +
		"\x02\u010E`\x03\x02\x02\x02\u010F\u0115\x07$\x02\x02\u0110\u0111\x07^" +
		"\x02\x02\u0111\u0114\x05]/\x02\u0112\u0114\n\v\x02\x02\u0113\u0110\x03" +
		"\x02\x02\x02\u0113\u0112\x03\x02\x02\x02\u0114\u0117\x03\x02\x02\x02\u0115" +
		"\u0113\x03\x02\x02\x02\u0115\u0116\x03\x02\x02\x02\u0116\u0118\x03\x02" +
		"\x02\x02\u0117\u0115\x03\x02\x02\x02\u0118\u0124\x07$\x02\x02\u0119\u011F" +
		"\x07)\x02\x02\u011A\u011B\x07^\x02\x02\u011B\u011E\x05_0\x02\u011C\u011E" +
		"\n\f\x02\x02\u011D\u011A\x03\x02\x02\x02\u011D\u011C\x03\x02\x02\x02\u011E" +
		"\u0121\x03\x02\x02\x02\u011F\u011D\x03\x02\x02\x02\u011F\u0120\x03\x02" +
		"\x02\x02\u0120\u0122\x03\x02\x02\x02\u0121\u011F\x03\x02\x02\x02\u0122" +
		"\u0124\x07)\x02\x02\u0123\u010F\x03\x02\x02\x02\u0123\u0119\x03\x02\x02" +
		"\x02\u0124b\x03\x02\x02\x02\u0125\u0126\x071\x02\x02\u0126\u0127\x07," +
		"\x02\x02\u0127\u012B\x03\x02\x02\x02\u0128\u012A\v\x02\x02\x02\u0129\u0128" +
		"\x03\x02\x02\x02\u012A\u012D\x03\x02\x02\x02\u012B\u012C\x03\x02\x02\x02" +
		"\u012B\u0129\x03\x02\x02\x02\u012C\u012E\x03\x02\x02\x02\u012D\u012B\x03" +
		"\x02\x02\x02\u012E\u012F\x07,\x02\x02\u012F\u0130\x071\x02\x02\u0130\u0131" +
		"\x03\x02\x02\x02\u0131\u0132\b2\x02\x02\u0132d\x03\x02\x02\x02\u0133\u0134" +
		"\x071\x02\x02\u0134\u0135\x071\x02\x02\u0135\u0139\x03\x02\x02\x02\u0136" +
		"\u0138\n\r\x02\x02\u0137\u0136\x03\x02\x02\x02\u0138\u013B\x03\x02\x02" +
		"\x02\u0139\u0137\x03\x02\x02\x02\u0139\u013A\x03\x02\x02\x02\u013A\u013C" +
		"\x03\x02\x02\x02\u013B\u0139\x03\x02\x02\x02\u013C\u013D\b3\x02\x02\u013D" +
		"f\x03\x02\x02\x02\x13\x02\xC9\xE4\xE9\xED\xF2\xF4\xFA\u0105\u0109\u0113" +
		"\u0115\u011D\u011F\u0123\u012B\u0139\x03\x02\x03\x02";
	public static __ATN: ATN;
	public static get _ATN(): ATN {
		if (!TypedBNFLexer.__ATN) {
			TypedBNFLexer.__ATN = new ATNDeserializer().deserialize(Utils.toCharArray(TypedBNFLexer._serializedATN));
		}

		return TypedBNFLexer.__ATN;
	}

}

