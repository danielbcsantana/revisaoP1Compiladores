#include <stdio.h>
#include <stdbool.h>
#include "token.h"

extern int yylex(void);
extern char *yytext;

extern bool isDouble;
extern double yyval_num;

int main()
{
    int token;

    while ((token = yylex()) != EOL)
    {
        switch(token)
        {
            case NUM:
                if (isDouble == true) 
                {
                    printf("categoria do token: %d, constante numérica: %.1f\n", token, yyval_num);
                    break;
                }
                else
                {
                    printf("categoria do token: %d, constante numérica: %d\n", token, (int)yyval_num);
                    break;
                }
                
            case ERROR:
                printf("erro léxico: caractere inválido\n");
                break;
            default:
                printf("categoria do token: %d\n", token);
        }
    }
    return 0;
}
