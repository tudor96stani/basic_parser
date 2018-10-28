
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
    | LEFT_RBRACK
    | LEFT_BRACK
    | LEFT_BRACE
    | LE
    | INT_TYPE
    | INT of (
# 2 "parser.mly"
       (int)
# 39 "parser.ml"
  )
    | INSTOF
    | IF
    | ID of (
# 4 "parser.mly"
       (string)
# 46 "parser.ml"
  )
    | HASHTAG
    | GR
    | GE
    | FLOAT_TYPE
    | FLOAT of (
# 3 "parser.mly"
       (float)
# 55 "parser.ml"
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
  | MenhirState101
  | MenhirState93
  | MenhirState89
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState73
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState59
  | MenhirState52
  | MenhirState48
  | MenhirState38
  | MenhirState32
  | MenhirState29
  | MenhirState28
  | MenhirState24
  | MenhirState20
  | MenhirState17
  | MenhirState6
  | MenhirState0

let rec _menhir_goto_def_list1 : _menhir_env -> 'ttv_tail -> (Language.def list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (dl1 : (Language.def list)) = _v in
    let (_menhir_stack, _menhir_s, (d : (Language.def list))) = _menhir_stack in
    let _v : (Language.def list) = 
# 18 "parser.mly"
                                  ( d@dl1 )
# 119 "parser.ml"
     in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _v : (Language.progr) = 
# 17 "parser.mly"
                    ( Progr (dl) )
# 129 "parser.ml"
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
# 144 "parser.ml"
            ) = 
# 15 "parser.mly"
                  ( Some p)
# 148 "parser.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _1 = () in
        let _v : (Language.def list) = 
# 21 "parser.mly"
                         ( dl )
# 165 "parser.ml"
         in
        _menhir_goto_def_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_vlist : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.varList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 192 "parser.ml"
                ))), (mname : (
# 4 "parser.mly"
       (string)
# 196 "parser.ml"
                ))), _, (v : (Language.varList))) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 65 "parser.mly"
                                                                        ( Language.MethInv (obj,mname,v) )
# 205 "parser.ml"
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
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (v : (Language.exp))), _, (vl : (Language.varList))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.varList) = 
# 77 "parser.mly"
                        ([v]@vl)
# 228 "parser.ml"
         in
        _menhir_goto_vlist _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
# 248 "parser.ml"
                ))), _, (v : (Language.varList))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.exp) = 
# 64 "parser.mly"
                                                             ( Language.NewObj (cn,v) )
# 257 "parser.ml"
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
    | _ ->
        _menhir_fail ()

and _menhir_goto_meth_list1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.mthDeclList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (ml1 : (Language.mthDeclList)) = _v in
    let (_menhir_stack, _menhir_s, (mth : (Language.mthDecl list))) = _menhir_stack in
    let _v : (Language.mthDeclList) = 
# 29 "parser.mly"
                                    ( mth@ml1 )
# 284 "parser.ml"
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
# 300 "parser.ml"
            ))), (parname : (
# 4 "parser.mly"
       (string)
# 304 "parser.ml"
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
# 316 "parser.ml"
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
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState101
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.def list) = 
# 20 "parser.mly"
    ( [] )
# 339 "parser.ml"
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
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ml : (Language.mthDeclList))) = _menhir_stack in
        let _v : (Language.mthDeclList) = 
# 32 "parser.mly"
                 ( ml )
# 361 "parser.ml"
         in
        _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | ID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | IF ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INT _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LEFT_RBRACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NEW ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NULL ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | TRUE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VOID ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | WHILE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_reduce45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Language.varList) = 
# 76 "parser.mly"
       ([])
# 404 "parser.ml"
     in
    _menhir_goto_vlist _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | COMMA | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 449 "parser.ml"
                ))), _, (e : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 59 "parser.mly"
                                      ( Language.AsgnV (vname,e) )
# 456 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 | MenhirState73 | MenhirState65 | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | COMMA | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 61 "parser.mly"
                                      ( Language.Seq (e1,e2) )
# 509 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 | MenhirState74 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | RIGHT_RBRACK ->
                _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
        | SEMICOL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | COMMA | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 605 "parser.ml"
                ))), (fld : (
# 4 "parser.mly"
       (string)
# 609 "parser.ml"
                ))), _, (e : (Language.exp))) = _menhir_stack in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 60 "parser.mly"
                                                 ( Language.AsgnF (obj,fld,e) )
# 617 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState32 ->
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
# 642 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 66 "parser.mly"
                                                ( Language.WhileExp (v,e) )
# 650 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMICOL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Language.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Language.blkExp) = 
# 78 "parser.mly"
                                       ( Bnvar (e) )
# 676 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState48 ->
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
                                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
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
            | MenhirState52 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | RIGHT_BRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((((_menhir_stack, _menhir_s), (vname : (
# 4 "parser.mly"
       (string)
# 736 "parser.ml"
                    ))), _, (then_exp : (Language.blkExp))), _, (else_exp : (Language.blkExp))) = _menhir_stack in
                    let _10 = () in
                    let _8 = () in
                    let _7 = () in
                    let _6 = () in
                    let _4 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (Language.exp) = 
# 63 "parser.mly"
    ( If (vname,then_exp,else_exp) )
# 748 "parser.ml"
                     in
                    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState28 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, (tp : (Language.typ))), (mn : (
# 4 "parser.mly"
       (string)
# 763 "parser.ml"
                ))), _, (prl : (Language.fPrmList))), _, (e : (Language.blkExp))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _v : (Language.mthDecl list) = 
