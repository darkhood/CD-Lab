%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B

%%

S : term1 term2 
  ;
  
term1 : A term1
      | A
      ;
term2 : B term2
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
	printf("The string is accepted by the grammar \n");
	return 0;
}
