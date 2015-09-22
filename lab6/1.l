%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+ {return NUM;}
['\t'] {;}
['\n'] {return 0;}
. {return yytext[0];}
%%
