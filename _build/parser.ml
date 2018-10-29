
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | XTENDS
    | WHILE
    | VVOID
    | VOID_TYPE
    | VOID
    | TRUE
    | TIMES_INT
    | TIMES_FLOAT
    | THEN
    | SEMICOL
    | RIGHT_RBRACK
    | RIGHT_BRACK
    | RIGHT_BRACE
    | PLUS_INT
    | PLUS_FLOAT
    | OR
    | NULL
    | NOT
    | NEW
    | NE
    | MINUS_INT
    | MINUS_FLOAT
    | LS
    | LET
    | LEFT_RBRACK
    | LEFT_BRACK
    | LEFT_BRACE
    | LE
    | INT_TYPE
    | INT of (
# 2 "parser.mly"
       (int)
# 40 "parser.ml"
  )
    | INSTOF
    | IF
    | ID of (
# 4 "parser.mly"
       (string)
# 47 "parser.ml"
  )
    | HASHTAG
    | GR
    | GE
    | FLOAT_TYPE
    | FLOAT of (
# 3 "parser.mly"
       (float)
# 56 "parser.ml"
  )
    | FALSE
    | EQUALS
    | EQEQ
    | EOF
    | ELSE
    | DOT
    | DIVIDE_INT
    | DIVIDE_FLOAT
    | COMMA
    | COLON
    | CLASS
    | CAST
    | BOT
    | BOOL_TYPE
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState139
  | MenhirState131
  | MenhirState127
  | MenhirState116
  | MenhirState112
  | MenhirState106
  | MenhirState104
  | MenhirState102
  | MenhirState96
  | MenhirState93
  | MenhirState91
  | MenhirState82
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState68
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState43
  | MenhirState37
  | MenhirState34
  | MenhirState29
  | MenhirState28
  | MenhirState24
  | MenhirState20
  | MenhirState17
  | MenhirState6
  | MenhirState0

let rec _menhir_goto_paramVal : _menhir_env -> 'ttv_tail -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (v : (Language.exp)) = _v in
    let (_menhir_stack, _menhir_s, (vl : (Language.varList))) = _menhir_stack in
    let _v : (Language.varList) = 
# 78 "parser.mly"
                        ([v]@vl)
# 131 "parser.ml"
     in
    _menhir_goto_vlist _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_def_list1 : _menhir_env -> 'ttv_tail -> (Language.def list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (dl1 : (Language.def list)) = _v in
    let (_menhir_stack, _menhir_s, (d : (Language.def list))) = _menhir_stack in
    let _v : (Language.def list) = 
# 18 "parser.mly"
                                  ( d@dl1 )
# 144 "parser.ml"
     in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _v : (Language.progr) = 
# 17 "parser.mly"
                    ( Language.Progr (dl) )
# 154 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (p : (Language.progr))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 11 "parser.mly"
       (Language.progr option)
# 169 "parser.ml"
            ) = 
# 15 "parser.mly"
                  ( Some p)
# 173 "parser.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _1 = () in
        let _v : (Language.def list) = 
# 21 "parser.mly"
                         ( dl )
# 190 "parser.ml"
         in
        _menhir_goto_def_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_intArithmExp1 : _menhir_env -> 'ttv_tail -> (Language.rightOp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (aex : (Language.rightOp)) = _v in
    let (_menhir_stack, _menhir_s, (t : (Language.exp))) = _menhir_stack in
    let _v : (Language.exp) = 
# 89 "parser.mly"
       (
               match aex with
               | Language.Nothing -> t
               | Language.RightOp (op,ex) -> (match op with | "+" -> Language.AddInt (t,ex) | "-" -> Language.DiffInt (t,ex) )
              
       )
# 210 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (e : (Language.exp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.rightOp) = 
# 96 "parser.mly"
                                          ( Language.RightOp ("+",e) )
