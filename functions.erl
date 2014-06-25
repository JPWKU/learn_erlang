-module(functions).
-export([head/1,second/1,same/2,valid_time/1]).

head([H|_]) -> H.

second([_,X|_]) -> X.

same(X,X) ->
    true;
same(_,_) -> 
    false.

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
    io:format("Date tuple ~p says the date is: ~p/~p/~p~n",[Date,Y,M,D]),
    io:format("Time tuple ~p says the time is: ~p:~p:~p~n",[Time,H,Min,S]);
valid_time(_) ->
    io:format("I need a valid date format~n").

