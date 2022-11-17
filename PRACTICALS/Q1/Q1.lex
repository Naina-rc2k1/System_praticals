%{ 
 // to count no of lines and characters 
#include <stdio.h>
int sc=0,lc=0,ch=0,num=0,total=0;
%}

%%
\n ++lc;
[a-zA-Z] ch++;
. sc++;
%%

int main()
{   
  yylex();
  total=ch+sc;
  printf("\nFILE CONTENTS");
  printf("\nNo. of chracters=%d",total);
  printf("\nNO. of lines=%d",lc);
  return 0;
}
int yywrap()
{  return 1;
 
}

