
(* The type of tokens. *)

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
  | OROR
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
  | INT of (int)
  | INSTOF
  | IF
  | ID of (string)
  | HASHTAG
  | GR
  | GE
  | FLOAT_TYPE
  | FLOAT of (float)
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
  | ANDAND
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Language.progr option)
