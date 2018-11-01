
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
  | MenhirState136
  | MenhirState128
  | MenhirState124
  | MenhirState113
  | MenhirState111
  | MenhirState103
  | MenhirState97
  | MenhirState93
  | MenhirState87
  | MenhirState83
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState55
  | MenhirState54
  | MenhirState53
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
# 80 "parser.mly"
                        ([v]@vl)
# 130 "parser.ml"
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
# 143 "parser.ml"
     in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _v : (Language.progr) = 
# 20 "parser.mly"
                    ( Language.Progr (dl) )
# 153 "parser.ml"
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
# 168 "parser.ml"
            ) = 
# 18 "parser.mly"
                  ( Some p)
# 172 "parser.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState136 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (dl : (Language.def list)) = _v in
        let _1 = () in
        let _v : (Language.def list) = 
# 24 "parser.mly"
                         ( dl )
# 189 "parser.ml"
         in
        _menhir_goto_def_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail -> (
# 2 "parser.mly"
       (int)
# 198 "parser.ml"
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
# 212 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 83 "parser.mly"
                         ( Language.Value (Language.Int (vall)) )
# 218 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run48 : _menhir_env -> 'ttv_tail -> (
# 4 "parser.mly"
       (string)
# 230 "parser.ml"
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
# 244 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 85 "parser.mly"
                         ( Language.Var (vname) )
# 250 "parser.ml"
         in
        _menhir_goto_paramVal _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run50 : _menhir_env -> 'ttv_tail -> (
# 3 "parser.mly"
       (float)
# 262 "parser.ml"
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
# 276 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 84 "parser.mly"
                           ( Language.Value (Language.Float (vall)) )
# 282 "parser.ml"
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
# 300 "parser.ml"
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
# 316 "parser.ml"
            ))), (parname : (
# 4 "parser.mly"
       (string)
# 320 "parser.ml"
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
# 332 "parser.ml"
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
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136)
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.def list) = 
# 23 "parser.mly"
    ( [] )
# 355 "parser.ml"
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
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ml : (Language.mthDeclList))) = _menhir_stack in
        let _v : (Language.mthDeclList) = 
# 35 "parser.mly"
                 ( ml )
# 377 "parser.ml"
         in
        _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) _v
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 405 "parser.ml"
            ))), _, (v : (Language.varList))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 65 "parser.mly"
                                                   ( Language.NewObj (cn,v) )
# 413 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FLOAT _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) _v
        | ID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) _v
        | INT _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) _v
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (vl : (Language.varList))) = _menhir_stack in
            let _v : (Language.varList) = 
# 77 "parser.mly"
                   ( vl )
# 439 "parser.ml"
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

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run111 : _menhir_env -> 'ttv_tail * _menhir_state * (Language.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAST ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | ID _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | IF ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | LET ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | NEW ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | WHILE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111

and _menhir_goto_blkExp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.blkExp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 ->
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
                        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
                    | LEFT_RBRACK ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState87
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
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
    | MenhirState87 ->
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
# 757 "parser.ml"
            ))), _, (then_exp : (Language.blkExp))), _, (else_exp : (Language.blkExp))) = _menhir_stack in
            let _10 = () in
            let _8 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 64 "parser.mly"
    ( Language.If (vname,then_exp,else_exp) )
# 769 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (ble : (Language.blkExp))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.exp) = 
# 70 "parser.mly"
                    ( Language.Blk (ble) )
# 786 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (tp : (Language.typ))), (mn : (
# 4 "parser.mly"
       (string)
# 795 "parser.ml"
        ))), _, (prl : (Language.fPrmList))), _, (e : (Language.blkExp))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : (Language.mthDecl list) = 
# 48 "parser.mly"
  ( [Language.MethDecl (tp,mn,prl,e)])
# 802 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL_TYPE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | BOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | FLOAT_TYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | INT_TYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | VOID_TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | RIGHT_BRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState124 in
            let _v : (Language.mthDeclList) = 
# 34 "parser.mly"
    ( [] )
# 827 "parser.ml"
             in
            _menhir_goto_meth_list1 _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
    | _ ->
        _menhir_fail ()

and _menhir_reduce3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 4 "parser.mly"
       (string)
# 840 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 846 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Language.exp) = 
# 169 "parser.mly"
            ( Language.Var (vname) )
# 851 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce8 : _menhir_env -> (('ttv_tail * _menhir_state * (
# 4 "parser.mly"
       (string)
