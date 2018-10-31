
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
  | MenhirState141
  | MenhirState133
  | MenhirState129
  | MenhirState123
  | MenhirState121
  | MenhirState119
  | MenhirState115
  | MenhirState109
  | MenhirState107
  | MenhirState106
  | MenhirState99
  | MenhirState94
  | MenhirState92
  | MenhirState85
  | MenhirState81
  | MenhirState80
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState62
  | MenhirState60
  | MenhirState55
  | MenhirState44
  | MenhirState38
  | MenhirState35
  | MenhirState30
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
# 80 "parser.mly"
                        ([v]@vl)
# 135 "parser.ml"
     in
    _menhir_goto_vlist _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_def_list1 : _menhir_env -> 'ttv_tail -> (Language.def list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (dl1 : (Language.def list)) = _v in
    let (_menhir_stack, _menhir_s, (d : (Language.def list))) = _menhir_stack in
    let _v : (Language.def list) = 
# 21 "parser.mly"
                                  ( d@dl1 )
# 148 "parser.ml"
     in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _v : (Language.progr) = 
# 20 "parser.mly"
                    ( Language.Progr (dl) )
# 158 "parser.ml"
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
# 14 "parser.mly"
       (Language.progr option)
# 173 "parser.ml"
            ) = 
# 18 "parser.mly"
                  ( Some p)
# 177 "parser.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _1 = () in
        let _v : (Language.def list) = 
# 24 "parser.mly"
                         ( dl )
# 194 "parser.ml"
         in
        _menhir_goto_def_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run48 : _menhir_env -> 'ttv_tail -> (
# 2 "parser.mly"
       (int)
# 203 "parser.ml"
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
# 217 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 83 "parser.mly"
                         ( Language.Value (Language.Int (vall)) )
# 223 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run50 : _menhir_env -> 'ttv_tail -> (
# 4 "parser.mly"
       (string)
# 235 "parser.ml"
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
# 249 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 85 "parser.mly"
                         ( Language.Var (vname) )
# 255 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run52 : _menhir_env -> 'ttv_tail -> (
# 3 "parser.mly"
       (float)
# 267 "parser.ml"
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
# 281 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 84 "parser.mly"
                           ( Language.Value (Language.Float (vall)) )
# 287 "parser.ml"
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
# 32 "parser.mly"
                                    ( mth@ml1 )
# 305 "parser.ml"
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
# 321 "parser.ml"
            ))), (parname : (
# 4 "parser.mly"
       (string)
# 325 "parser.ml"
            ))), _, (fl : (Language.fldDeclList))), _, (ml : (Language.mthDeclList))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.def list) = 
# 25 "parser.mly"
                                                                                                         (
  [Language.Def (clname,Language.ClassDecl (clname,parname,fl,ml))]
)
# 337 "parser.ml"
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
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.def list) = 
# 23 "parser.mly"
    ( [] )
# 360 "parser.ml"
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
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ml : (Language.mthDeclList))) = _menhir_stack in
        let _v : (Language.mthDeclList) = 
# 35 "parser.mly"
                 ( ml )
# 382 "parser.ml"
         in
        _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce34 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.blkExp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (ble : (Language.blkExp))) = _menhir_stack in
    let _v : (Language.exp) = 
# 70 "parser.mly"
               ( Language.Blk (ble) )
# 394 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_vlist : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.varList) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FLOAT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) _v
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
# 425 "parser.ml"
                ))), _, (v : (Language.varList))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.exp) = 
# 64 "parser.mly"
                                                             ( Language.NewObj (cn,v) )
# 434 "parser.ml"
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
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FLOAT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) _v
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (vl : (Language.varList))) = _menhir_stack in
            let _v : (Language.varList) = 
# 77 "parser.mly"
                   ( vl )
# 466 "parser.ml"
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

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_goto_blkExp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.blkExp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 | MenhirState123 | MenhirState38 | MenhirState121 | MenhirState77 | MenhirState109 | MenhirState106 | MenhirState107 | MenhirState85 | MenhirState92 | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState81 ->
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
                        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                    | LET ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
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
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | NEW | NULL | TRUE | VOID | WHILE ->
            _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState115 ->
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
# 689 "parser.ml"
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
# 701 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
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
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), (v : (
# 4 "parser.mly"
       (string)
# 740 "parser.ml"
        ))), _, (e1 : (Language.blkExp))), _, (e2 : (Language.blkExp))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (Language.exp) = 
# 69 "parser.mly"
                                               ( Language.If (v,e1,e2) )
# 748 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (tp : (Language.typ))), (mn : (
# 4 "parser.mly"
       (string)
# 757 "parser.ml"
        ))), _, (prl : (Language.fPrmList))), _, (e : (Language.blkExp))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : (Language.mthDecl list) = 
# 48 "parser.mly"
  ( [Language.MethDecl (tp,mn,prl,e)])
# 764 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL_TYPE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | BOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | FLOAT_TYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
        | INT_TYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | VOID_TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState129 in
            let _v : (Language.mthDeclList) = 
# 34 "parser.mly"
    ( [] )
