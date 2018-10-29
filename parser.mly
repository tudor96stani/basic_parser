%token CLASS XTENDS INT_TYPE FLOAT_TYPE BOOL_TYPE VOID_TYPE IF THEN ELSE NEW WHILE INSTOF TRUE FALSE NULL BOT
%token <int> INT
%token <float> FLOAT 
%token <string> ID
%token VOID
%token COLON COMMA SEMICOL DOT LEFT_BRACE RIGHT_BRACE LEFT_BRACK RIGHT_BRACK LEFT_RBRACK RIGHT_RBRACK
%token EQUALS HASHTAG VVOID PLUS_FLOAT MINUS_FLOAT TIMES_FLOAT DIVIDE_FLOAT PLUS_INT MINUS_INT TIMES_INT DIVIDE_INT
%token AND OR NOT GR LS GE LE EQEQ NE
%token EOF

%start <Language.progr option> start
%%
start: 
  | EOF { None }
  | p = prog; EOF { Some p}

prog: dl = def_list { Progr (dl) }
def_list: d = def;  dl1=def_list1 { d@dl1 }
def_list1:
  | { [] }
  | SEMICOL; dl=def_list { dl }
def: CLASS; clname=ID; XTENDS; parname=ID; LEFT_BRACE; fl=field_list; HASHTAG; ml=meth_list; RIGHT_BRACE {
  [Language.Def (clname,Language.ClassDecl (clname,parname,fl,ml))]
}
field_list: fld=field; fl1=field_list1 { fld@fl1 }
field_list1: 
  | { [] }
  | SEMICOL; fl =field_list { fl }
meth_list: mth=meth; ml1=meth_list1 { mth@ml1 }
meth_list1:
  | { [] }
  | ml=meth_list { ml }
field: 
  t=typ; 
  fn=ID 
  { [Language.FldDecl (t,fn)]}
typ: | t=prim { Language.Tprim (t) }
     | cn=ID { Language.Tclass (cn) }
     | BOT { Language.Tbot }
prim: | INT_TYPE  { Language.Tint }
      | FLOAT_TYPE { Language.Tfloat }
      | BOOL_TYPE { Language.Tbool }
      | VOID_TYPE { Language.Tvoid }
meth: tp=typ; mn=ID; LEFT_RBRACK; prl=param_list; RIGHT_RBRACK; e=blkExp
  { [Language.MethDecl (tp,mn,prl,e)]}
param_list: pr=prm; pl1=param_list1 { pr@pl1 }
param_list1: | { [] }
             | COMMA; pl=param_list { pl }
prm: t=typ; pn=ID { [Language.Fprm (t,pn)]}
exp: 
  | NULL{ Language.Value (Language.Vnull) }
  | vall=INT { Language.Value (Language.Int (vall))}
  | vall=FLOAT { Language.Value (Language.Float (vall))}
  | TRUE { Language.Value (Language.Bool (true))}
  | FALSE { Language.Value (Language.Bool (false))}
  | VOID { Language.Value (Language.Vvoid) }
  | vname=ID { Language.Var (vname) }
  | obj=ID; DOT; fld=ID {Language.Vfld (obj,fld) }
  | vname=ID; EQUALS; e=exp; SEMICOL  { Language.AsgnV (vname,e) }
  | obj=ID; DOT; fld=ID; EQUALS; e=exp; SEMICOL  { Language.AsgnF (obj,fld,e) }
  | e1=exp; SEMICOL; e2=exp; SEMICOL  { Language.Seq (e1,e2) }
  | IF; vname=ID; THEN; LEFT_BRACE; then_exp=blkExp; RIGHT_BRACE; ELSE LEFT_BRACE; else_exp=blkExp; RIGHT_BRACE
    { If (vname,then_exp,else_exp) }
  | NEW; cn=ID; LEFT_RBRACK; v=vlist; RIGHT_RBRACK; SEMICOL  { Language.NewObj (cn,v) }
  | obj=ID; DOT; mname=ID; LEFT_RBRACK; v=meth_inv_params; RIGHT_RBRACK; SEMICOL  { Language.MethInv (obj,mname,v) }
  | WHILE; v=ID; LEFT_BRACE; e=exp; RIGHT_BRACE { Language.WhileExp (v,e) }
  | LEFT_RBRACK; cn=ID; RIGHT_RBRACK; v=ID; SEMICOL  { Language.Cast (cn,v) }
  | v=ID; INSTOF; cn=ID; SEMICOL  { Language.InstOf (v,cn) }



meth_inv_params: 
        | LEFT_BRACK; RIGHT_BRACK { [] }
        | vl=vlist { vl } 

vlist:
  | {[]}
  |vl=vlist; v=paramVal {[v]@vl}
  (*| vl = separated_list (COMMA, paramVal) { vl } *)

paramVal:
       | vall=INT; COMMA { Language.Value (Language.Int (vall)) }
       | vall=FLOAT; COMMA { Language.Value (Language.Float (vall)) } 
       | vname=ID; COMMA { Language.Var (vname) }


blkExp: LEFT_BRACE; e=exp; RIGHT_BRACE { Bnvar (e) }