# 858 "parser.ml"
))) * (
# 4 "parser.mly"
       (string)
# 862 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 868 "parser.ml"
    ))), (fld : (
# 4 "parser.mly"
       (string)
# 872 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (Language.exp) = 
# 174 "parser.mly"
                         (Language.Vfld (obj,fld) )
# 878 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Language.varList) = 
# 79 "parser.mly"
    ([])
# 887 "parser.ml"
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
# 905 "parser.ml"
        ))), (mname : (
# 4 "parser.mly"
       (string)
# 909 "parser.ml"
        ))), _, (v : (Language.varList))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _v : (Language.exp) = 
# 66 "parser.mly"
                                                                         ( Language.MethInv (obj,mname,v) )
# 917 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 930 "parser.ml"
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
            _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DIVIDE_FLOAT | DIVIDE_INT | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL | TIMES_FLOAT | TIMES_INT ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Language.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 175 "parser.mly"
                                         ( e )
# 993 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 180 "parser.mly"
                                       ( Language.MulInt (e1,e2) )
# 1014 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 181 "parser.mly"
                                         ( Language.MulFlt (e1,e2) )
# 1025 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 176 "parser.mly"
                                      ( Language.AddInt (e1,e2) )
# 1048 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 182 "parser.mly"
                                        ( Language.DivInt (e1,e2) )
# 1065 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Language.exp) = 
# 183 "parser.mly"
                                          ( Language.DivFlt (e1,e2) )
# 1076 "parser.ml"
         in
        _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 177 "parser.mly"
                                        ( Language.AddFlt (e1,e2) )
# 1099 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
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
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 178 "parser.mly"
                                       ( Language.DiffInt (e1,e2) )
# 1128 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | RIGHT_RBRACK | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 179 "parser.mly"
                                         ( Language.DiffFlt (e1,e2) )
# 1157 "parser.ml"
             in
            _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACE | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (vname : (
# 4 "parser.mly"
       (string)
# 1192 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 60 "parser.mly"
                                 ( Language.AsgnV (vname,e) )
# 1198 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACE | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (obj : (
# 4 "parser.mly"
       (string)
# 1233 "parser.ml"
            ))), (fld : (
# 4 "parser.mly"
       (string)
# 1237 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Language.exp) = 
# 61 "parser.mly"
                                             ( Language.AsgnF (obj,fld,e) )
# 1244 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 | MenhirState37 | MenhirState54 | MenhirState111 | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE_FLOAT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE_INT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_FLOAT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | MINUS_INT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_FLOAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | PLUS_INT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_FLOAT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | TIMES_INT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACE | SEMICOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (ae : (Language.exp))) = _menhir_stack in
            let _v : (Language.exp) = 
# 74 "parser.mly"
                ( ae )
# 1280 "parser.ml"
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
    | MenhirState54 ->
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
# 87 "parser.mly"
                                       ( Language.Bnvar (e) )
# 1311 "parser.ml"
             in
            _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
        | SEMICOL ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState113 | MenhirState111 ->
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
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | ID _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | IF ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | INT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | LEFT_RBRACK ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LET ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NEW ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NULL ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | TRUE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | VOID ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | WHILE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | RIGHT_BRACE | SEMICOL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (e1 : (Language.exp))), _, (e2 : (Language.exp))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (Language.exp) = 
# 62 "parser.mly"
                                     ( Language.Seq (e1,e2) )
# 1366 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
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
# 1391 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.exp) = 
# 67 "parser.mly"
                                                ( Language.WhileExp (v,e) )
# 1399 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMICOL ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (t : (Language.typ))), (vname : (
# 4 "parser.mly"
       (string)
# 1422 "parser.ml"
            ))), _, (e : (Language.exp))) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Language.blkExp) = 
# 88 "parser.mly"
                                                                                            ( Language.Bvar (t,vname,e) )
# 1432 "parser.ml"
             in
            _menhir_goto_blkExp _menhir_env _menhir_stack _menhir_s _v
        | SEMICOL ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
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

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAST ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | ID _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NEW ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | WHILE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

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
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | FLOAT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | ID _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | IF ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | INT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | LEFT_RBRACK ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | LET ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState37
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
# 173 "parser.mly"
          ( Language.Value (Language.Vvoid) )
# 1579 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 171 "parser.mly"
          ( Language.Value (Language.Bool (true)))
# 1591 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 170 "parser.mly"
       ( Language.Value (Language.Vnull) )
# 1603 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

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

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LEFT_RBRACK ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FLOAT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | ID _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LEFT_RBRACK ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NULL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VOID ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (int)
# 1681 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 2 "parser.mly"
       (int)
# 1689 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 167 "parser.mly"
         ( Language.Value (Language.Int (i)) )
