
import * as antlr from "antlr4ng";
import { Token } from "antlr4ng";

import { JsonListener } from "./JsonListener.js";
// for running tests with parameters, TODO: discuss strategy for typed parameters in CI
// eslint-disable-next-line no-unused-vars
type int = number;


import { JBool, JDict, JFlt, JInt, JList, JNull, JStr, Json_t, JsonPair_t, JsonPair, appendList, unesc, getStr, toFlt, toInt } from "./JsonConstructor"


export class JsonParser extends antlr.Parser {
    public static readonly T__0 = 1;
    public static readonly T__1 = 2;
    public static readonly T__2 = 3;
    public static readonly T__3 = 4;
    public static readonly T__4 = 5;
    public static readonly T__5 = 6;
    public static readonly T__6 = 7;
    public static readonly T__7 = 8;
    public static readonly T__8 = 9;
    public static readonly INT = 10;
    public static readonly FLOAT = 11;
    public static readonly STR = 12;
    public static readonly SPACE = 13;
    public static readonly RULE_start = 0;
    public static readonly RULE_start__y_ = 1;
    public static readonly RULE_jsonpair = 2;
    public static readonly RULE_seplist_o__i__s__i__s_json_p_ = 3;
    public static readonly RULE_seplist_o__i__s__i__s_jsonpair_p_ = 4;
    public static readonly RULE_json = 5;

    public static readonly literalNames = [
        null, "':'", "','", "'null'", "'['", "']'", "'{'", "'}'", "'true'", 
        "'false'"
    ];

    public static readonly symbolicNames = [
        null, null, null, null, null, null, null, null, null, null, "INT", 
        "FLOAT", "STR", "SPACE"
    ];
    public static readonly ruleNames = [
        "start", "start__y_", "jsonpair", "seplist_o__i__s__i__s_json_p_", 
        "seplist_o__i__s__i__s_jsonpair_p_", "json",
    ];

    public get grammarFileName(): string { return "Json.g4"; }
    public get literalNames(): (string | null)[] { return JsonParser.literalNames; }
    public get symbolicNames(): (string | null)[] { return JsonParser.symbolicNames; }
    public get ruleNames(): string[] { return JsonParser.ruleNames; }
    public get serializedATN(): number[] { return JsonParser._serializedATN; }

    protected createFailedPredicateException(predicate?: string, message?: string): antlr.FailedPredicateException {
        return new antlr.FailedPredicateException(this, predicate, message);
    }

