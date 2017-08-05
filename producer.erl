-module(producer).
-export([init/2]).

init(Buffer, Prod_Id) ->
  io:format("Producer ~w created number ~n",[Prod_Id]),
  listen(Buffer, Prod_Id).

listen(Buffer, Prod_Id) ->
  timer:sleep(rand:uniform(7)*100),
  Item = spawn(item, init, []),
  Buffer ! {available, self(), Item, Prod_Id},
  receive
    full ->
      io:format("Producer ~w tried to insert item. But buffer is full.~n", [Prod_Id]),
      listen(Buffer, Prod_Id);
    putItem ->
      listen(Buffer, Prod_Id)
  end.


