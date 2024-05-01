%{
package main
import (
"fmt"
)
%}

%union {
    n int
}

%token NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE

%%

commands:   /* empty */
        | commands command
        ;

command:
        heat_switch
        |
        target_set
        ;

heat_switch:
        TOKHEAT STATE
        {
            fmt.Println("\tHeat turned on or off");
        }
        ;

target_set:
        TOKTARGET TOKTEMPERATURE NUMBER
        {
            fmt.Println("\tTemperature set");
        }
        ;