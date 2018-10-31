%token CLASS XTENDS INT_TYPE FLOAT_TYPE BOOL_TYPE VOID_TYPE IF THEN ELSE NEW WHILE INSTOF CAST TRUE FALSE NULL BOT LET
%token <int> INT
%token <float> FLOAT 
%token <string> ID
%token VOID
%token COLON COMMA SEMICOL DOT LEFT_BRACE RIGHT_BRACE LEFT_BRACK RIGHT_BRACK LEFT_RBRACK RIGHT_RBRACK
%token EQUALS HASHTAG VVOID PLUS_FLOAT MINUS_FLOAT TIMES_FLOAT DIVIDE_FLOAT PLUS_INT MINUS_INT TIMES_INT DIVIDE_INT
%token AND OR NOT GR LS GE LE EQEQ NE
%token EOF

%left PLUS_INT PLUS_FLOAT MINUS_INT MINUS_FLOAT
%left TIMES_INT TIMES_FLOAT DIVIDE_INT DIVIDE_FLOAT

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
  | NULL{ Language.Value (Language.Vnull) }
  | TRUE { Language.Value (Language.Bool (true))}
  | FALSE { Language.Value (Language.Bool (false))}
  | VOID { Language.Value (Language.Vvoid) }
  | obj=ID; DOT; fld=ID {Language.Vfld (obj,fld) }
  | vname=ID; EQUALS; e=exp; SEMICOL { Language.AsgnV (vname,e) }
  | obj=ID; DOT; fld=ID; EQUALS; e=exp; SEMICOL  { Language.AsgnF (obj,fld,e) }
  | e1=exp; e2=exp  { Language.Seq (e1,e2) }
  | IF; vname=ID; THEN; LEFT_BRACE; then_exp=blkExp; RIGHT_BRACE; ELSE LEFT_BRACE; else_exp=blkExp; RIGHT_BRACE
    { Language.If (vname,then_exp,else_exp) }
  | NEW; cn=ID; LEFT_RBRACK; v=vlist; RIGHT_RBRACK; SEMICOL  { Language.NewObj (cn,v) }
  | obj=ID; DOT; mname=ID; LEFT_RBRACK; v=meth_inv_params; RIGHT_RBRACK; SEMICOL { Language.MethInv (obj,mname,v) }
  | WHILE; v=ID; LEFT_BRACE; e=exp; RIGHT_BRACE { Language.WhileExp (v,e) }
  | CAST; LEFT_RBRACK; cn=ID; RIGHT_RBRACK; v=ID  { Language.Cast (cn,v) }
  | v=ID; INSTOF; cn=ID  { Language.InstOf (v,cn) }
  | IF; v=ID; THEN; e1=blkExp; ELSE; e2=blkExp { Language.If (v,e1,e2) }
  | ble=blkExp { Language.Blk (ble) } 
  (*| ia=intArithmExp { ia }
  | fa=floatArithmExp { fa } 
  | le=logExp { le }*)
  | ae=arithExp { ae }
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

blkExp: LEFT_BRACE; e=exp; RIGHT_BRACE; SEMICOL { Bnvar (e) }
       | LET; LEFT_RBRACK; t=typ; COLON; vname=ID; RIGHT_RBRACK; LEFT_BRACE; e=exp; RIGHT_BRACE; SEMICOL { Bvar (t,vname,e) }
