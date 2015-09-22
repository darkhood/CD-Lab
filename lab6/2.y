%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM;
%%
start: exp {printf("valid");}
	 ;
exp:  exp '+' exp
	 |exp '-' exp
	 |exp '*' exp
	 |exp '/' exp
	 |'(' exp ')'
	 |NUM
	 ;
%%

int yyerror()
{
   printf("wrong");
   exit(0);
}

int main()
{
  yyparse();
  print("valid");
  return 0;
  
}  
