%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM;
%left '+' '-';
%left '*' '/';
%right UNIMUS;
%%

start: exp {printf("%d\n", $1);}
	;
	
exp:	exp '+' exp {$$=$1+$3;}
	| exp '-' exp {$$=$1-$3;}
	| exp '*' exp {$$=$1*$3;}
	| exp '/' exp {$$=$1/$3;}
	| '('exp')' {$$=$2;}
	| NUM
	;
	
%%

int yyerror(){
 printf("Error, Wrong Expression");
}

int main()
{
	yyparse();
	return 0;
}
