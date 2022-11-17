
%{
#include<stdio.h>
int yylex();
int yyerror(char *msg);
int valid=0;
%}
%token A B
%%
start : A start B
|
;
%%
int yyerror(char *msg)
{
 valid=0;
printf("\nInvalid pattern!!\n");
return 0;
}
int main()
{
printf("\nEnter the pattern:- ");
yyparse();
if(valid)
{
printf("\nValid pattern!!\n");
}
}