# 45 "parser.mly"
  ( [Language.MethDecl (tp,mn,prl,e)])
# 770 "parser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | RIGHT_BRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState89 in
                    let _v : (Language.mthDeclList) = 
# 31 "parser.mly"
    ( [] )
# 795 "parser.ml"
                     in
                    _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
            | _ ->
                _menhir_fail ())
        | SEMICOL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
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

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 56 "parser.mly"
         ( Language.Value (Language.Vvoid) )
# 879 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 54 "parser.mly"
         ( Language.Value (Language.Bool (true)))
# 891 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 51 "parser.mly"
        ( Language.Value (Language.Vnull) )
# 903 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | ID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | IF ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | INT _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | LEFT_RBRACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NEW ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NULL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TRUE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | VOID ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | WHILE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | RIGHT_RBRACK ->
                _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
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

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | RIGHT_RBRACK ->
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
                | SEMICOL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 995 "parser.ml"
                    ))), (v : (
# 4 "parser.mly"
       (string)
# 999 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (Language.exp) = 
# 67 "parser.mly"
                                                     ( Language.Cast (cn,v) )
# 1007 "parser.ml"
                     in
                    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
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

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (int)
# 1038 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (vall : (
# 2 "parser.mly"
       (int)
# 1046 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 52 "parser.mly"
             ( Language.Value (Language.Int (vall)))
# 1051 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
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

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1105 "parser.ml"
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
                | FALSE ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | FLOAT _v ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | ID _v ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | IF ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | INT _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | LEFT_RBRACK ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | NEW ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | NULL ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | TRUE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | VOID ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | WHILE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
            | LEFT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | FLOAT _v ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
                | ID _v ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
                | IF ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | INT _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
                | LEFT_RBRACK ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | NEW ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | NULL ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | TRUE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | VOID ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | WHILE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | RIGHT_RBRACK ->
                    _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
            | COMMA | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1192 "parser.ml"
                ))), (fld : (
# 4 "parser.mly"
       (string)
# 1196 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Language.exp) = 
# 58 "parser.mly"
                        (Language.Vfld (obj,fld) )
# 1202 "parser.ml"
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
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | FLOAT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | ID _v ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | IF ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | INT _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | LEFT_RBRACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | NEW ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | NULL ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TRUE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | VOID ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | WHILE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
    | INSTOF ->
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
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (v : (
# 4 "parser.mly"
       (string)
# 1266 "parser.ml"
                ))), (cn : (
# 4 "parser.mly"
       (string)
# 1270 "parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 68 "parser.mly"
                                  ( Language.InstOf (v,cn) )
# 1277 "parser.ml"
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
    | COMMA | RIGHT_BRACE | SEMICOL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 1297 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Language.exp) = 
# 57 "parser.mly"
             ( Language.Var (vname) )
# 1302 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (float)
# 1315 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (vall : (
# 3 "parser.mly"
       (float)
# 1323 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 53 "parser.mly"
               ( Language.Value (Language.Float (vall)))
# 1328 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 55 "parser.mly"
          ( Language.Value (Language.Bool (false)))
# 1340 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | ID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INT _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LEFT_RBRACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NEW ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NULL ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TRUE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VOID ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | WHILE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_param_list1 : _menhir_env -> 'ttv_tail -> (Language.fPrmList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (pl1 : (Language.fPrmList)) = _v in
    let (_menhir_stack, _menhir_s, (pr : (Language.fPrm list))) = _menhir_stack in
    let _v : (Language.fPrmList) = 
# 46 "parser.mly"
                                    ( pr@pl1 )
# 1391 "parser.ml"
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
# 1403 "parser.ml"
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
# 1440 "parser.ml"
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
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (fl : (Language.fldDeclList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fldDeclList) = 
# 28 "parser.mly"
                            ( fl )
# 1484 "parser.ml"
         in
        _menhir_goto_field_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState93 | MenhirState6 ->
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
# 1506 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fldDecl list) = 
# 36 "parser.mly"
  ( [Language.FldDecl (t,fn)])
# 1512 "parser.ml"
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
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
            | HASHTAG ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.fldDeclList) = 
# 27 "parser.mly"
    ( [] )
# 1545 "parser.ml"
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
    | MenhirState89 | MenhirState17 ->
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
# 1616 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fPrm list) = 
# 49 "parser.mly"
                  ( [Language.Fprm (t,pn)])
# 1622 "parser.ml"
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
# 1655 "parser.ml"
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
# 1681 "parser.ml"
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
# 1693 "parser.ml"
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
# 1705 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1712 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (cn : (
# 4 "parser.mly"
       (string)
# 1720 "parser.ml"
    )) = _v in
    let _v : (Language.typ) = 
# 38 "parser.mly"
             ( Language.Tclass (cn) )
# 1725 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 41 "parser.mly"
                   ( Language.Tfloat )
# 1737 "parser.ml"
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
# 1749 "parser.ml"
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
# 1761 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
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
# 1856 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 11 "parser.mly"
       (Language.progr option)
# 1864 "parser.ml"
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
# 1952 "parser.ml"
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
# 1976 "parser.ml"
        ) = 
# 14 "parser.mly"
        ( None )
# 1980 "parser.ml"
         in
        _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 233 "/Users/tudorstanila/.opam/default/lib/menhir/standard.mly"
  

# 1991 "parser.ml"
