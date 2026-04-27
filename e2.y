/* e2.y */

%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s, ...);
int yylex();
%}

%token EOL 0
%token L_PAR
%token R_PAR
%token PLUS
%token MINUS
%token TIMES
%token DIV
%token ERROR
%token NUM

%%
program: expr EOL; 

expr:
        expr PLUS expr   |
        expr MINUS expr  |
        expr TIMES expr  |
        expr DIV expr    |
        L_PAR expr R_PAR |
        NUM
;


%%