# 789 "parser.ml"
             in
            _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129)
    | _ ->
        _menhir_fail ()

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 802 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 4 "parser.mly"
       (string)
# 812 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 818 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Language.exp) = 
# 169 "parser.mly"
            ( Language.Var (vname) )
# 823 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Language.varList) = 
# 79 "parser.mly"
    ([])
# 832 "parser.ml"
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
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 855 "parser.ml"
            ))), (mname : (
# 4 "parser.mly"
       (string)
# 859 "parser.ml"
            ))), _, (v : (Language.varList))) = _menhir_stack in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : (Language.exp) = 
# 65 "parser.mly"
                                                                                 ( Language.MethInv (obj,mname,v) )
# 868 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_arithExp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Language.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 171 "parser.mly"
                                         ( e )
# 915 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 176 "parser.mly"
                                       ( Language.MulInt (e1,e2) )
# 936 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 177 "parser.mly"
                                         ( Language.MulFlt (e1,e2) )
# 947 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | MINUS_FLOAT | MINUS_INT | NEW | NULL | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL | TRUE | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 172 "parser.mly"
                                      ( Language.AddInt (e1,e2) )
# 970 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 178 "parser.mly"
                                        ( Language.DivInt (e1,e2) )
# 987 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 179 "parser.mly"
                                          ( Language.DivFlt (e1,e2) )
# 998 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | MINUS_FLOAT | MINUS_INT | NEW | NULL | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL | TRUE | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 173 "parser.mly"
                                        ( Language.AddFlt (e1,e2) )
# 1021 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | MINUS_FLOAT | MINUS_INT | NEW | NULL | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL | TRUE | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 174 "parser.mly"
                                       ( Language.DiffInt (e1,e2) )
# 1050 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
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
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | MINUS_FLOAT | MINUS_INT | NEW | NULL | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL | TRUE | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 175 "parser.mly"
                                         ( Language.DiffFlt (e1,e2) )
# 1079 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 | MenhirState123 | MenhirState38 | MenhirState121 | MenhirState77 | MenhirState81 | MenhirState109 | MenhirState106 | MenhirState107 | MenhirState85 | MenhirState92 | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | NEW | NULL | RIGHT_BRACE | SEMICOL | TRUE | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (ae : (Language.exp))) = _menhir_stack in
            let _v : (Language.exp) = 
# 74 "parser.mly"
                ( ae )
# 1115 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState92 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 1166 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Language.exp) = 
# 59 "parser.mly"
                                     ( Language.AsgnV (vname,e) )
# 1173 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState123 | MenhirState121 | MenhirState109 | MenhirState107 | MenhirState94 | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RIGHT_BRACE | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _v : (Language.exp) = 
# 61 "parser.mly"
                    ( Language.Seq (e1,e2) )
# 1225 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState107 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1267 "parser.ml"
            ))), (fld : (
# 4 "parser.mly"
       (string)
# 1271 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : (Language.exp) = 
# 60 "parser.mly"
                                                 ( Language.AsgnF (obj,fld,e) )
# 1279 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
    | MenhirState77 | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState109 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (Language.exp))), _) = _menhir_stack in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Language.blkExp) = 
# 87 "parser.mly"
                                                ( Bnvar (e) )
# 1337 "parser.ml"
                 in
                _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState121 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (v : (
# 4 "parser.mly"
       (string)
# 1391 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 66 "parser.mly"
                                                ( Language.WhileExp (v,e) )
# 1399 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CAST ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState123 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s), _, (t : (Language.typ))), (vname : (
# 4 "parser.mly"
       (string)
# 1453 "parser.ml"
                ))), _, (e : (Language.exp))), _) = _menhir_stack in
                let _10 = () in
                let _9 = () in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (Language.blkExp) = 
# 88 "parser.mly"
                                                                                                         ( Bvar (t,vname,e) )
# 1465 "parser.ml"
                 in
                _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

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
        | LEFT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CAST ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FALSE ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FLOAT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | ID _v ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | IF ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | INT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | LEFT_BRACE ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LEFT_RBRACK ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NEW ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NULL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TRUE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | VOID ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | WHILE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
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
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 57 "parser.mly"
         ( Language.Value (Language.Vvoid) )
# 1562 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 55 "parser.mly"
         ( Language.Value (Language.Bool (true)))
# 1574 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 54 "parser.mly"
        ( Language.Value (Language.Vnull) )
# 1586 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack) MenhirState44
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

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | BOOL_TYPE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | BOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FLOAT_TYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INT_TYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | VOID_TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAST ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FALSE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FLOAT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | ID _v ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IF ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LEFT_BRACE ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NEW ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NULL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | VOID ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | WHILE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (int)
# 1714 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 2 "parser.mly"
       (int)
# 1722 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 167 "parser.mly"
         ( Language.Value (Language.Int (i)) )
