

%token<tbnf_token> LIT__7
%token<tbnf_token> LIT__8
%token<tbnf_token> LIT__9
%token<tbnf_token> LIT__10
%token<tbnf_token> INT_5
%token<tbnf_token> FLOAT_6
%token<tbnf_token> NULL_11
%token<tbnf_token> LIT__12
%token<tbnf_token> LIT__13
%token<tbnf_token> STR_2
%token EOF


x_json : | LIT__7 x_gen__seplist__L44__json LIT__8   {json_list($2)}
         | LIT__9 x_gen__seplist__L44__pair LIT__10   {json_dict(mk_dict($2))}
         | INT_5   {json_int(parse_int(($1: tbnf_token).lexeme))}
         | FLOAT_6   {json_float(parse_float(($1: tbnf_token).lexeme))}
         | x_str   {json_string(unesc_string($1))}
         | NULL_11   {json_null()}
x_gen__seplist__L44__pair : | x_gen__seplist__L44__pair LIT__12 x_pair   {append($1, $3)}
                            | x_pair   {append(nil(), $1)}
                            |    {nil()}
x_gen__seplist__L44__json : | x_gen__seplist__L44__json LIT__12 x_json   {append($1, $3)}
                            | x_json   {append(nil(), $1)}
                            |    {nil()}
x_pair : | x_str LIT__13 x_json   {($1,$3)}
x_str : | STR_2   {($1: tbnf_token).lexeme}
x_start : | x_json EOF   {$1}
