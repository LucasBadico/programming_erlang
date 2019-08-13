-module(shop).
-export([total/1, total_old/1, cost/1]).
-import(my_lists, [map/2, sum/1]).

total_old([{What,N} |T]) -> cost(What) * N + total(T);
total_old([]) -> 0.


cost(oranges) -> 5;
cost(newspaper) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.


total(L) -> sum([shop: cost(Item) * Qtd || {Item, Qtd} <- L]).
