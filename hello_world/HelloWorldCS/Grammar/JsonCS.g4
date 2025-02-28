grammar JsonCS;
options { language = CSharp; }
@parser::members {
public static JsonPair JsonPair (string name,Json value)
{
    return (JsonPair) new JsonPair(name,value);
}
public static Json JStr (string value)
{
    return (Json) new JStr(value);
}
public static Json JNull ()
{
    return (Json) new JNull();
}
public static Json JList (System.Collections.Generic.List<Json> elements)
{
    return (Json) new JList(elements);
}
public static Json JInt (int value)
{
    return (Json) new JInt(value);
}
public static Json JFlt (double value)
{
    return (Json) new JFlt(value);
}
public static Json JDict (System.Collections.Generic.List<JsonPair> value)
{
    return (Json) new JDict(value);
}
public static Json JBool (bool value)
{
    return (Json) new JBool(value);
}
}
start returns [Json result]: v=start__y_ EOF{ $result = _localctx.v.result; };
start__y_ returns [Json result]
: start__y__0__1=json { $result = _localctx.start__y__0__1.result;
            }
;
jsonpair returns [JsonPair result]
: jsonpair_0__1=STR ':' jsonpair_0__3=json { $result = (JsonPair) JsonPair((string) (string) unesc((string) (string) getStr((IToken) _localctx.jsonpair_0__1)), (Json) _localctx.jsonpair_0__3.result);
            }
;
seplist_o__i__s__i__s_json_p_ returns [System.Collections.Generic.List<Json> result]
: seplist_o__i__s__i__s_json_p__0__1=json { $result = new System.Collections.Generic.List<Json> { _localctx.seplist_o__i__s__i__s_json_p__0__1.result };
            }
| seplist_o__i__s__i__s_json_p__1__1=seplist_o__i__s__i__s_json_p_ ',' seplist_o__i__s__i__s_json_p__1__3=json { $result = (System.Collections.Generic.List<Json>) appendList<Json>((System.Collections.Generic.List<Json>) _localctx.seplist_o__i__s__i__s_json_p__1__1.result, (Json) _localctx.seplist_o__i__s__i__s_json_p__1__3.result);
            }
;
seplist_o__i__s__i__s_jsonpair_p_ returns [System.Collections.Generic.List<JsonPair> result]
: seplist_o__i__s__i__s_jsonpair_p__0__1=jsonpair { $result = new System.Collections.Generic.List<JsonPair> { _localctx.seplist_o__i__s__i__s_jsonpair_p__0__1.result };
            }
| seplist_o__i__s__i__s_jsonpair_p__1__1=seplist_o__i__s__i__s_jsonpair_p_ ',' seplist_o__i__s__i__s_jsonpair_p__1__3=jsonpair { $result = (System.Collections.Generic.List<JsonPair>) appendList<JsonPair>((System.Collections.Generic.List<JsonPair>) _localctx.seplist_o__i__s__i__s_jsonpair_p__1__1.result, (JsonPair) _localctx.seplist_o__i__s__i__s_jsonpair_p__1__3.result);
            }
;
json returns [Json result]
: json_0__1=INT { $result = (Json) JInt((int) (int) toInt((string) (string) getStr((IToken) _localctx.json_0__1)));
            }
| json_1__1=FLOAT { $result = (Json) JFlt((double) (double) toFlt((string) (string) getStr((IToken) _localctx.json_1__1)));
            }
| 'null' { $result = (Json) JNull();
            }
| json_3__1=STR { $result = (Json) JStr((string) (string) unesc((string) (string) getStr((IToken) _localctx.json_3__1)));
            }
| '[' ']' { $result = (Json) JList((System.Collections.Generic.List<Json>) new System.Collections.Generic.List<Json> {  });
            }
| '{' '}' { $result = (Json) JDict((System.Collections.Generic.List<JsonPair>) new System.Collections.Generic.List<JsonPair> {  });
            }
| 'true' { $result = (Json) JBool((bool) true);
            }
| 'false' { $result = (Json) JBool((bool) false);
            }
| '[' json_8__2=seplist_o__i__s__i__s_json_p_ ']' { $result = (Json) JList((System.Collections.Generic.List<Json>) _localctx.json_8__2.result);
            }
| '{' json_9__2=seplist_o__i__s__i__s_jsonpair_p_ '}' { $result = (Json) JDict((System.Collections.Generic.List<JsonPair>) _localctx.json_9__2.result);
            }
;
fragment DIGIT : [\u0030-\u0039] ;
INT : DIGIT+ ;
FLOAT : DIGIT* '.' INT ;
STR : '"' (('\\' .) | ~'"')* '"' ;
SPACE : ('\t' | '\n' | '\r' | ' ')+ -> channel(HIDDEN);
