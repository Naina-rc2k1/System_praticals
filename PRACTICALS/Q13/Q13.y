%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *msg);
%}
%token A B NL
%%
stmt: S B NL {printf("Valid string\n");
exit(0);}
;
S: A A A A A A A A A A X
;
X: A X
|
;
%%
int yyerror(char *msg)
{
printf("Invalid String!!!\n");
exit(0);
}
int main()
{
printf("Enter the string\n");
yyparse();
}