    public constructor(input: antlr.TokenStream) {
        super(input);
        this.interpreter = new antlr.ParserATNSimulator(this, JsonParser._ATN, JsonParser.decisionsToDFA, new antlr.PredictionContextCache());
    }
    public start(): StartContext {
        let localContext = new StartContext(this.context, this.state);
        this.enterRule(localContext, 0, JsonParser.RULE_start);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 12;
            localContext._v = this.start__y_();
            this.state = 13;
            this.match(JsonParser.EOF);
             localContext!.result = localContext._v.result; 
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public start__y_(): Start__y_Context {
        let localContext = new Start__y_Context(this.context, this.state);
        this.enterRule(localContext, 2, JsonParser.RULE_start__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 16;
            localContext._start__y__0__1 = this.json();
             localContext!.result = localContext._start__y__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public jsonpair(): JsonpairContext {
        let localContext = new JsonpairContext(this.context, this.state);
        this.enterRule(localContext, 4, JsonParser.RULE_jsonpair);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 19;
            localContext._jsonpair_0__1 = this.match(JsonParser.STR);
            this.state = 20;
            this.match(JsonParser.T__0);
            this.state = 21;
            localContext._jsonpair_0__3 = this.json();
             localContext!.result = <JsonPair_t> JsonPair(<string> <string> unesc(<string> <string> getStr(<antlr.Token> localContext._jsonpair_0__1)), <Json_t> localContext._jsonpair_0__3.result);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public seplist_o__i__s__i__s_json_p_(): Seplist_o__i__s__i__s_json_p_Context;
    public seplist_o__i__s__i__s_json_p_(_p: number): Seplist_o__i__s__i__s_json_p_Context;
    public seplist_o__i__s__i__s_json_p_(_p?: number): Seplist_o__i__s__i__s_json_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Seplist_o__i__s__i__s_json_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 6;
        this.enterRecursionRule(localContext, 6, JsonParser.RULE_seplist_o__i__s__i__s_json_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 25;
            localContext._seplist_o__i__s__i__s_json_p__0__1 = this.json();
             localContext!.result = <Array<Json_t>>[ localContext._seplist_o__i__s__i__s_json_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 35;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 0, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Seplist_o__i__s__i__s_json_p_Context(parentContext, parentState);
                    localContext._seplist_o__i__s__i__s_json_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, JsonParser.RULE_seplist_o__i__s__i__s_json_p_);
                    this.state = 28;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 29;
                    this.match(JsonParser.T__1);
                    this.state = 30;
                    localContext._seplist_o__i__s__i__s_json_p__2__3 = this.json();
                     localContext!.result = <Array<Json_t>> appendList<Json_t>(<Array<Json_t>> localContext._seplist_o__i__s__i__s_json_p__2__1.result, <Json_t> localContext._seplist_o__i__s__i__s_json_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 37;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 0, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public seplist_o__i__s__i__s_jsonpair_p_(): Seplist_o__i__s__i__s_jsonpair_p_Context;
    public seplist_o__i__s__i__s_jsonpair_p_(_p: number): Seplist_o__i__s__i__s_jsonpair_p_Context;
    public seplist_o__i__s__i__s_jsonpair_p_(_p?: number): Seplist_o__i__s__i__s_jsonpair_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Seplist_o__i__s__i__s_jsonpair_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 8;
        this.enterRecursionRule(localContext, 8, JsonParser.RULE_seplist_o__i__s__i__s_jsonpair_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 39;
            localContext._seplist_o__i__s__i__s_jsonpair_p__0__1 = this.jsonpair();
             localContext!.result = <Array<JsonPair_t>>[ localContext._seplist_o__i__s__i__s_jsonpair_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 49;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 1, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Seplist_o__i__s__i__s_jsonpair_p_Context(parentContext, parentState);
                    localContext._seplist_o__i__s__i__s_jsonpair_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, JsonParser.RULE_seplist_o__i__s__i__s_jsonpair_p_);
                    this.state = 42;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 43;
                    this.match(JsonParser.T__1);
                    this.state = 44;
                    localContext._seplist_o__i__s__i__s_jsonpair_p__2__3 = this.jsonpair();
                     localContext!.result = <Array<JsonPair_t>> appendList<JsonPair_t>(<Array<JsonPair_t>> localContext._seplist_o__i__s__i__s_jsonpair_p__2__1.result, <JsonPair_t> localContext._seplist_o__i__s__i__s_jsonpair_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 51;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 1, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public json(): JsonContext {
        let localContext = new JsonContext(this.context, this.state);
        this.enterRule(localContext, 10, JsonParser.RULE_json);
        try {
            this.state = 80;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 2, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 52;
                localContext._json_0__1 = this.match(JsonParser.INT);
                 localContext!.result = <Json_t> JInt(<number> <number> toInt(<string> <string> getStr(<antlr.Token> localContext._json_0__1)));
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 54;
                localContext._json_2__1 = this.match(JsonParser.FLOAT);
                 localContext!.result = <Json_t> JFlt(<number> <number> toFlt(<string> <string> getStr(<antlr.Token> localContext._json_2__1)));
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 56;
                this.match(JsonParser.T__2);
                 localContext!.result = <Json_t> JNull();
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 58;
                localContext._json_6__1 = this.match(JsonParser.STR);
                 localContext!.result = <Json_t> JStr(<string> <string> unesc(<string> <string> getStr(<antlr.Token> localContext._json_6__1)));
                            
                }
                break;
            case 5:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 60;
                this.match(JsonParser.T__3);
                this.state = 61;
                this.match(JsonParser.T__4);
                 localContext!.result = <Json_t> JList(<Array<Json_t>> <Array<Json_t>>[  ]);
                            
                }
                break;
            case 6:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 63;
                this.match(JsonParser.T__5);
                this.state = 64;
                this.match(JsonParser.T__6);
                 localContext!.result = <Json_t> JDict(<Array<JsonPair_t>> <Array<JsonPair_t>>[  ]);
                            
                }
                break;
            case 7:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 66;
                this.match(JsonParser.T__7);
                 localContext!.result = <Json_t> JBool(<boolean> true);
                            
                }
                break;
            case 8:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 68;
                this.match(JsonParser.T__8);
                 localContext!.result = <Json_t> JBool(<boolean> false);
                            
                }
                break;
            case 9:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 70;
                this.match(JsonParser.T__3);
                this.state = 71;
                localContext._json_16__2 = this.seplist_o__i__s__i__s_json_p_(0);
                this.state = 72;
                this.match(JsonParser.T__4);
                 localContext!.result = <Json_t> JList(<Array<Json_t>> localContext._json_16__2.result);
                            
                }
                break;
            case 10:
                this.enterOuterAlt(localContext, 10);
                {
                this.state = 75;
                this.match(JsonParser.T__5);
                this.state = 76;
                localContext._json_18__2 = this.seplist_o__i__s__i__s_jsonpair_p_(0);
                this.state = 77;
                this.match(JsonParser.T__6);
                 localContext!.result = <Json_t> JDict(<Array<JsonPair_t>> localContext._json_18__2.result);
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public override sempred(localContext: antlr.ParserRuleContext | null, ruleIndex: number, predIndex: number): boolean {
        switch (ruleIndex) {
        case 3:
            return this.seplist_o__i__s__i__s_json_p__sempred(localContext as Seplist_o__i__s__i__s_json_p_Context, predIndex);
        case 4:
            return this.seplist_o__i__s__i__s_jsonpair_p__sempred(localContext as Seplist_o__i__s__i__s_jsonpair_p_Context, predIndex);
        }
        return true;
    }
    private seplist_o__i__s__i__s_json_p__sempred(localContext: Seplist_o__i__s__i__s_json_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 0:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private seplist_o__i__s__i__s_jsonpair_p__sempred(localContext: Seplist_o__i__s__i__s_jsonpair_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 1:
            return this.precpred(this.context, 1);
        }
        return true;
    }

    public static readonly _serializedATN: number[] = [
        4,1,13,83,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,1,0,1,
        0,1,0,1,0,1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,
        3,1,3,1,3,1,3,5,3,34,8,3,10,3,12,3,37,9,3,1,4,1,4,1,4,1,4,1,4,1,
        4,1,4,1,4,1,4,5,4,48,8,4,10,4,12,4,51,9,4,1,5,1,5,1,5,1,5,1,5,1,
        5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
        5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,81,8,5,1,5,0,2,6,8,6,0,2,4,6,8,10,
        0,0,87,0,12,1,0,0,0,2,16,1,0,0,0,4,19,1,0,0,0,6,24,1,0,0,0,8,38,
        1,0,0,0,10,80,1,0,0,0,12,13,3,2,1,0,13,14,5,0,0,1,14,15,6,0,-1,0,
        15,1,1,0,0,0,16,17,3,10,5,0,17,18,6,1,-1,0,18,3,1,0,0,0,19,20,5,
        12,0,0,20,21,5,1,0,0,21,22,3,10,5,0,22,23,6,2,-1,0,23,5,1,0,0,0,
        24,25,6,3,-1,0,25,26,3,10,5,0,26,27,6,3,-1,0,27,35,1,0,0,0,28,29,
        10,1,0,0,29,30,5,2,0,0,30,31,3,10,5,0,31,32,6,3,-1,0,32,34,1,0,0,
        0,33,28,1,0,0,0,34,37,1,0,0,0,35,33,1,0,0,0,35,36,1,0,0,0,36,7,1,
        0,0,0,37,35,1,0,0,0,38,39,6,4,-1,0,39,40,3,4,2,0,40,41,6,4,-1,0,
        41,49,1,0,0,0,42,43,10,1,0,0,43,44,5,2,0,0,44,45,3,4,2,0,45,46,6,
        4,-1,0,46,48,1,0,0,0,47,42,1,0,0,0,48,51,1,0,0,0,49,47,1,0,0,0,49,
        50,1,0,0,0,50,9,1,0,0,0,51,49,1,0,0,0,52,53,5,10,0,0,53,81,6,5,-1,
        0,54,55,5,11,0,0,55,81,6,5,-1,0,56,57,5,3,0,0,57,81,6,5,-1,0,58,
        59,5,12,0,0,59,81,6,5,-1,0,60,61,5,4,0,0,61,62,5,5,0,0,62,81,6,5,
        -1,0,63,64,5,6,0,0,64,65,5,7,0,0,65,81,6,5,-1,0,66,67,5,8,0,0,67,
        81,6,5,-1,0,68,69,5,9,0,0,69,81,6,5,-1,0,70,71,5,4,0,0,71,72,3,6,
        3,0,72,73,5,5,0,0,73,74,6,5,-1,0,74,81,1,0,0,0,75,76,5,6,0,0,76,
        77,3,8,4,0,77,78,5,7,0,0,78,79,6,5,-1,0,79,81,1,0,0,0,80,52,1,0,
        0,0,80,54,1,0,0,0,80,56,1,0,0,0,80,58,1,0,0,0,80,60,1,0,0,0,80,63,
        1,0,0,0,80,66,1,0,0,0,80,68,1,0,0,0,80,70,1,0,0,0,80,75,1,0,0,0,
        81,11,1,0,0,0,3,35,49,80
    ];

    private static __ATN: antlr.ATN;
    public static get _ATN(): antlr.ATN {
        if (!JsonParser.__ATN) {
            JsonParser.__ATN = new antlr.ATNDeserializer().deserialize(JsonParser._serializedATN);
        }

        return JsonParser.__ATN;
    }


    private static readonly vocabulary = new antlr.Vocabulary(JsonParser.literalNames, JsonParser.symbolicNames, []);

    public override get vocabulary(): antlr.Vocabulary {
        return JsonParser.vocabulary;
    }

    private static readonly decisionsToDFA = JsonParser._ATN.decisionToState.map( (ds: antlr.DecisionState, index: number) => new antlr.DFA(ds, index) );
}

export class StartContext extends antlr.ParserRuleContext {
    public result: Json_t;
    public _v?: Start__y_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public EOF(): antlr.TerminalNode {
        return this.getToken(JsonParser.EOF, 0)!;
    }
    public start__y_(): Start__y_Context {
        return this.getRuleContext(0, Start__y_Context)!;
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_start;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterStart) {
             listener.enterStart(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitStart) {
             listener.exitStart(this);
        }
    }
}


export class Start__y_Context extends antlr.ParserRuleContext {
    public result: Json_t;
    public _start__y__0__1?: JsonContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public json(): JsonContext {
        return this.getRuleContext(0, JsonContext)!;
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_start__y_;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterStart__y_) {
             listener.enterStart__y_(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitStart__y_) {
             listener.exitStart__y_(this);
        }
    }
}


export class JsonpairContext extends antlr.ParserRuleContext {
    public result: JsonPair_t;
    public _jsonpair_0__1?: Token | null;
    public _jsonpair_0__3?: JsonContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public STR(): antlr.TerminalNode {
        return this.getToken(JsonParser.STR, 0)!;
    }
    public json(): JsonContext {
        return this.getRuleContext(0, JsonContext)!;
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_jsonpair;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterJsonpair) {
             listener.enterJsonpair(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitJsonpair) {
             listener.exitJsonpair(this);
        }
    }
}


export class Seplist_o__i__s__i__s_json_p_Context extends antlr.ParserRuleContext {
    public result: Array<Json_t>;
    public _seplist_o__i__s__i__s_json_p__2__1?: Seplist_o__i__s__i__s_json_p_Context;
    public _seplist_o__i__s__i__s_json_p__0__1?: JsonContext;
    public _seplist_o__i__s__i__s_json_p__2__3?: JsonContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public json(): JsonContext {
        return this.getRuleContext(0, JsonContext)!;
    }
    public seplist_o__i__s__i__s_json_p_(): Seplist_o__i__s__i__s_json_p_Context | null {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_json_p_Context);
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_seplist_o__i__s__i__s_json_p_;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterSeplist_o__i__s__i__s_json_p_) {
             listener.enterSeplist_o__i__s__i__s_json_p_(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitSeplist_o__i__s__i__s_json_p_) {
             listener.exitSeplist_o__i__s__i__s_json_p_(this);
        }
    }
}


export class Seplist_o__i__s__i__s_jsonpair_p_Context extends antlr.ParserRuleContext {
    public result: Array<JsonPair_t>;
    public _seplist_o__i__s__i__s_jsonpair_p__2__1?: Seplist_o__i__s__i__s_jsonpair_p_Context;
    public _seplist_o__i__s__i__s_jsonpair_p__0__1?: JsonpairContext;
    public _seplist_o__i__s__i__s_jsonpair_p__2__3?: JsonpairContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public jsonpair(): JsonpairContext {
        return this.getRuleContext(0, JsonpairContext)!;
    }
    public seplist_o__i__s__i__s_jsonpair_p_(): Seplist_o__i__s__i__s_jsonpair_p_Context | null {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_jsonpair_p_Context);
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_seplist_o__i__s__i__s_jsonpair_p_;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterSeplist_o__i__s__i__s_jsonpair_p_) {
             listener.enterSeplist_o__i__s__i__s_jsonpair_p_(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitSeplist_o__i__s__i__s_jsonpair_p_) {
             listener.exitSeplist_o__i__s__i__s_jsonpair_p_(this);
        }
    }
}


export class JsonContext extends antlr.ParserRuleContext {
    public result: Json_t;
    public _json_0__1?: Token | null;
    public _json_2__1?: Token | null;
    public _json_6__1?: Token | null;
    public _json_16__2?: Seplist_o__i__s__i__s_json_p_Context;
    public _json_18__2?: Seplist_o__i__s__i__s_jsonpair_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public INT(): antlr.TerminalNode | null {
        return this.getToken(JsonParser.INT, 0);
    }
    public FLOAT(): antlr.TerminalNode | null {
        return this.getToken(JsonParser.FLOAT, 0);
    }
    public STR(): antlr.TerminalNode | null {
        return this.getToken(JsonParser.STR, 0);
    }
    public seplist_o__i__s__i__s_json_p_(): Seplist_o__i__s__i__s_json_p_Context | null {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_json_p_Context);
    }
    public seplist_o__i__s__i__s_jsonpair_p_(): Seplist_o__i__s__i__s_jsonpair_p_Context | null {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_jsonpair_p_Context);
    }
    public override get ruleIndex(): number {
        return JsonParser.RULE_json;
    }
    public override enterRule(listener: JsonListener): void {
        if(listener.enterJson) {
             listener.enterJson(this);
        }
    }
    public override exitRule(listener: JsonListener): void {
        if(listener.exitJson) {
             listener.exitJson(this);
        }
    }
}
