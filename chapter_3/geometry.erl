-module(geometry).
-export([area/1]).

area({rectangle, Wdt, Ht}) -> Wdt * Ht;
area({circle, R}) -> 3.14159 * R * R.