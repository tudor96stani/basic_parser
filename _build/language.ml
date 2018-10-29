type tPrim = Tint | Tfloat | Tbool| Tvoid 
and
typ = Tprim of tPrim 
      | Tclass of string 
      | Tbot 
and
fldDecl = FldDecl of typ * string 
and
fPrmList = fPrm list 
and
fPrm = Fprm of (typ*string) 
and
vall = Vnull 
      | Int of int 
      | Float of float 
      | Bool of bool 
      | Vvoid   
and
blkExp = Bvar of typ*string * exp 
        | Bnvar of exp 
and
varList = exp list
and
exp = Value of vall 
      |Var of string 
      | Vfld of string*string 
      | AsgnV of string*exp
      | AsgnF of string*string*exp 
      | Blk of blkExp
      | Seq of exp*exp
      | If of string*blkExp*blkExp 
      | AddInt of exp*exp
      | MulInt of exp*exp 
      | DiffInt of exp*exp
      | DivInt of exp*exp
      | AddFlt of exp*exp
      | MulFlt of exp*exp
      | DiffFlt of exp*exp
      | DivFlt of exp*exp
      | LglAnd of exp*exp
      | LglOr of exp*exp
      | LglNeg of exp
      | NewObj of string*varList
      | MethInv of string*string*varList
      | WhileExp of string*exp
      | Less of exp*exp
      | LessEq of exp*exp
      | Eq of exp*exp
      | NEq of exp*exp
      | GrEq of exp*exp
      | Gr of exp*exp
      | Cast of string*string
      | InstOf of string*string 
and
mthDecl = MethDecl of (typ*string*fPrmList*blkExp) 
and
mthDeclList = mthDecl list 
and
fldDeclList = fldDecl list 
and
classDecl = ClassDecl of (string*string*fldDeclList*mthDeclList) 
and
def = Def of string*classDecl
and
progr= Progr of def list
and 
rightOp= Nothing | RightOp of string*exp;;

open Core
let rec stringifyExpression e = match e with
      | Value (x) -> 
            (match x with 
                  | Vnull -> "null"
                  | Int (value) -> string_of_int value
                  | Float (value) -> string_of_float value
                  | Bool (value) -> if value then "true" else "false"
                  | Vvoid -> "_|_"
            )
      | Var (vname) -> "Var(" ^ vname ^ ")"
      | Vfld (objName,fldName) -> "Vfld(" ^ objName ^ "," ^ fldName ^ ")"
      | AsgnV (vname,innerExp) -> "AsgnV(" ^ vname ^ "," ^ (stringifyExpression innerExp) ^ ")"
      | AsgnF (objName,fldName,innerExp) -> "AsgnF(" ^ objName ^ "," ^ fldName ^ "," ^ (stringifyExpression innerExp) ^ ")"
      | Seq (e1,e2) -> "Seq(" ^ (stringifyExpression e1) ^ "," ^(stringifyExpression e2) ^ ")"
      | AddInt (e1,e2) -> "AddInt(" ^ (stringifyExpression e1) ^ "," ^ (stringifyExpression e2) ^ ")"
      | _ -> ""

let rec output_value outc ast = 
      let stringexp = stringifyExpression ast in
            fprintf outc "%s" stringexp
(*
  | AddInt (a,b) -> 
            (match (a,b) with | (Value (Int (x)), Value (Int (y))) -> fprintf outc  "AddInt (Value (Int (%d)),Value (Int (%d)))\n" x y 
                              | (_,_) -> fprintf outc "\n")
  | _ -> fprintf outc "\n"
  *)
