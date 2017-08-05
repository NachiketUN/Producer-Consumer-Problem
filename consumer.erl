-module(consumer).
-export([init/2]).

init(Buffer, Cons_Id) ->
  io:format("Consumer number ~w created~n",[Cons_Id]),
  listen(Buffer, Cons_Id).

listen(Buffer, Cons_Id) ->
  timer:sleep(rand:uniform(7)*100),
  Buffer ! {occupied, self(), Cons_Id},
  receive
    empty ->
      io:format("Consumer ~w tried to remove item. But buffer is empty. ~n", [Cons_Id]),
      listen(Buffer, Cons_Id);
    removeItem  ->
      listen(Buffer, Cons_Id)
  end.
