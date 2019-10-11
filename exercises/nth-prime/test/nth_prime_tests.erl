%% Based on canonical data version 2.1.0.1
%% Generated with 'testgen v0.1.0'
%% https://github.com/exercism/problem-specifications/raw/4a3ba76cf247f83f2417b35df68404279942df07/exercises/nth-prime/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(nth_prime_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_first_prime_test_'() ->
    {"first prime", ?_assertEqual(2, nth_prime:prime(1))}.

'2_second_prime_test_'() ->
    {"second prime", ?_assertEqual(3, nth_prime:prime(2))}.

'3_sixth_prime_test_'() ->
    {"sixth prime", ?_assertEqual(13, nth_prime:prime(6))}.

'4_big_prime_test_'() ->
    {"big prime",
     ?_assertEqual(104743, nth_prime:prime(10001))}.

'5_there_is_no_zeroth_prime_test_'() ->
    {"there is no zeroth prime",
     ?_assertError(_, nth_prime:prime(0))}.
