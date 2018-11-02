-module(color_test).
-author("kevinquillen").
-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assertEqual("purple", color:get("")),
  ?assertEqual("purple", color:get("vrefn")),
  ?assertEqual("green", color:get("GrEeN")),
  ?assertEqual("purple", color:get("PURPLE")),
  ?assertEqual("orange", color:get("OrAnge")),
  ?assertEqual("blue", color:get("BlUe")),
  ?assertEqual("yellow", color:get("yellow")),
  ?assertEqual("grey", color:get("grey")),
  ?assertEqual("red", color:get("red")),
  ?assertNotEqual("black", color:get("BLACK")),
  ?assertNotEqual("OrAnge", color:get("OrAnge")),
  ?assertNotEqual("orange", color:get("orange ")).

