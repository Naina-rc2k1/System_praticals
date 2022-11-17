/*Ques 13. A Program in YACC to recognize the language (𝑎𝑛𝑏 , n>=10).
(Output to say input is valid or not).*/

%{
#include "y.tab.h"
%}
%%
[aA] {return A;}
[bB] {return B;}
\n {return NL;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}
