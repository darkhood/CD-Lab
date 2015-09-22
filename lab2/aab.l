%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
a {yylval ='a'; return A;}
b {yylval ='b'; return B;}
%%