(*Arithmetic operations on int 
intArithmExp: t=intTerm; aex=intArithmExp1 
       {
               match aex with
               | Language.Nothing -> t
               | Language.RightOp (op,ex) -> (match op with | "+" -> Language.AddInt (t,ex) | "-" -> Language.DiffInt (t,ex) )
              
       }
intArithmExp1: | { Language.Nothing }
               | PLUS_INT; e=intArithmExp { Language.RightOp ("+",e) }
               | MINUS_INT; e=intArithmExp { Language.RightOp ("-",e) } 
intTerm: f=factor; it1=intTerm1 
        {
                match it1 with
                | Language.Nothing -> f
                | Language.RightOp (op,ex) -> (match op with | "*" ->Language.MulInt (f,ex) |"/" -> Language.DivInt (f,ex) )
        }
intTerm1:
         | { Language.Nothing }
         | TIMES_INT; it=intTerm { Language.RightOp ("*",it) }
         | DIVIDE_INT; it=intTerm { Language.RightOp ("/",it) }
factor: 
        | vname=ID {  Language.Var (vname) }
        | vall=INT {  Language.Value (Language.Int (vall)) }
        | vall=FLOAT { Language.Value (Language.Float (vall)) }
	| LEFT_RBRACK; iae=intArithmExp; RIGHT_RBRACK { iae }  
	| LEFT_RBRACK; fae=floatArithmExp; RIGHT_RBRACK {fae }   


floatArithmExp: t=floatTerm; aex=floatArithmExp1
        {
                match aex with
                | Language.Nothing -> t
                | Language.RightOp (op,ex) -> (match op with | "+" -> Language.AddFlt (t,ex) | "-" -> Language.DiffFlt (t,ex) )
        }
floatArithmExp1: 
        | {Language.Nothing}
        | PLUS_FLOAT; e=floatArithmExp { Language.RightOp ("+",e) }
        | MINUS_FLOAT; e=floatArithmExp { Language.RightOp ("-",e) }

floatTerm: f=factor; ft1=floatTerm1
        {
                match ft1 with
                | Language.Nothing -> f
                | Language.RightOp (op,ex) -> (match op with | "*" -> Language.MulFlt (f,ex) | "/" -> Language.DivFlt (f,ex) )
        }
floatTerm1:
        | { Language.Nothing }
        | TIMES_FLOAT; ft=floatTerm { Language.RightOp ("*",ft) }
        | DIVIDE_FLOAT; ft=floatTerm { Language.RightOp ("/",ft) }
floatFactor:
        | vname=ID {Language.Var (vname) }
        | vall=FLOAT {Language.Value (Language.Float (vall)) }
        | LEFT_RBRACK; flae=floatArithmExp; RIGHT_RBRACK { flae }

logExp: t=logTerm; le=logExp1
	{
		match le with
		| Language.Nothing -> t
		| Language.RightOp (op,ex) -> Language.LglOr (t,ex)
	}
logExp1:
	| { Language.Nothing }
	| OR; OR; e=logExp { Language.RightOp ("||",e) }
logTerm: f=factor; lt1=logTerm1
	{
		match lt1 with
		| Language.Nothing -> f
		| Language.RightOp (op,ex) -> Language.LglAnd (f,ex)
	}
logTerm1:
	| {Language.Nothing}
	| AND; AND; lt=logTerm { Language.RightOp ("&&",lt) }
logFactor: | vname = ID { Language.Var (vname) }
 	   | LEFT_RBRACK; l=logExp1; RIGHT_RBRACK { l }

*)
arithExp:
	| i=INT { Language.Value (Language.Int (i)) }
	| f=FLOAT {Language.Value (Language.Float (f)) }
	| vname=ID { Language.Var (vname) } 
	(*| v=paramVal { v } *)
	| LEFT_RBRACK; e=arithExp; RIGHT_RBRACK { e }
	| e1=arithExp; PLUS_INT; e2=arithExp { Language.AddInt (e1,e2) }
	| e1=arithExp; PLUS_FLOAT; e2=arithExp { Language.AddFlt (e1,e2) }
	| e1=arithExp; MINUS_INT; e2=arithExp { Language.DiffInt (e1,e2) }
	| e1=arithExp; MINUS_FLOAT; e2=arithExp { Language.DiffFlt (e1,e2) }
	| e1=arithExp; TIMES_INT; e2=arithExp { Language.MulInt (e1,e2) }
	| e1=arithExp; TIMES_FLOAT; e2=arithExp { Language.MulFlt (e1,e2) }
	| e1=arithExp; DIVIDE_INT; e2=arithExp { Language.DivInt (e1,e2) }
	| e1=arithExp; DIVIDE_FLOAT; e2=arithExp { Language.DivFlt (e1,e2) }
	
