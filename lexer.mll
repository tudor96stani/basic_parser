{
open Lexing
open Parser

exception SyntaxError of string

let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }
}

let int = '-'? ['0'-'9'] ['0'-'9']*
let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = digit* frac? exp?
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9']*

rule read =
  parse
  | "class"  { CLASS}
  | "extends" { XTENDS }
  | "int"    { INT_TYPE }
  | "float"  { FLOAT_TYPE }
  | "bool"   { BOOL_TYPE }
  | "void"   { VOID_TYPE }
  | "if"     { IF }
  | "then"   { THEN }
  | "else"   { ELSE }
  | "new"    { NEW }
  | "while"  { WHILE }
  | "instanceof" { INSTOF }
  | "true"   { TRUE }
  | "false"  { FALSE }
  | "null"   { NULL }
  | white    { read lexbuf }
  | newline  { next_line lexbuf; read lexbuf }
  | int      { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float    { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | id       { ID (Lexing.lexeme lexbuf)}
  | "()"     { VOID }
  | ':'      { COLON }
  | ';'      { SEMICOL }
  | ','      { COMMA }
  | '.'      { DOT }
  | '{'      { LEFT_BRACE }
  | '}'      { RIGHT_BRACE }
  | '['      { LEFT_BRACK }
  | ']'      { RIGHT_BRACK }
  | '('      { LEFT_RBRACK }
  | ')'      { RIGHT_RBRACK }
  | '='      { EQUALS }
  | '#'      { HASHTAG }
  | "_|_"    { BOT }
  | "+."     { PLUS_FLOAT }
  | "-."     { MINUS_FLOAT }
  | "*."     { TIMES_FLOAT }
  | "/."     { DIVIDE_FLOAT }
  | '+'      { PLUS_INT }
  | '-'      { MINUS_INT }
  | '*'      { TIMES_INT }
  | '/'      { DIVIDE_INT }
  | '&'      { AND }
  | '|'      { OR }
  | '!'      { NOT }
  | '>'      { GR }
  | '<'      { LS }
  | ">="     { GE }
  | "<="     { LE }
  | "=="     { EQEQ }
  | "!="     { NE }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof      { EOF }