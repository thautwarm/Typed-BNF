// Generated from /home/thaut/Desktop/typed-bnf/runtests/mylang.g4 by ANTLR 4.8
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class mylangParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, STR_1=7, INT_3=8, FLOAT_4=9;
	public static final int
		RULE_json = 0, RULE_gen__seplist__L44__pair = 1, RULE_gen__list_json = 2, 
		RULE_pair = 3, RULE_str = 4, RULE_start = 5;
	private static String[] makeRuleNames() {
		return new String[] {
			"json", "gen__seplist__L44__pair", "gen__list_json", "pair", "str", "start"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'['", "']'", "'{'", "'}'", "','", "':'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, "STR_1", "INT_3", "FLOAT_4"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "mylang.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public mylangParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class JsonContext extends ParserRuleContext {
		public json result;
		public Gen__list_jsonContext local__2_json_case0;
		public Gen__seplist__L44__pairContext local__2_json_case1;
		public Token local__1_json_case2;
		public Token local__1_json_case3;
		public StrContext local__1_json_case4;
		public Gen__list_jsonContext gen__list_json() {
			return getRuleContext(Gen__list_jsonContext.class,0);
		}
		public Gen__seplist__L44__pairContext gen__seplist__L44__pair() {
			return getRuleContext(Gen__seplist__L44__pairContext.class,0);
		}
		public TerminalNode INT_3() { return getToken(mylangParser.INT_3, 0); }
		public TerminalNode FLOAT_4() { return getToken(mylangParser.FLOAT_4, 0); }
		public StrContext str() {
			return getRuleContext(StrContext.class,0);
		}
		public JsonContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_json; }
	}

	public final JsonContext json() throws RecognitionException {
		JsonContext _localctx = new JsonContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_json);
		try {
			setState(29);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(12);
				match(T__0);
				setState(13);
				((JsonContext)_localctx).local__2_json_case0 = gen__list_json();
				setState(14);
				match(T__1);
				 
				        json tmp__2 ; 
				        list<json> tmp__1 ; 
				        tmp__1 = local__2_json_case0.value ; 
				        tmp__2 = (json) json_list( tmp__1 ); 
				        ((JsonContext)_localctx).result =  tmp__2; 
				      
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 2);
				{
				setState(17);
				match(T__2);
				setState(18);
				((JsonContext)_localctx).local__2_json_case1 = gen__seplist__L44__pair();
				setState(19);
				match(T__3);
				 
				        json tmp__5 ; 
				        dict<str, json> tmp__4 ; 
				        list<(str, json)> tmp__3 ; 
				        tmp__3 = local__2_json_case1.value ; 
				        tmp__4 = (dict<str, json>) mk_dict<str,json>( tmp__3 ); 
				        tmp__5 = (json) json_dict( tmp__4 ); 
				        ((JsonContext)_localctx).result =  tmp__5; 
				      
				}
				break;
			case INT_3:
				enterOuterAlt(_localctx, 3);
				{
				setState(22);
				((JsonContext)_localctx).local__1_json_case2 = match(INT_3);
				 
				        json tmp__8 ; 
				        int tmp__7 ; 
				        token tmp__6 ; 
				        tmp__6 = local__1_json_case2.value ; 
				        tmp__7 = (int) parse_int( tmp__6.lexeme ); 
				        tmp__8 = (json) json_int( tmp__7 ); 
				        ((JsonContext)_localctx).result =  tmp__8; 
				      
				}
				break;
			case FLOAT_4:
				enterOuterAlt(_localctx, 4);
				{
				setState(24);
				((JsonContext)_localctx).local__1_json_case3 = match(FLOAT_4);
				 
				        json tmp__11 ; 
				        float tmp__10 ; 
				        token tmp__9 ; 
				        tmp__9 = local__1_json_case3.value ; 
				        tmp__10 = (float) parse_float( tmp__9.lexeme ); 
				        tmp__11 = (json) json_float( tmp__10 ); 
				        ((JsonContext)_localctx).result =  tmp__11; 
				      
				}
				break;
			case STR_1:
				enterOuterAlt(_localctx, 5);
				{
				setState(26);
				((JsonContext)_localctx).local__1_json_case4 = str();
				 
				        json tmp__14 ; 
				        str tmp__13 ; 
				        str tmp__12 ; 
				        tmp__12 = local__1_json_case4.value ; 
				        tmp__13 = (str) unesc_string( tmp__12 ); 
				        tmp__14 = (json) json_string( tmp__13 ); 
				        ((JsonContext)_localctx).result =  tmp__14; 
				      
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Gen__seplist__L44__pairContext extends ParserRuleContext {
		public list<(str, json)> result;
		public PairContext local__1_gen__seplist__L44__pair_case1;
		public Gen__seplist__L44__pairContext local__3_gen__seplist__L44__pair_case1;
		public PairContext pair() {
			return getRuleContext(PairContext.class,0);
		}
		public Gen__seplist__L44__pairContext gen__seplist__L44__pair() {
			return getRuleContext(Gen__seplist__L44__pairContext.class,0);
		}
		public Gen__seplist__L44__pairContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_gen__seplist__L44__pair; }
	}

	public final Gen__seplist__L44__pairContext gen__seplist__L44__pair() throws RecognitionException {
		Gen__seplist__L44__pairContext _localctx = new Gen__seplist__L44__pairContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_gen__seplist__L44__pair);
		try {
			setState(37);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__3:
				enterOuterAlt(_localctx, 1);
				{
				 
				        list<(str, json)> tmp__15 ; 
				        tmp__15 = (list<(str, json)>) nil<(str, json)>(  ); 
				        ((Gen__seplist__L44__pairContext)_localctx).result =  tmp__15; 
				      
				}
				break;
			case STR_1:
				enterOuterAlt(_localctx, 2);
				{
				setState(32);
				((Gen__seplist__L44__pairContext)_localctx).local__1_gen__seplist__L44__pair_case1 = pair();
				setState(33);
				match(T__4);
				setState(34);
				((Gen__seplist__L44__pairContext)_localctx).local__3_gen__seplist__L44__pair_case1 = gen__seplist__L44__pair();
				 
				        list<(str, json)> tmp__18 ; 
				        list<(str, json)> tmp__17 ; 
				        (str, json) tmp__16 ; 
				        tmp__16 = local__1_gen__seplist__L44__pair_case1.value ; 
				        tmp__17 = local__3_gen__seplist__L44__pair_case1.value ; 
				        tmp__18 = (list<(str, json)>) cons<(str, json)>( tmp__16, tmp__17 ); 
				        ((Gen__seplist__L44__pairContext)_localctx).result =  tmp__18; 
				      
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Gen__list_jsonContext extends ParserRuleContext {
		public list<json> result;
		public JsonContext local__1_gen__list_json_case1;
		public Gen__list_jsonContext local__3_gen__list_json_case1;
		public JsonContext json() {
			return getRuleContext(JsonContext.class,0);
		}
		public Gen__list_jsonContext gen__list_json() {
			return getRuleContext(Gen__list_jsonContext.class,0);
		}
		public Gen__list_jsonContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_gen__list_json; }
	}

	public final Gen__list_jsonContext gen__list_json() throws RecognitionException {
		Gen__list_jsonContext _localctx = new Gen__list_jsonContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_gen__list_json);
		try {
			setState(45);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case EOF:
			case T__1:
				enterOuterAlt(_localctx, 1);
				{
				 
				        list<json> tmp__19 ; 
				        tmp__19 = (list<json>) nil<json>(  ); 
				        ((Gen__list_jsonContext)_localctx).result =  tmp__19; 
				      
				}
				break;
			case T__0:
			case T__2:
			case STR_1:
			case INT_3:
			case FLOAT_4:
				enterOuterAlt(_localctx, 2);
				{
				setState(40);
				((Gen__list_jsonContext)_localctx).local__1_gen__list_json_case1 = json();
				setState(41);
				match(T__4);
				setState(42);
				((Gen__list_jsonContext)_localctx).local__3_gen__list_json_case1 = gen__list_json();
				 
				        list<json> tmp__22 ; 
				        list<json> tmp__21 ; 
				        json tmp__20 ; 
				        tmp__20 = local__1_gen__list_json_case1.value ; 
				        tmp__21 = local__3_gen__list_json_case1.value ; 
				        tmp__22 = (list<json>) cons<json>( tmp__20, tmp__21 ); 
				        ((Gen__list_jsonContext)_localctx).result =  tmp__22; 
				      
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PairContext extends ParserRuleContext {
		public (str, json) result;
		public StrContext local__1_pair_case0;
		public JsonContext local__3_pair_case0;
		public StrContext str() {
			return getRuleContext(StrContext.class,0);
		}
		public JsonContext json() {
			return getRuleContext(JsonContext.class,0);
		}
		public PairContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pair; }
	}

	public final PairContext pair() throws RecognitionException {
		PairContext _localctx = new PairContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_pair);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(47);
			((PairContext)_localctx).local__1_pair_case0 = str();
			setState(48);
			match(T__5);
			setState(49);
			((PairContext)_localctx).local__3_pair_case0 = json();
			 
			        json tmp__25 ; 
			        str tmp__24 ; 
			        (str, json) tmp__23 ; 
			        tmp__24 = local__1_pair_case0.value ; 
			        tmp__25 = local__3_pair_case0.value ; 
			        tmp__23 = new (str, json) ( tmp__24 , tmp__25 ); 
			        ((PairContext)_localctx).result =  tmp__23; 
			      
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StrContext extends ParserRuleContext {
		public str result;
		public Token local__1_str_case0;
		public TerminalNode STR_1() { return getToken(mylangParser.STR_1, 0); }
		public StrContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_str; }
	}

	public final StrContext str() throws RecognitionException {
		StrContext _localctx = new StrContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_str);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(52);
			((StrContext)_localctx).local__1_str_case0 = match(STR_1);
			 
			        token tmp__26 ; 
			        tmp__26 = local__1_str_case0.value ; 
			        ((StrContext)_localctx).result =  tmp__26.lexeme; 
			      
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StartContext extends ParserRuleContext {
		public list<json> result;
		public Gen__list_jsonContext local__1_start_case0;
		public Gen__list_jsonContext gen__list_json() {
			return getRuleContext(Gen__list_jsonContext.class,0);
		}
		public StartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_start; }
	}

	public final StartContext start() throws RecognitionException {
		StartContext _localctx = new StartContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_start);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(55);
			((StartContext)_localctx).local__1_start_case0 = gen__list_json();
			 
			        list<json> tmp__27 ; 
			        tmp__27 = local__1_start_case0.value ; 
			        ((StartContext)_localctx).result =  tmp__27; 
			      
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\13=\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\5\2 \n\2\3\3\3\3\3\3\3\3\3\3\3\3\5\3"+
		"(\n\3\3\4\3\4\3\4\3\4\3\4\3\4\5\4\60\n\4\3\5\3\5\3\5\3\5\3\5\3\6\3\6\3"+
		"\6\3\7\3\7\3\7\3\7\2\2\b\2\4\6\b\n\f\2\2\2<\2\37\3\2\2\2\4\'\3\2\2\2\6"+
		"/\3\2\2\2\b\61\3\2\2\2\n\66\3\2\2\2\f9\3\2\2\2\16\17\7\3\2\2\17\20\5\6"+
		"\4\2\20\21\7\4\2\2\21\22\b\2\1\2\22 \3\2\2\2\23\24\7\5\2\2\24\25\5\4\3"+
		"\2\25\26\7\6\2\2\26\27\b\2\1\2\27 \3\2\2\2\30\31\7\n\2\2\31 \b\2\1\2\32"+
		"\33\7\13\2\2\33 \b\2\1\2\34\35\5\n\6\2\35\36\b\2\1\2\36 \3\2\2\2\37\16"+
		"\3\2\2\2\37\23\3\2\2\2\37\30\3\2\2\2\37\32\3\2\2\2\37\34\3\2\2\2 \3\3"+
		"\2\2\2!(\b\3\1\2\"#\5\b\5\2#$\7\7\2\2$%\5\4\3\2%&\b\3\1\2&(\3\2\2\2\'"+
		"!\3\2\2\2\'\"\3\2\2\2(\5\3\2\2\2)\60\b\4\1\2*+\5\2\2\2+,\7\7\2\2,-\5\6"+
		"\4\2-.\b\4\1\2.\60\3\2\2\2/)\3\2\2\2/*\3\2\2\2\60\7\3\2\2\2\61\62\5\n"+
		"\6\2\62\63\7\b\2\2\63\64\5\2\2\2\64\65\b\5\1\2\65\t\3\2\2\2\66\67\7\t"+
		"\2\2\678\b\6\1\28\13\3\2\2\29:\5\6\4\2:;\b\7\1\2;\r\3\2\2\2\5\37\'/";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}