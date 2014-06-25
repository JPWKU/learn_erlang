-module(what_the_if).
-export([heh_fine/0,oh_god/1,help_me/1]).

heh_fine() ->
    if 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1 =:= 1 -> %% program fails here because it cannot 'not' return something
        works              %% there is no 'else' to direct flow
    end,
    if 1 =:= 2, 1 =:= 1 ->
        fails
    end.

oh_god(N) ->
    if N =:= 2 -> might_succeed;
        true -> always_does %% 'else'
    end.

help_me(Animal) ->
    Talk = if Animal == cat  -> "meow";
              Animal == beef -> "mooo"; 
              Animal == dog  -> "bark"; 
              Animal == tree -> "bark";
              true -> "else default case" %% true acts like an 'else' 
           end,
    {Animal, "says " ++ Talk ++ " !"}.
 
