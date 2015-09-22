%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B
%%
S : A S B
  | 
  ;

%%

int yyerror()
{
	printf("Error detected \n");
	exit(1);
}

int main()
{
	printf("Enter the string : ");
	yyparse();
	printf("The string is accepted \n");
	return 0;
}
