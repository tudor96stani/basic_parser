%token CLASS XTENDS INT_TYPE FLOAT_TYPE BOOL_TYPE VOID_TYPE IF THEN ELSE NEW WHILE INSTOF CAST TRUE FALSE NULL BOT LET
%token <int> INT
%token <float> FLOAT 
%token <string> ID
%token VOID
%token COLON COMMA SEMICOL DOT LEFT_BRACE RIGHT_BRACE LEFT_BRACK RIGHT_BRACK LEFT_RBRACK RIGHT_RBRACK
%token EQUALS HASHTAG VVOID PLUS_FLOAT MINUS_FLOAT TIMES_FLOAT DIVIDE_FLOAT PLUS_INT MINUS_INT TIMES_INT DIVIDE_INT
%token AND ANDAND OROR OR NOT GR LS GE LE EQEQ NE
%token EOF

%left PLUS_INT PLUS_FLOAT MINUS_INT MINUS_FLOAT OROR
%left TIMES_INT TIMES_FLOAT DIVIDE_INT DIVIDE_FLOAT ANDAND
%nonassoc NOT GR LS GE LE EQEQ NE

%start <Language.progr option> start
%%
start: 
  | EOF { None }
  | p = prog; EOF { Some p}

prog: dl = def_list { Language.Progr (dl) }
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
  | vname=ID; EQUALS; e=arithExp { Language.AsgnV (vname,e) }
  | obj=ID; DOT; fld=ID; EQUALS; e=arithExp  { Language.AsgnF (obj,fld,e) }
  | e1=exp;SEMICOL; e2=exp; SEMICOL  { Language.Seq (e1,e2) }
  | IF; vname=ID; THEN; LEFT_BRACE; then_exp=blkExp; RIGHT_BRACE; ELSE LEFT_BRACE; else_exp=blkExp; RIGHT_BRACE
    { Language.If (vname,then_exp,else_exp) }
  | NEW; cn=ID; LEFT_RBRACK; v=vlist; RIGHT_RBRACK { Language.NewObj (cn,v) }
  | obj=ID; DOT; mname=ID; LEFT_RBRACK; v=meth_inv_params; RIGHT_RBRACK  { Language.MethInv (obj,mname,v) }
  | WHILE; v=ID; LEFT_BRACE; e=exp; RIGHT_BRACE { Language.WhileExp (v,e) }
  | CAST; LEFT_RBRACK; cn=ID; RIGHT_RBRACK; v=ID{ Language.Cast (cn,v) }
  | v=ID; INSTOF; cn=ID { Language.InstOf (v,cn) }
  | LET; ble=blkExp { Language.Blk (ble) } 
  | ae=arithExp { ae }

meth_inv_params: 
        | LEFT_BRACK; RIGHT_BRACK { [] }
        | vl=vlist { vl } 
vlist:
  | {[]}
  |vl=vlist; v=paramVal {[v]@vl}

paramVal:
       | vall=INT; COMMA { Language.Value (Language.Int (vall)) }
       | vall=FLOAT; COMMA { Language.Value (Language.Float (vall)) } 
       | vname=ID; COMMA { Language.Var (vname) }

blkExp: LEFT_BRACE; e=exp; RIGHT_BRACE { Language.Bnvar (e) }
       | LEFT_RBRACK; t=typ; COLON; vname=ID; RIGHT_RBRACK; LEFT_BRACE; e=exp; RIGHT_BRACE  { Language.Bvar (t,vname,e) }

arithExp:
	| i=INT { Language.Value (Language.Int (i)) }
	| f=FLOAT {Language.Value (Language.Float (f)) }
	| vname=ID { Language.Var (vname) } 
	| NULL{ Language.Value (Language.Vnull) }
  	| TRUE { Language.Value (Language.Bool (true))}
  	| FALSE { Language.Value (Language.Bool (false))}
  	| VOID { Language.Value (Language.Vvoid) }
  	| obj=ID; DOT; fld=ID {Language.Vfld (obj,fld) }
	| LEFT_RBRACK; e=arithExp; RIGHT_RBRACK { e }
	| e1=arithExp; PLUS_INT; e2=arithExp { Language.AddInt (e1,e2) }
	| e1=arithExp; PLUS_FLOAT; e2=arithExp { Language.AddFlt (e1,e2) }
	| e1=arithExp; MINUS_INT; e2=arithExp { Language.DiffInt (e1,e2) }
	| e1=arithExp; MINUS_FLOAT; e2=arithExp { Language.DiffFlt (e1,e2) }
	| e1=arithExp; TIMES_INT; e2=arithExp { Language.MulInt (e1,e2) }
	| e1=arithExp; TIMES_FLOAT; e2=arithExp { Language.MulFlt (e1,e2) }
	| e1=arithExp; DIVIDE_INT; e2=arithExp { Language.DivInt (e1,e2) }
	| e1=arithExp; DIVIDE_FLOAT; e2=arithExp { Language.DivFlt (e1,e2) }
	| e1=arithExp; ANDAND; e2=arithExp {Language.LglAnd (e1,e2) }
	| e1=arithExp; OROR; e2=arithExp {Language.LglOr (e1,e2) }
	| NOT; e=arithExp { Language.LglNeg (e) }
	| e1=arithExp; GR; e2=arithExp { Language.Gr (e1,e2) }
	| e1=arithExp; LS; e2=arithExp { Language.Less (e1,e2) }
	| e1=arithExp; GE; e2=arithExp { Language.GrEq (e1,e2) }
	| e1=arithExp; LE; e2=arithExp { Language.LessEq (e1,e2) }
	| e1=arithExp; EQEQ; e2=arithExp { Language.Eq (e1,e2) }
	| e1=arithExp; NE; e2=arithExp { Language.NEq (e1,e2) }	
