%token CLASS XTENDS INT_TYPE FLOAT_TYPE BOOL_TYPE VOID_TYPE IF THEN ELSE NEW WHILE INSTOF CAST TRUE FALSE NULL BOT
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
  (*| vall=INT { Printf.printf "Matched exp vall=%d\n" vall; Language.Value (Language.Int (vall))}
  | vall=FLOAT { Language.Value (Language.Float (vall))} *)
  | TRUE { Language.Value (Language.Bool (true))}
  | FALSE { Language.Value (Language.Bool (false))}
  | VOID { Language.Value (Language.Vvoid) }
 (* | vname=ID { Printf.printf "Matched var name %s\n" vname;Language.Var (vname) } *)
  | obj=ID; DOT; fld=ID {Language.Vfld (obj,fld) }
  | vname=ID; EQUALS; e=exp; SEMICOL { Language.AsgnV (vname,e) }
  | obj=ID; DOT; fld=ID; EQUALS; e=exp; SEMICOL  { Language.AsgnF (obj,fld,e) }
  | e1=exp; SEMICOL; e2=exp; SEMICOL  { Language.Seq (e1,e2) }
  | IF; vname=ID; THEN; LEFT_BRACE; then_exp=blkExp; RIGHT_BRACE; ELSE LEFT_BRACE; else_exp=blkExp; RIGHT_BRACE
    { Language.If (vname,then_exp,else_exp) }
  | NEW; cn=ID; LEFT_RBRACK; v=vlist; RIGHT_RBRACK; SEMICOL  { Language.NewObj (cn,v) }
  | obj=ID; DOT; mname=ID; LEFT_RBRACK; v=meth_inv_params; RIGHT_RBRACK { Language.MethInv (obj,mname,v) }
  | WHILE; v=ID; LEFT_BRACE; e=exp; RIGHT_BRACE { Language.WhileExp (v,e) }
  | CAST; LEFT_RBRACK; cn=ID; RIGHT_RBRACK; v=ID  { Language.Cast (cn,v) }
  | v=ID; INSTOF; cn=ID  { Language.InstOf (v,cn) }
  | IF; v=ID; THEN; e1=blkExp; ELSE; e2=blkExp { Language.If (v,e1,e2) }
  | ia=intArithmExp { ia }
  | ble=blkExp { Language.Blk (ble) }
 (* | fa=floatArithmExp { fa } *) 
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
       | LEFT_RBRACK; t=typ; vname=ID; RIGHT_RBRACK; LEFT_BRACE; e=exp; RIGHT_BRACE; SEMICOL { Bvar (t,vname,e) }
(*Arithmetic operations on int *)
intArithmExp: t=intTerm; aex=intArithmExp1 
       {
               match aex with
               | Language.Nothing -> t
               | Language.RightOp (op,ex) -> (match op with | "+" -> Language.AddInt (t,ex) | "-" -> Language.DiffInt (t,ex) )
              
       }
intArithmExp1: | { Language.Nothing }
               | PLUS_INT; e=intArithmExp { Language.RightOp ("+",e) }
               | MINUS_INT; e=intArithmExp { Language.RightOp ("-",e) } 
intTerm: f=intFactor; it1=intTerm1 
        {
                match it1 with
                | Language.Nothing -> f
                | Language.RightOp (op,ex) -> (match op with | "*" ->Language.MulInt (f,ex) |"/" -> Language.DivInt (f,ex) )
        }
intTerm1:
         | { Language.Nothing }
         | TIMES_INT; it=intTerm { Language.RightOp ("*",it) }
         | DIVIDE_INT; it=intTerm { Language.RightOp ("/",it) }
intFactor: 
        | vname=ID {  Language.Var (vname) }
        | vall=INT {  Language.Value (Language.Int (vall)) }
        | LEFT_RBRACK; iae=intArithmExp; RIGHT_RBRACK { iae }     

(*Arithmetic operations on float *)
floatArithmExp: t=floatTerm; aex=floatArithmExp1
        {
                match aex with
                | Language.Noting -> t
                | Language.RightOp (op,ex) -> (match op with | "+" -> Language.AddFlt (t,ex) | "-" -> Language.DiffFlt (t,ex) )
        }
floatArithmExp1: 
        | {Language.Nothing}
        | PLUS_FLOAT; e=floatArithmExp { Language.RightOp ("+",e) }
        | MINUS_FLOAT; e=floatArithmExp { Language.RightOp ("-",e) }

floatTerm: f=floatFactor; ft1=floatTerm1
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
        | vall=FLOAT {Language.Value (Language.Int (vall)) }
        | LEFT_RBRACK; flae=floatArithmExp; RIGHT_RBRACK { flae }