# 1727 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                let _menhir_s = MenhirState80 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CAST ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | FALSE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | FLOAT _v ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | ID _v ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | IF ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | INT _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | LEFT_BRACE ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | LEFT_RBRACK ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | LET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | NEW ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | NULL ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | TRUE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | VOID ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | WHILE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
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

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1809 "parser.ml"
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
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | FALSE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | FLOAT _v ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | ID _v ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | IF ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | INT _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | LEFT_BRACE ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | LEFT_RBRACK ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | LET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | NEW ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | NULL ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | TRUE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | VOID ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | WHILE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
            | LEFT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACK ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState99 in
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
# 76 "parser.mly"
                                  ( [] )
# 1886 "parser.ml"
                         in
                        _menhir_goto_meth_inv_params _menhir_env _menhir_stack _menhir_s _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | FLOAT _ | ID _ | INT _ | RIGHT_RBRACK ->
                    _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
            | CAST | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LET | NEW | NULL | RIGHT_BRACE | SEMICOL | TRUE | VOID | WHILE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1906 "parser.ml"
                ))), (fld : (
# 4 "parser.mly"
       (string)
# 1910 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Language.exp) = 
# 58 "parser.mly"
                        (Language.Vfld (obj,fld) )
# 1916 "parser.ml"
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
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | FALSE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | FLOAT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | IF ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | LEFT_BRACE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NEW ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NULL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | VOID ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | WHILE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
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
# 1980 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (v : (
# 4 "parser.mly"
       (string)
# 1985 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 68 "parser.mly"
                         ( Language.InstOf (v,cn) )
# 1991 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | CAST | DIVIDE_FLOAT | DIVIDE_INT | FALSE | FLOAT _ | ID _ | IF | INT _ | LEFT_BRACE | LEFT_RBRACK | LET | MINUS_FLOAT | MINUS_INT | NEW | NULL | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | SEMICOL | TIMES_FLOAT | TIMES_INT | TRUE | VOID | WHILE ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (float)
# 2012 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (f : (
# 3 "parser.mly"
       (float)
# 2020 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 168 "parser.mly"
           (Language.Value (Language.Float (f)) )
# 2025 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 56 "parser.mly"
          ( Language.Value (Language.Bool (false)))
# 2037 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 2070 "parser.ml"
                    )) = _v in
                    let ((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 2075 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : (Language.exp) = 
# 67 "parser.mly"
                                                  ( Language.Cast (cn,v) )
# 2083 "parser.ml"
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
# 49 "parser.mly"
                                    ( pr@pl1 )
# 2120 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (pl : (Language.fPrmList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fPrmList) = 
# 51 "parser.mly"
                                    ( pl )
# 2132 "parser.ml"
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
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LET ->
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
# 28 "parser.mly"
                                       ( fld@fl1 )
# 2171 "parser.ml"
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
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (fl : (Language.fldDeclList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fldDeclList) = 
# 31 "parser.mly"
                            ( fl )
# 2215 "parser.ml"
         in
        _menhir_goto_field_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState133 | MenhirState6 ->
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
# 2237 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fldDecl list) = 
# 39 "parser.mly"
  ( [Language.FldDecl (t,fn)])
# 2243 "parser.ml"
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
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState133
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState133
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState133
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState133
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
            | HASHTAG ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.fldDeclList) = 
# 30 "parser.mly"
    ( [] )
# 2276 "parser.ml"
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
    | MenhirState129 | MenhirState17 ->
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
# 2347 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fPrm list) = 
# 52 "parser.mly"
                  ( [Language.Fprm (t,pn)])
# 2353 "parser.ml"
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
# 50 "parser.mly"
               ( [] )
# 2386 "parser.ml"
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
    | MenhirState30 ->
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
                            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | FALSE ->
                            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | FLOAT _v ->
                            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
                        | ID _v ->
                            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
                        | IF ->
                            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | INT _v ->
                            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
                        | LEFT_BRACE ->
                            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | LEFT_RBRACK ->
                            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | LET ->
                            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | NEW ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | NULL ->
                            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | TRUE ->
                            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | VOID ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | WHILE ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
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
# 40 "parser.mly"
              ( Language.Tprim (t) )
# 2494 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 46 "parser.mly"
                  ( Language.Tvoid )
# 2506 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 43 "parser.mly"
                  ( Language.Tint )
# 2518 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 2525 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (cn : (
# 4 "parser.mly"
       (string)
# 2533 "parser.ml"
    )) = _v in
    let _v : (Language.typ) = 
# 41 "parser.mly"
             ( Language.Tclass (cn) )
# 2538 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 44 "parser.mly"
                   ( Language.Tfloat )
# 2550 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.typ) = 
# 42 "parser.mly"
           ( Language.Tbot )
# 2562 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.tPrim) = 
# 45 "parser.mly"
                  ( Language.Tbool )
# 2574 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
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
# 14 "parser.mly"
       (Language.progr option)
# 2725 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 14 "parser.mly"
       (Language.progr option)
# 2733 "parser.ml"
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
# 14 "parser.mly"
       (Language.progr option)
# 2821 "parser.ml"
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
# 14 "parser.mly"
       (Language.progr option)
# 2845 "parser.ml"
        ) = 
# 17 "parser.mly"
        ( None )
# 2849 "parser.ml"
         in
        _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 233 "/Users/tudorstanila/.opam/default/lib/menhir/standard.mly"
  

# 2860 "parser.ml"
