-module(color_test).
-author("kevinquillen").
-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assertEqual(color:get(""), "purple"),
  ?assertEqual(color:get("vrefn"), "purple"),
  ?assertEqual(color:get("GrEeN"), "green"),
  ?assertEqual(color:get("PURPLE"), "purple"),
  ?assertEqual(color:get("OrAnge"), "orange"),
  ?assertEqual(color:get("BlUe"), "blue"),
  ?assertEqual(color:get("yellow"), "yellow"),
  ?assertEqual(color:get("grey"), "grey"),
  ?assertEqual(color:get("red"), "red"),
  ?assertNotEqual(color:get("BLACK"), "black"),
  ?assertNotEqual(color:get("OrAnge"), "OrAnge"),
  ?assertNotEqual(color:get("orange "), "orange").