# 222 "parser.ml"
         in
        _menhir_goto_intArithmExp1 _menhir_env _menhir_stack _v
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (e : (Language.exp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.rightOp) = 
# 97 "parser.mly"
                                           ( Language.RightOp ("-",e) )
# 233 "parser.ml"
         in
        _menhir_goto_intArithmExp1 _menhir_env _menhir_stack _v
    | MenhirState77 | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (iae : (Language.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 111 "parser.mly"
                                                      ( iae )
# 251 "parser.ml"
             in
            _menhir_goto_intFactor _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 | MenhirState37 | MenhirState55 | MenhirState106 | MenhirState76 | MenhirState104 | MenhirState102 | MenhirState93 | MenhirState91 | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ia : (Language.exp))) = _menhir_stack in
        let _v : (Language.exp) = 
# 70 "parser.mly"
                    ( ia )
# 267 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run47 : _menhir_env -> 'ttv_tail -> (
# 2 "parser.mly"
       (int)
# 276 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (vall : (
# 2 "parser.mly"
       (int)
# 290 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 81 "parser.mly"
                         ( Language.Value (Language.Int (vall)) )
# 296 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run49 : _menhir_env -> 'ttv_tail -> (
# 4 "parser.mly"
       (string)
# 308 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (vname : (
# 4 "parser.mly"
       (string)
# 322 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 83 "parser.mly"
                         ( Language.Var (vname) )
# 328 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run51 : _menhir_env -> 'ttv_tail -> (
# 3 "parser.mly"
       (float)
# 340 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (vall : (
# 3 "parser.mly"
       (float)
# 354 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 82 "parser.mly"
                           ( Language.Value (Language.Float (vall)) )
# 360 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_meth_list1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.mthDeclList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (ml1 : (Language.mthDeclList)) = _v in
    let (_menhir_stack, _menhir_s, (mth : (Language.mthDecl list))) = _menhir_stack in
    let _v : (Language.mthDeclList) = 
# 29 "parser.mly"
                                    ( mth@ml1 )
# 378 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (clname : (
# 4 "parser.mly"
       (string)
# 394 "parser.ml"
            ))), (parname : (
# 4 "parser.mly"
       (string)
# 398 "parser.ml"
            ))), _, (fl : (Language.fldDeclList))), _, (ml : (Language.mthDeclList))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.def list) = 
# 22 "parser.mly"
                                                                                                         (
  [Language.Def (clname,Language.ClassDecl (clname,parname,fl,ml))]
)
# 410 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CLASS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState139
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139)
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.def list) = 
# 20 "parser.mly"
    ( [] )
# 433 "parser.ml"
                 in
                _menhir_goto_def_list1 _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ml : (Language.mthDeclList))) = _menhir_stack in
        let _v : (Language.mthDeclList) = 
# 32 "parser.mly"
                 ( ml )
# 455 "parser.ml"
         in
        _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_intTerm1 : _menhir_env -> 'ttv_tail -> (Language.rightOp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (it1 : (Language.rightOp)) = _v in
    let (_menhir_stack, _menhir_s, (f : (Language.exp))) = _menhir_stack in
    let _v : (Language.exp) = 
# 99 "parser.mly"
        (
                match it1 with
                | Language.Nothing -> f
                | Language.RightOp (op,ex) -> (match op with | "*" ->Language.MulInt (f,ex) |"/" -> Language.DivInt (f,ex) )
        )
# 474 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 | MenhirState37 | MenhirState55 | MenhirState106 | MenhirState76 | MenhirState104 | MenhirState102 | MenhirState93 | MenhirState91 | MenhirState82 | MenhirState77 | MenhirState68 | MenhirState60 | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS_INT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
        | PLUS_INT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
        | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Language.rightOp) = 
# 95 "parser.mly"
                 ( Language.Nothing )
# 518 "parser.ml"
             in
            _menhir_goto_intArithmExp1 _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (it : (Language.exp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.rightOp) = 
# 106 "parser.mly"
                                 ( Language.RightOp ("*",it) )
# 535 "parser.ml"
         in
        _menhir_goto_intTerm1 _menhir_env _menhir_stack _v
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (it : (Language.exp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.rightOp) = 
# 107 "parser.mly"
                                  ( Language.RightOp ("/",it) )
# 546 "parser.ml"
         in
        _menhir_goto_intTerm1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_vlist : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.varList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FLOAT _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) _v
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 579 "parser.ml"
                ))), _, (v : (Language.varList))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.exp) = 
