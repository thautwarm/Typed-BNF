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
public class mylang extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__1=1, T__2=2, T__3=3, T__4=4, T__5=5, T__6=6, T__7=7, T__8=8, T__9=9;
	public static final int
		RULE_start = 0, RULE_list = 1, RULE_str = 2, RULE_pair = 3, RULE_pair_list = 4, 
		RULE_json = 5;
	private static String[] makeRuleNames() {
		return new String[] {
			"start", "list", "str", "pair", "pair_list", "json"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
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


	    public static String[] userTokenNames = {",","STR",":","[","]","{","}","INT","FLOAT"};
	    public static String[]  sysTokenNames= {"T__1","T__2","T__3","T__4","T__5","T__6","T__7","T__8","T__9"};
	    public static boolean[] isLiteralTokens= {true,false,true,true,true,true,true,false,false};

	public mylang(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class StartContext extends ParserRuleContext {
		public list<json> result;
		public ListContext local__1_start_case0;
		public ListContext list() {
			return getRuleContext(ListContext.class,0);
		}
		public StartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_start; }
	}

	public final StartContext start() throws RecognitionException {
		StartContext _localctx = new StartContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_start);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(12);
			((StartContext)_localctx).local__1_start_case0 = list();
			 
			        list<json> tmp__1 = local__1_start_case0 ; 
			        ((StartContext)_localctx).result =  tmp__1; 
			      
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

	public static class ListContext extends ParserRuleContext {
		public list<json> result;
		public JsonContext local__1_list_case1;
		public ListContext local__3_list_case1;
		public JsonContext json() {
			return getRuleContext(JsonContext.class,0);
		}
		public ListContext list() {
			return getRuleContext(ListContext.class,0);
		}
		public ListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_list; }
	}

	public final ListContext list() throws RecognitionException {
		ListContext _localctx = new ListContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_list);
		try {
			setState(21);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case EOF:
			case T__5:
				enterOuterAlt(_localctx, 1);
				{
				 
				        list<json> tmp__2 = nil(  ); 
				        ((ListContext)_localctx).result =  tmp__2; 
				      
				}
				break;
			case T__2:
			case T__4:
			case T__6:
			case T__8:
			case T__9:
				enterOuterAlt(_localctx, 2);
				{
				setState(16);
				((ListContext)_localctx).local__1_list_case1 = json();
				setState(17);
				match(T__1);
				setState(18);
				((ListContext)_localctx).local__3_list_case1 = list();
				 
				        json tmp__3 = local__1_list_case1 ; 
				        list<json> tmp__4 = local__3_list_case1 ; 
				        list<json> tmp__5 = cons( tmp__3, tmp__4 ); 
				        ((ListContext)_localctx).result =  tmp__5; 
				      
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

	public static class StrContext extends ParserRuleContext {
		public String result;
		public Token local__1_str_case0;
		public StrContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_str; }
	}

	public final StrContext str() throws RecognitionException {
		StrContext _localctx = new StrContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_str);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(23);
			((StrContext)_localctx).local__1_str_case0 = match(T__2);
			 
			        Token tmp__6 = local__1_str_case0 ; 
			        ((StrContext)_localctx).result =  tmp__6.lexeme; 
			      
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
		public Tuple2<String, json> result;
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
			setState(26);
			((PairContext)_localctx).local__1_pair_case0 = str();
			setState(27);
			match(T__3);
			setState(28);
			((PairContext)_localctx).local__3_pair_case0 = json();
			 
			        String tmp__8 = local__1_pair_case0 ; 
			        json tmp__9 = local__3_pair_case0 ; 
			        Tuple2<String, json> tmp__7 = new Tuple2<String, json> ( tmp__8 , tmp__9 ); 
			        ((PairContext)_localctx).result =  tmp__7; 
			      
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

	public static class Pair_listContext extends ParserRuleContext {
		public list<Tuple2<String, json>> result;
		public PairContext local__1_pair_list_case1;
		public Pair_listContext local__3_pair_list_case1;
		public PairContext pair() {
			return getRuleContext(PairContext.class,0);
		}
		public Pair_listContext pair_list() {
			return getRuleContext(Pair_listContext.class,0);
		}
		public Pair_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pair_list; }
	}

	public final Pair_listContext pair_list() throws RecognitionException {
		Pair_listContext _localctx = new Pair_listContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_pair_list);
		try {
			setState(37);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__7:
				enterOuterAlt(_localctx, 1);
				{
				 
				        list<Tuple2<String, json>> tmp__10 = nil(  ); 
				        ((Pair_listContext)_localctx).result =  tmp__10; 
				      
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 2);
				{
				setState(32);
				((Pair_listContext)_localctx).local__1_pair_list_case1 = pair();
				setState(33);
				match(T__1);
				setState(34);
				((Pair_listContext)_localctx).local__3_pair_list_case1 = pair_list();
				 
				        Tuple2<String, json> tmp__11 = local__1_pair_list_case1 ; 
				        list<Tuple2<String, json>> tmp__12 = local__3_pair_list_case1 ; 
				        list<Tuple2<String, json>> tmp__13 = cons( tmp__11, tmp__12 ); 
				        ((Pair_listContext)_localctx).result =  tmp__13; 
				      
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

	public static class JsonContext extends ParserRuleContext {
		public json result;
		public ListContext local__2_json_case0;
		public Pair_listContext local__2_json_case1;
		public Token local__1_json_case2;
		public Token local__1_json_case3;
		public Token local__1_json_case4;
		public ListContext list() {
			return getRuleContext(ListContext.class,0);
		}
		public Pair_listContext pair_list() {
			return getRuleContext(Pair_listContext.class,0);
		}
		public JsonContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_json; }
	}

	public final JsonContext json() throws RecognitionException {
		JsonContext _localctx = new JsonContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_json);
		try {
			setState(55);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__4:
				enterOuterAlt(_localctx, 1);
				{
				setState(39);
				match(T__4);
				setState(40);
				((JsonContext)_localctx).local__2_json_case0 = list();
				setState(41);
				match(T__5);
				 
				        list<json> tmp__14 = local__2_json_case0 ; 
				        json tmp__15 = json_list( tmp__14 ); 
				        ((JsonContext)_localctx).result =  tmp__15; 
				      
				}
				break;
			case T__6:
				enterOuterAlt(_localctx, 2);
				{
				setState(44);
				match(T__6);
				setState(45);
				((JsonContext)_localctx).local__2_json_case1 = pair_list();
				setState(46);
				match(T__7);
				 
				        list<Tuple2<String, json>> tmp__16 = local__2_json_case1 ; 
				        dict<String, json> tmp__17 = mk_dict( tmp__16 ); 
				        json tmp__18 = json_dict( tmp__17 ); 
				        ((JsonContext)_localctx).result =  tmp__18; 
				      
				}
				break;
			case T__8:
				enterOuterAlt(_localctx, 3);
				{
				setState(49);
				((JsonContext)_localctx).local__1_json_case2 = match(T__8);
				 
				        Token tmp__19 = local__1_json_case2 ; 
				        int tmp__20 = parse_int( tmp__19.lexeme ); 
				        json tmp__21 = json_int( tmp__20 ); 
				        ((JsonContext)_localctx).result =  tmp__21; 
				      
				}
				break;
			case T__9:
				enterOuterAlt(_localctx, 4);
				{
				setState(51);
				((JsonContext)_localctx).local__1_json_case3 = match(T__9);
				 
				        Token tmp__22 = local__1_json_case3 ; 
				        double tmp__23 = parse_float( tmp__22.lexeme ); 
				        json tmp__24 = json_float( tmp__23 ); 
				        ((JsonContext)_localctx).result =  tmp__24; 
				      
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 5);
				{
				setState(53);
				((JsonContext)_localctx).local__1_json_case4 = match(T__2);
				 
				        Token tmp__25 = local__1_json_case4 ; 
				        String tmp__26 = unesc_string( tmp__25.lexeme ); 
				        json tmp__27 = json_string( tmp__26 ); 
				        ((JsonContext)_localctx).result =  tmp__27; 
				      
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

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\13<\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3"+
		"\5\3\30\n\3\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\5"+
		"\6(\n\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3"+
		"\7\5\7:\n\7\3\7\2\2\b\2\4\6\b\n\f\2\2\2;\2\16\3\2\2\2\4\27\3\2\2\2\6\31"+
		"\3\2\2\2\b\34\3\2\2\2\n\'\3\2\2\2\f9\3\2\2\2\16\17\5\4\3\2\17\20\b\2\1"+
		"\2\20\3\3\2\2\2\21\30\b\3\1\2\22\23\5\f\7\2\23\24\7\3\2\2\24\25\5\4\3"+
		"\2\25\26\b\3\1\2\26\30\3\2\2\2\27\21\3\2\2\2\27\22\3\2\2\2\30\5\3\2\2"+
		"\2\31\32\7\4\2\2\32\33\b\4\1\2\33\7\3\2\2\2\34\35\5\6\4\2\35\36\7\5\2"+
		"\2\36\37\5\f\7\2\37 \b\5\1\2 \t\3\2\2\2!(\b\6\1\2\"#\5\b\5\2#$\7\3\2\2"+
		"$%\5\n\6\2%&\b\6\1\2&(\3\2\2\2\'!\3\2\2\2\'\"\3\2\2\2(\13\3\2\2\2)*\7"+
		"\6\2\2*+\5\4\3\2+,\7\7\2\2,-\b\7\1\2-:\3\2\2\2./\7\b\2\2/\60\5\n\6\2\60"+
		"\61\7\t\2\2\61\62\b\7\1\2\62:\3\2\2\2\63\64\7\n\2\2\64:\b\7\1\2\65\66"+
		"\7\13\2\2\66:\b\7\1\2\678\7\4\2\28:\b\7\1\29)\3\2\2\29.\3\2\2\29\63\3"+
		"\2\2\29\65\3\2\2\29\67\3\2\2\2:\r\3\2\2\2\5\27\'9";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}