-module(quine).
-export([start/0]).
quine(Source) -> 
    io:format(Source ++ [$(,34] ++ Source ++ [34,$),$.]),
    halt().
start() ->
    quine("-module(quine).
-export([start/0]).
quine(Source) -> 
    io:format(Source ++ [$(,34] ++ Source ++ [34,$),$.]),
    halt().
start() ->
    quine").