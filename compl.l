%option noyywrap yylineno
%{
#include "token.h"
%}

DIGIT      [0-9]
LETTER     [A-Za-z]
IDT        {LETTER}({LETTER}|{DIGIT}|_)*
NUMT       {DIGIT}+

%%

[ \t\r]+                ;
\n                      ;

"//".*                  ;

"=="                    { return EQT; }
">="                    { return GTET; }
"<="                    { return LTET; }
"!="                    { return NEQT; }

"array"                 { return ARRAYT; }
"boolean"               { return BOOLEANT; }
"else"                  { return ELSET; }
"false"                 { return FALSET; }
"function"              { return FUNCTIONT; }
"if"                    { return IFT; }
"integer"               { return INTEGERT; }
"print"                 { return PRINTT; }
"return"                { return RETURNT; }
"true"                  { return TRUET; }
"void"                  { return VOIDT; }
"while"                 { return WHILET; }

{NUMT}                  { return NUM; }
{IDT}                   { return ID; }

\"                      { return ERROR; }

":"                     { return ':'; }
";"                     { return ';'; }
","                     { return ','; }
"("                     { return '('; }
")"                     { return ')'; }
"{"                     { return '{'; }
"}"                     { return '}'; }
"["                     { return '['; }
"]"                     { return ']'; }
"+"                     { return '+'; }
"-"                     { return '-'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
"%"                     { return '%'; }
"^"                     { return '^'; }
"<"                     { return '<'; }
">"                     { return '>'; }
"="                     { return '='; }

.                       { return ERROR; }

%%
