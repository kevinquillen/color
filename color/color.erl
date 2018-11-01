-module(color).
-author("kevinquillen").
-export([get/1]).

-define (DefaultColor, "purple").
-define (Approved, ["purple", "green", "blue", "yellow", "grey", "red"]).

get(Color) ->
  X = string:lowercase(Color),
    case lists:member(X, ?Approved) of
      true -> X;
      false -> ?DefaultColor
    end.