# 64 "parser.mly"
                                                             ( Language.NewObj (cn,v) )
# 588 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FLOAT _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) _v
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (vl : (Language.varList))) = _menhir_stack in
            let _v : (Language.varList) = 
# 75 "parser.mly"
                   ( vl )
# 620 "parser.ml"
             in
            _menhir_goto_meth_inv_params _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run106 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAST ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | FALSE ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | ID _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | LEFT_RBRACK ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | LET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NEW ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | WHILE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_goto_blkExp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.blkExp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ELSE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LEFT_BRACE ->
                        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                    | LEFT_RBRACK ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (vname : (
# 4 "parser.mly"
       (string)
# 728 "parser.ml"
            ))), _), _, (then_exp : (Language.blkExp))), _, (else_exp : (Language.blkExp))) = _menhir_stack in
            let _10 = () in
            let _8 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 63 "parser.mly"
    ( Language.If (vname,then_exp,else_exp) )
# 740 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LEFT_BRACE ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | LEFT_RBRACK ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), (v : (
# 4 "parser.mly"
       (string)
# 779 "parser.ml"
        ))), _, (e1 : (Language.blkExp))), _, (e2 : (Language.blkExp))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (Language.exp) = 
# 69 "parser.mly"
                                               ( Language.If (v,e1,e2) )
# 787 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (ble : (Language.blkExp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.exp) = 
# 71 "parser.mly"
                    ( Language.Blk (ble) )
# 798 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (tp : (Language.typ))), (mn : (
# 4 "parser.mly"
       (string)
# 807 "parser.ml"
        ))), _, (prl : (Language.fPrmList))), _, (e : (Language.blkExp))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : (Language.mthDecl list) = 
# 45 "parser.mly"
  ( [Language.MethDecl (tp,mn,prl,e)])
# 814 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL_TYPE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | BOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | FLOAT_TYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | INT_TYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | VOID_TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _v : (Language.mthDeclList) = 
# 31 "parser.mly"
    ( [] )
# 839 "parser.ml"
             in
            _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | _ ->
        _menhir_fail ()

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 852 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_intFactor : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DIVIDE_INT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | LEFT_RBRACK ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | TIMES_INT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
        | LEFT_RBRACK ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
    | MINUS_INT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (Language.rightOp) = 
# 105 "parser.mly"
           ( Language.Nothing )
# 901 "parser.ml"
         in
        _menhir_goto_intTerm1 _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce32 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 4 "parser.mly"
       (string)
# 914 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 920 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Language.exp) = 
# 109 "parser.mly"
                   (  Language.Var (vname) )
# 925 "parser.ml"
     in
    _menhir_goto_intFactor _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Language.varList) = 
# 77 "parser.mly"
    ([])
# 934 "parser.ml"
     in
    _menhir_goto_vlist _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_meth_inv_params : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.varList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHT_RBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 952 "parser.ml"
        ))), (mname : (
# 4 "parser.mly"
       (string)
# 956 "parser.ml"
        ))), _, (v : (Language.varList))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _v : (Language.exp) = 
# 65 "parser.mly"
                                                                        ( Language.MethInv (obj,mname,v) )
# 964 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CAST ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | FALSE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | ID _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NEW ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NULL ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | TRUE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VOID ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | WHILE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 1017 "parser.ml"
                ))), _, (e : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 59 "parser.mly"
                                     ( Language.AsgnV (vname,e) )
# 1024 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState106 | MenhirState104 | MenhirState93 | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CAST ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FALSE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NEW ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NULL ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TRUE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | VOID ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | WHILE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 61 "parser.mly"
                                      ( Language.Seq (e1,e2) )
# 1079 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CAST ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | FALSE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | ID _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | NEW ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | NULL ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | TRUE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | VOID ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | WHILE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1131 "parser.ml"
                ))), (fld : (
# 4 "parser.mly"
       (string)
# 1135 "parser.ml"
                ))), _, (e : (Language.exp))) = _menhir_stack in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 60 "parser.mly"
                                                 ( Language.AsgnF (obj,fld,e) )
# 1143 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (e : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.blkExp) = 
# 85 "parser.mly"
                                                ( Bnvar (e) )
