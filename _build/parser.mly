%token <int> INT
%token PLUS
%token EOF

%start <Language.exp option> prog
%%
prog: 
  | EOF { None }
  | v = express { Some v }

express:
  | a=INT; PLUS; b=INT { AddInt (Value (Int (a)), Value (Int (b)))}