# 1694 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | LEFT_RBRACK ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
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

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 1750 "parser.ml"
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
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | FLOAT _v ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | ID _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | INT _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | LEFT_RBRACK ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | NULL ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | TRUE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | VOID ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
            | LEFT_RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LEFT_BRACK ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState97 in
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
# 1815 "parser.ml"
                         in
                        _menhir_goto_meth_inv_params _menhir_env _menhir_stack _menhir_s _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | FLOAT _ | ID _ | INT _ | RIGHT_RBRACK ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
            | DIVIDE_FLOAT | DIVIDE_INT | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | SEMICOL | TIMES_FLOAT | TIMES_INT ->
                _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | FLOAT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | ID _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | INT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LEFT_RBRACK ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | NULL ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TRUE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | VOID ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
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
# 1881 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (v : (
# 4 "parser.mly"
       (string)
# 1886 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (Language.exp) = 
# 69 "parser.mly"
                        ( Language.InstOf (v,cn) )
# 1892 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DIVIDE_FLOAT | DIVIDE_INT | MINUS_FLOAT | MINUS_INT | PLUS_FLOAT | PLUS_INT | RIGHT_BRACE | SEMICOL | TIMES_FLOAT | TIMES_INT ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (float)
# 1913 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (f : (
# 3 "parser.mly"
       (float)
# 1921 "parser.ml"
    )) = _v in
    let _v : (Language.exp) = 
# 168 "parser.mly"
           (Language.Value (Language.Float (f)) )
# 1926 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Language.exp) = 
# 172 "parser.mly"
           ( Language.Value (Language.Bool (false)))
# 1938 "parser.ml"
     in
    _menhir_goto_arithExp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1971 "parser.ml"
                    )) = _v in
                    let ((_menhir_stack, _menhir_s), (cn : (
# 4 "parser.mly"
       (string)
# 1976 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : (Language.exp) = 
# 68 "parser.mly"
                                                ( Language.Cast (cn,v) )
# 1984 "parser.ml"
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
# 2021 "parser.ml"
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
# 2033 "parser.ml"
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
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState28
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
# 28 "parser.mly"
                                       ( fld@fl1 )
# 2072 "parser.ml"
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
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (fl : (Language.fldDeclList))) = _menhir_stack in
        let _1 = () in
        let _v : (Language.fldDeclList) = 
# 31 "parser.mly"
                            ( fl )
# 2116 "parser.ml"
         in
        _menhir_goto_field_list1 _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Language.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState128 | MenhirState6 ->
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
# 2138 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fldDecl list) = 
# 39 "parser.mly"
  ( [Language.FldDecl (t,fn)])
# 2144 "parser.ml"
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
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState128
                | BOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState128
                | FLOAT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState128
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
                | INT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState128
                | VOID_TYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState128
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)
            | HASHTAG ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Language.fldDeclList) = 
# 30 "parser.mly"
    ( [] )
# 2177 "parser.ml"
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
    | MenhirState124 | MenhirState17 ->
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
# 2248 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Language.typ))) = _menhir_stack in
            let _v : (Language.fPrm list) = 
# 52 "parser.mly"
                  ( [Language.Fprm (t,pn)])
# 2254 "parser.ml"
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
# 2287 "parser.ml"
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
    | MenhirState29 ->
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
                            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | FALSE ->
                            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | FLOAT _v ->
                            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                        | ID _v ->
                            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                        | IF ->
                            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | INT _v ->
                            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                        | LEFT_RBRACK ->
                            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                        | LET ->
                            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState34
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
# 40 "parser.mly"
              ( Language.Tprim (t) )
# 2393 "parser.ml"
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
# 2405 "parser.ml"
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
# 2417 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 2424 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (cn : (
# 4 "parser.mly"
       (string)
# 2432 "parser.ml"
    )) = _v in
    let _v : (Language.typ) = 
# 41 "parser.mly"
             ( Language.Tclass (cn) )
# 2437 "parser.ml"
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
# 2449 "parser.ml"
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
# 2461 "parser.ml"
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
# 2473 "parser.ml"
     in
    _menhir_goto_prim _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState136 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
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
# 14 "parser.mly"
       (Language.progr option)
# 2604 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 14 "parser.mly"
       (Language.progr option)
# 2612 "parser.ml"
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
# 2700 "parser.ml"
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
# 2724 "parser.ml"
        ) = 
# 17 "parser.mly"
        ( None )
# 2728 "parser.ml"
         in
        _menhir_goto_start _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 233 "/home/tudor96stani/.opam/system/lib/menhir/standard.mly"
  

# 2739 "parser.ml"
