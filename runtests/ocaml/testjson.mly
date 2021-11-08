

%token<tbnf_token> LIT__5
%token<tbnf_token> LIT__6
%token<tbnf_token> LIT__7
%token<tbnf_token> LIT__8
%token<tbnf_token> INT_3
%token<tbnf_token> FLOAT_4
%token<tbnf_token> LIT__9
%token<tbnf_token> LIT__10
%token<tbnf_token> STR_1


x_json : | LIT__5 x_gen__list_json LIT__6   {json_list($2)}
         | LIT__7 x_gen__seplist__L44__pair LIT__8   {json_dict(mk_dict($2))}
         | INT_3   {json_int(parse_int(($1: string).lexeme))}
         | FLOAT_4   {json_float(parse_float(($1: string).lexeme))}
         | x_str   {json_string(unesc_string($1))}
x_gen__seplist__L44__pair : |    {nil()}
                            | x_pair LIT__9 x_gen__seplist__L44__pair   {cons($1, $3)}
x_gen__list_json : |    {nil()}
                   | x_json LIT__9 x_gen__list_json   {cons($1, $3)}
x_pair : | x_str LIT__10 x_json   {($1,$3)}
x_str : | STR_1   {($1: string).lexeme}
x_start : | x_gen__list_json   {$1}
