grammar simple_json;
options { language = CSharp; }
start returns [JsonValue result]: v=start__y_ EOF { $result = _localctx.v.result; };





start__y_ returns [JsonValue result]
: start__y__0__1=json { 
                $result = _localctx.start__y__0__1.result;
            }
;
jsonpair returns [(string, JsonValue) result]
: jsonpair_0__1=STR ':' jsonpair_0__3=json { 
                $result = (unesc(getStr(_localctx.jsonpair_0__1)), _localctx.jsonpair_0__3.result);
            }
;
seplist_o__i__s__i__s_json_p_ returns [System.Collections.Generic.List<JsonValue> result]
: seplist_o__i__s__i__s_json_p__0__1=json { 
                $result = new System.Collections.Generic.List<JsonValue> { _localctx.seplist_o__i__s__i__s_json_p__0__1.result };
            }
| seplist_o__i__s__i__s_json_p__1__1=seplist_o__i__s__i__s_json_p_ ',' seplist_o__i__s__i__s_json_p__1__3=json { 
                $result = appendList<JsonValue>(_localctx.seplist_o__i__s__i__s_json_p__1__1.result, _localctx.seplist_o__i__s__i__s_json_p__1__3.result);
            }
;
seplist_o__i__s__i__s_jsonpair_p_ returns [System.Collections.Generic.List<(string, JsonValue)> result]
: seplist_o__i__s__i__s_jsonpair_p__0__1=jsonpair { 
                $result = new System.Collections.Generic.List<(string, JsonValue)> { _localctx.seplist_o__i__s__i__s_jsonpair_p__0__1.result };
            }
| seplist_o__i__s__i__s_jsonpair_p__1__1=seplist_o__i__s__i__s_jsonpair_p_ ',' seplist_o__i__s__i__s_jsonpair_p__1__3=jsonpair { 
                $result = appendList<(string, JsonValue)>(_localctx.seplist_o__i__s__i__s_jsonpair_p__1__1.result, _localctx.seplist_o__i__s__i__s_jsonpair_p__1__3.result);
            }
;
json returns [JsonValue result]
: json_0__1=INT { 
                $result = jsonInt(parseInt(getStr(_localctx.json_0__1)));
            }
| json_1__1=FLOAT { 
                $result = jsonFlt(parseFlt(getStr(_localctx.json_1__1)));
            }
| 'null' { 
                $result = jsonNull;
            }
| json_3__1=STR { 
                $result = jsonStr(unesc(getStr(_localctx.json_3__1)));
            }
| '[' ']' { 
                $result = jsonList(new System.Collections.Generic.List<JsonValue> {  });
            }
| '{' '}' { 
                $result = jsonDict(new System.Collections.Generic.List<(string, JsonValue)> {  });
            }
| '[' json_6__2=seplist_o__i__s__i__s_json_p_ ']' { 
                $result = jsonList(_localctx.json_6__2.result);
            }
| '{' json_7__2=seplist_o__i__s__i__s_jsonpair_p_ '}' { 
                $result = jsonDict(_localctx.json_7__2.result);
            }
;
fragment DIGIT : [\u0030-\u0039] ;
INT : DIGIT+ ;
FLOAT : DIGIT* '.' INT ;
STR : '"' (('\\' .) | ~'"')* '"' ;
SPACE : ('\t' | '\n' | '\r' | ' ')+ -> skip;
