
/*Ques 12. A Program in YACC to recognise the strings “ab” , “abab” ,
“ababab”____ of the language (anbn , n>=1).*/
%{
#include "y.tab.h"
%}
%%
a return A;
b return B;
.|[\n] return 0;
%%
int yywrap()
{
return 1;
}
