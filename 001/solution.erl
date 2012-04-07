#!/usr/bin/env escript
-import(lists).

solve(Upper) ->
    Range = lists:seq(1, Upper),
    lists:sum([Number || Number <- Range, Number rem 3 == 0, Number rem 5 == 0]).

main([Argument]) ->
    Number = list_to_integer(Argument),
    io:format("~w~n", [solve(Number)]);

% Allow the script to be invoked without providing any arguments.
main([]) ->
    main(["1000"]).
