%{
package main
%}

%union {
  n int
}

%token NUM

%type<n> exp NUM

%%
input:    /* empty */
       | input line
;

line:     '\n'
       | exp '\n'      { println($1); }
;

exp:     NUM           { $$ = $1;        }
       | exp exp '+'   { $$ = $1 + $2; }
       | exp exp '-'   { $$ = $1 - $2; }
       | exp exp '*'   { $$ = $1 * $2; }
       | exp exp '/'   { $$ = $1 / $2; }
	/* Unary minus    */
       | exp 'n'       { $$ = -$1;       }
;
%%
