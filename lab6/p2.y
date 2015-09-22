%{ 
#include <stdio.h>
#include <stdlib.h>
%}
%token NUM;                                
%%
start: exp {printf("valid\n");}              
       ;
exp:   exp '+' exp                                         
       |exp '-' exp
       |exp '*' exp
       |exp '/' exp                
       |'(' exp ')'
       |NUM           
       ;
       
%%               
 
int yyerror()                                                      
{
   printf("wrong\n");
   exit(0);
} 

int main()              
{
  yyparse();
  // printf("valid\n");
  return 0;                


}                                                                                                                            