# 1177 "parser.ml"
                 in
                _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | SEMICOL ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (v : (
# 4 "parser.mly"
       (string)
# 1206 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 66 "parser.mly"
                                                ( Language.WhileExp (v,e) )
# 1214 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMICOL ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, (t : (Language.typ))), (vname : (
# 4 "parser.mly"
       (string)
# 1242 "parser.ml"
                ))), _, (e : (Language.exp))) = _menhir_stack in
                let _9 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.blkExp) = 
# 86 "parser.mly"
                                                                                                    ( Bvar (t,vname,e) )
# 1253 "parser.ml"
                 in
                _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | SEMICOL ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_TYPE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | BOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FLOAT_TYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | INT_TYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VOID_TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAST ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FALSE ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LEFT_RBRACK ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NEW ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | WHILE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LEFT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CAST ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | FALSE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | ID _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | LEFT_RBRACK ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | NEW ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | NULL ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | TRUE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | VOID ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | WHILE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 56 "parser.mly"
         ( Language.Value (Language.Vvoid) )
# 1402 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 54 "parser.mly"
         ( Language.Value (Language.Bool (true)))
# 1414 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 51 "parser.mly"
        ( Language.Value (Language.Vnull) )
# 1426 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LEFT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LEFT_RBRACK ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LEFT_RBRACK ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (int)
# 1494 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (vall : (
# 2 "parser.mly"
       (int)
# 1502 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 110 "parser.mly"
                   (  Language.Value (Language.Int (vall)) )
# 1507 "parser.ml"
     in
    _menhir_goto_intFactor _menhir_env _menhir_stack _menhir_s _v

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LEFT_BRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState75 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CAST ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | FALSE ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | ID _v ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | IF ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | INT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | LEFT_BRACE ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | LEFT_RBRACK ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState76 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BOOL_TYPE ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | BOT ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | FLOAT_TYPE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | ID _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_s = MenhirState77 in
                        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | COLON ->
                            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
                        | DIVIDE_INT | MINUS_INT | PLUS_INT | RIGHT_RBRACK | TIMES_INT ->
                            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | INT _v ->
                        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                    | INT_TYPE ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | LEFT_RBRACK ->
                        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | VOID_TYPE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
                | LET ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | NEW ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | NULL ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | TRUE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | VOID ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | WHILE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
            | LEFT_RBRACK ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1627 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQUALS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CAST ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | FALSE ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | ID _v ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | IF ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | INT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | LEFT_RBRACK ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | LET ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | NEW ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | NULL ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | TRUE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | VOID ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | WHILE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
            | LEFT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACK ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState96 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | RIGHT_BRACK ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s) = _menhir_stack in
                        let _2 = () in
                        let _1 = () in
                        let _v : (Language.varList) = 
# 74 "parser.mly"
                                  ( [] )
