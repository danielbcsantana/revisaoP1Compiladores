/* recognize tokens for the calculator */

%option noyywrap
%{
#include "token.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

double yyval_num;
bool isDouble; 
%}
DIGIT   [0-9]
%%

[ |\t]                      { /* skip whitespace */ }

{DIGIT}+"."{DIGIT}+         {
                             isDouble = true;
                             yyval_num = atof(yytext); 
                             return NUM;  
                            }

{DIGIT}+                    {
                             isDouble = false;
                             yyval_num = atoi(yytext);    
                             return NUM;
                            }

"("                         {return L_PAR;}

")"                         {return R_PAR;}

"+"                         {return PLUS;}

"-"                         {return MINUS;}

"*"                         {return TIMES;}

"/"                         {return DIV;}

\n                          {return EOL;}

.                           {return ERROR;}

%%
