parser grammar mylang;
tokens {T__1,T__2,T__3,T__4,T__5,T__6,T__7,T__8,T__9}
@members {
    public static String[] userTokenNames = {",","STR",":","[","]","{","}","INT","FLOAT"};
    public static String[]  sysTokenNames= {"T__1","T__2","T__3","T__4","T__5","T__6","T__7","T__8","T__9"};
    public static boolean[] isLiteralTokens= {true,false,true,true,true,true,true,false,false};
}
start returns [list<json> result] :
      local__1_start_case0=list { 
        list<json> tmp__1 = local__1_start_case0 ; 
        $result = tmp__1; 
      } 
; 
list returns [list<json> result] :
      { 
        list<json> tmp__2 = nil(  ); 
        $result = tmp__2; 
      } 
    | local__1_list_case1=json T__1 local__3_list_case1=list { 
        json tmp__3 = local__1_list_case1 ; 
        list<json> tmp__4 = local__3_list_case1 ; 
        list<json> tmp__5 = cons( tmp__3, tmp__4 ); 
        $result = tmp__5; 
      } 
; 
str returns [String result] :
      local__1_str_case0=T__2 { 
        Token tmp__6 = local__1_str_case0 ; 
        $result = tmp__6.lexeme; 
      } 
; 
pair returns [Tuple2<String, json> result] :
      local__1_pair_case0=str T__3 local__3_pair_case0=json { 
        String tmp__8 = local__1_pair_case0 ; 
        json tmp__9 = local__3_pair_case0 ; 
        Tuple2<String, json> tmp__7 = new Tuple2<String, json> ( tmp__8 , tmp__9 ); 
        $result = tmp__7; 
      } 
; 
pair_list returns [list<Tuple2<String, json>> result] :
      { 
        list<Tuple2<String, json>> tmp__10 = nil(  ); 
        $result = tmp__10; 
      } 
    | local__1_pair_list_case1=pair T__1 local__3_pair_list_case1=pair_list { 
        Tuple2<String, json> tmp__11 = local__1_pair_list_case1 ; 
        list<Tuple2<String, json>> tmp__12 = local__3_pair_list_case1 ; 
        list<Tuple2<String, json>> tmp__13 = cons( tmp__11, tmp__12 ); 
        $result = tmp__13; 
      } 
; 
json returns [json result] :
      T__4 local__2_json_case0=list T__5 { 
        list<json> tmp__14 = local__2_json_case0 ; 
        json tmp__15 = json_list( tmp__14 ); 
        $result = tmp__15; 
      } 
    | T__6 local__2_json_case1=pair_list T__7 { 
        list<Tuple2<String, json>> tmp__16 = local__2_json_case1 ; 
        dict<String, json> tmp__17 = mk_dict( tmp__16 ); 
        json tmp__18 = json_dict( tmp__17 ); 
        $result = tmp__18; 
      } 
    | local__1_json_case2=T__8 { 
        Token tmp__19 = local__1_json_case2 ; 
        int tmp__20 = parse_int( tmp__19.lexeme ); 
        json tmp__21 = json_int( tmp__20 ); 
        $result = tmp__21; 
      } 
    | local__1_json_case3=T__9 { 
        Token tmp__22 = local__1_json_case3 ; 
        double tmp__23 = parse_float( tmp__22.lexeme ); 
        json tmp__24 = json_float( tmp__23 ); 
        $result = tmp__24; 
      } 
    | local__1_json_case4=T__2 { 
        Token tmp__25 = local__1_json_case4 ; 
        String tmp__26 = unesc_string( tmp__25.lexeme ); 
        json tmp__27 = json_string( tmp__26 ); 
        $result = tmp__27; 
      } 
; 
