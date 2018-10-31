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
let rec concat l =
        let rec loop acc = function 
                | [] -> acc
                | h::t -> loop (acc^h) t
        in
        loop (match (List.hd l) with |None -> "" | Some v -> v) (match (List.tl l) with |None -> [] |Some tl -> tl)
;;
let rec printType outc t = match t with 
        | Tprim (tpr) -> "(Tprim (" ^ (match tpr with |Tint -> "Tint" |Tfloat -> "Tfloat" |Tbool -> "Tbool" |Tvoid -> "Tvoid" ) ^ "))"
        | Tclass (n) -> "Tclass (\""^ n ^ "\")"
        | Tbot -> "Tbot"
and    
stringifyExpression outc e = match e with
      | Value (x) -> 
            (match x with 
                  | Vnull -> "Vnull "
                  | Int (value) -> "Int (" ^ (string_of_int value) ^ ")"
                  | Float (value) -> "Float (" ^ (string_of_float value) ^ ")"
                  | Bool (value) -> if value then "Bool (true)" else "Bool (false)"
                  | Vvoid -> "Vvoid "
            )
      | Var (vname) -> "Var (\"" ^ vname ^ "\")"
      | Vfld (objName,fldName) -> "Vfld (\"" ^ objName ^ "\",\"" ^ fldName ^ "\")"
      | AsgnV (vname,innerExp) -> "AsgnV (\"" ^ vname ^ "\"," ^ (stringifyExpression outc innerExp) ^ ")"
      | AsgnF (objName,fldName,innerExp) -> "AsgnF (\"" ^ objName ^ "\",\"" ^ fldName ^ "\"," ^ (stringifyExpression outc innerExp) ^ ")"
      | Seq (e1,e2) -> "Seq (" ^ (stringifyExpression outc e1) ^ "," ^(stringifyExpression outc e2) ^ ")"
      | If (cond,e1,e2) -> "If (\"" ^ cond ^ "\"," ^ (stringifyBlkExpression outc e1) ^ "," ^ (stringifyBlkExpression outc e2) ^ ")"
      | AddInt (e1,e2) -> "AddInt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | DiffInt (e1,e2) -> "DiffInt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | DivInt (e1,e2) -> "DivInt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | MulInt (e1,e2) -> "MulInt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | AddFlt (e1,e2) -> "AddFlt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | DiffFlt (e1,e2) -> "DiffFlt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | MulFlt (e1,e2) -> "MulFlt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | DivFlt (e1,e2) -> "DivFlt (" ^ (stringifyExpression outc e1) ^ "," ^ (stringifyExpression outc e2) ^ ")"
      | NewObj (t,varl) -> "NewObj (\"" ^ t ^ "\",[" ^ (printVarList outc varl) ^ "])"
      | MethInv (obj,mth,vl) -> "MethInv (\"" ^ obj ^ "\",\"" ^ mth ^ "\",[" ^ (printVarList outc vl) ^ "])"
      | WhileExp (v,e) -> "WhileExp (\"" ^ v ^ "\"," ^ (stringifyExpression outc e) ^ ")"
      | Cast (t,vname) -> "Cast (\"" ^ t ^ "\",\"" ^ vname ^ "\")"
      | InstOf (c,vname) -> "InstOf (\"" ^ c ^ "\",\"" ^ vname ^ "\" )"
      | Blk (b)-> "Blk (" ^ (stringifyBlkExpression outc b) ^ ")"
and
printVarList outc vl = concat (List.map vl (printVar outc))
and
printVar outc v = match v with 
        | Value (x) ->
                        ( match x with
                                |Vnull -> "Vnull "
                                | Int (value) -> "Int (" ^ (string_of_int value) ^ ")"
                                | Float (value) -> "Float (" ^ (string_of_float value) ^ ")"
                                | Bool (value) -> if value then "Bool (true)" else "Bool (false)"
                                | Vvoid -> "Vvoid "
                        )
        | Var (vname) -> "Var (\"" ^ vname ^ "\")"

and
stringifyBlkExpression outc be = match be with
      | Bvar (t,name,ex)-> "Bvar (" ^ (printType outc t) ^ ",\"" ^ name ^ "\"," ^ (stringifyExpression outc ex) ^ ")"
      | Bnvar (exp) -> "Bnvar (" ^ (stringifyExpression outc exp) ^ ")"
and
(*ClassDecl of string*string*fldDeclList*methDeclList *)
printClassDecl outc d =
       match d with Def (s,c) ->( 
        match c with ClassDecl (clName,parName,fldLst,mthLst) -> fprintf outc "(\"%s\",\"%s\",[%s],[%s])" clName parName (printFldLst outc fldLst) (printMthLst outc mthLst)
         )
and
printFldLst outc l = concat (List.map l (printFld outc)) 
and
printFld outc f = match f with FldDecl (t,n) -> (printType outc t) ^ "," ^ "\"" ^ n ^ "\";"
and
printMthLst outc lst = concat (List.map lst (printMth outc))
and
printMth outc m = match m with MethDecl (t,n,prlst,ex) -> (printType outc t) ^ ",\"" ^ n ^ "\",[" ^ (printMPrmLst outc prlst) ^"]," ^ (stringifyBlkExpression outc ex)
and
printMPrmLst outc lst = concat (List.map lst (printMPrm outc))
and
printMPrm outc p = match p with Fprm (t,n) -> (printType outc t) ^ ",\"" ^ n ^ "\";"
;;

(* Progr of def list *)
let output_value outc ast =
        match ast with 
        Progr (l) -> 
                List.iter l 
                (printClassDecl outc);;
(*let output_value outc ast = List.iter ast (printClassDecl outc) ;;*)
