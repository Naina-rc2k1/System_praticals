/*Ques 10. A Program in YACC which recognizes a valid variable which
starts with a letter followed by a digit. The letter should be in
lowercase only.*/

%{
#include "y.tab.h"
%}
letter [a-z]
digit [0-9]
newline [\n]
%%
{letter} { return letter ;}
{digit} { return digit ; }
{newline} { return newline ;}
. { printf("Invalid Variable\n");exit(0); }
%%
int yywrap()
{ return 1; }

