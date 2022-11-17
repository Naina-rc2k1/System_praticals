/* program to find longest word*/
%{
#include <stdio.h>
#include <strings.h>

// initialising length
int length=0;
//char array for storing longets word
char longestword[50];
%}

%%
[A-Za-z0-9]+ {if (yyleng >length){
               length=yyleng;
      //strcpy function to copy current word in yytxt in longest
        strcpy(longestword,yytext);
        }
     }
 "." return 1;
%%

int main()
{ printf("Enter the text.you can enter text in multi line also.\n\nEnter dot '.' to exit and    see results.\n");
 yylex();
 printf("Longest word:%s\n",longestword);
  
  return 0;
  }
  int yywrap(){
   return 1;
   }    