# 1700 "parser.ml"
                         in
                        _menhir_goto_meth_inv_params _menhir_env _menhir_stack _menhir_s _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | FLOAT _ | ID _ | INT _ | RIGHT_RBRACK ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
            | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1720 "parser.ml"
                ))), (fld : (
# 4 "parser.mly"
       (string)
# 1724 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Language.exp) = 
# 58 "parser.mly"
                        (Language.Vfld (obj,fld) )
# 1730 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | FALSE ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | ID _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | IF ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | LEFT_RBRACK ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LET ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NEW ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NULL ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | TRUE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | VOID ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | WHILE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
    | INSTOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (cn : (
# 4 "parser.mly"
       (string)
# 1790 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (v : (
# 4 "parser.mly"
       (string)
# 1795 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 68 "parser.mly"
                         ( Language.InstOf (v,cn) )
# 1801 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DIVIDE_INT | MINUS_INT | PLUS_INT | RIGHT_BRACE | SEMICOL | TIMES_INT ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 55 "parser.mly"
          ( Language.Value (Language.Bool (false)))
# 1827 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_RBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RIGHT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (v : (
# 4 "parser.mly"
       (string)
# 1860 "parser.ml"
                    )) = _v in
                    let ((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 1865 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : (Language.exp) = 
# 67 "parser.mly"
                                                  ( Language.Cast (cn,v) )
# 1873 "parser.ml"
                     in
                    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_param_list1 : _menhir_env -> 'ttv_tail -> (Language.fPrmList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (pl1 : (Language.fPrmList)) = _v in
    let (_menhir_stack, _menhir_s, (pr : (Language.fPrm list))) = _menhir_stack in
    let _v : (Language.fPrmList) = 
# 46 "parser.mly"
                                    ( pr@pl1 )
# 1910 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (pl : (Language.fPrmList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fPrmList) = 
# 48 "parser.mly"
                                    ( pl )
# 1922 "parser.ml"
         in
        _menhir_goto_param_list1 _menhir_env _menhir_stack _v
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LEFT_BRACE ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LEFT_RBRACK ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_field_list1 : _menhir_env -> 'ttv_tail -> (Language.fldDeclList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (fl1 : (Language.fldDeclList)) = _v in
    let (_menhir_stack, _menhir_s, (fld : (Language.fldDecl list))) = _menhir_stack in
    let _v : (Language.fldDeclList) = 
# 25 "parser.mly"
                                       ( fld@fl1 )
# 1961 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | HASHTAG ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL_TYPE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | BOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | FLOAT_TYPE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | INT_TYPE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | VOID_TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (fl : (Language.fldDeclList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fldDeclList) = 
# 28 "parser.mly"
                            ( fl )
# 2005 "parser.ml"
         in
        _menhir_goto_field_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce60 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 4 "parser.mly"
       (string)
# 2014 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (cn : (
# 4 "parser.mly"
       (string)
# 2020 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Language.typ) = 
# 38 "parser.mly"
             ( Language.Tclass (cn) )
# 2025 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState131 | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (fn : (
# 4 "parser.mly"
       (string)
# 2045 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fldDecl list) = 
# 36 "parser.mly"
  ( [Language.FldDecl (t,fn)])
# 2051 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
            | HASHTAG ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.fldDeclList) = 
# 27 "parser.mly"
    ( [] )
# 2084 "parser.ml"
                 in
                _menhir_goto_field_list1 _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState127 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LEFT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (pn : (
# 4 "parser.mly"
       (string)
# 2155 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fPrm list) = 
# 49 "parser.mly"
                  ( [Language.Fprm (t,pn)])
# 2161 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
            | RIGHT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.fPrmList) = 
# 47 "parser.mly"
               ( [] )
# 2194 "parser.ml"
                 in
                _menhir_goto_param_list1 _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | RIGHT_RBRACK ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LEFT_BRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | CAST ->
                            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | FALSE ->
                            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | ID _v ->
                            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                        | IF ->
                            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | INT _v ->
                            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                        | LEFT_RBRACK ->
                            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | LET ->
                            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | NEW ->
                            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | NULL ->
                            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | TRUE ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | VOID ->
                            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | WHILE ->
                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.tPrim) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (Language.tPrim)) = _v in
    let _v : (Language.typ) = 
# 37 "parser.mly"
              ( Language.Tprim (t) )
# 2298 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 43 "parser.mly"
                  ( Language.Tvoid )
# 2310 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 40 "parser.mly"
                  ( Language.Tint )
# 2322 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 2329 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 41 "parser.mly"
                   ( Language.Tfloat )
# 2344 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.typ) = 
# 39 "parser.mly"
           ( Language.Tbot )
# 2356 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 42 "parser.mly"
                  ( Language.Tbool )
# 2368 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_start : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (Language.progr option)
# 2499 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 11 "parser.mly"
       (Language.progr option)
# 2507 "parser.ml"
    )) = _v in
    Obj.magic _1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | XTENDS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BOOL_TYPE ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | BOT ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | FLOAT_TYPE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | ID _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
                    | INT_TYPE ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | VOID_TYPE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 11 "parser.mly"
       (Language.progr option)
# 2595 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState0 in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (
# 11 "parser.mly"
       (Language.progr option)
# 2619 "parser.ml"
        ) = 
# 14 "parser.mly"
        ( None )
# 2623 "parser.ml"
         in
        _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 233 "/Users/tudorstanila/.opam/default/lib/menhir/standard.mly"
  

# 2634 "parser.ml"
