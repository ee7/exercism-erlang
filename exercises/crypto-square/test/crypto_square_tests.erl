%% Based on canonical data version 3.2.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/crypto-square/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(crypto_square_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_empty_plaintext_results_in_an_empty_ciphertext_test'() ->
    ?assertEqual([], crypto_square:ciphertext([])).

'2_lowercase_test'() ->
    ?assertEqual("a", crypto_square:ciphertext("A")).

'3_remove_spaces_test'() ->
    ?assertEqual("b", crypto_square:ciphertext("  b ")).

'4_remove_punctuation_test'() ->
    ?assertEqual("1", crypto_square:ciphertext("@1,%!")).

'5_9_character_plaintext_results_in_3_chunks_of_3_characters_test'() ->
    ?assertEqual("tsf hiu isn",
		 crypto_square:ciphertext("This is fun!")).

'6_8_character_plaintext_results_in_3_chunks_the_last_one_with_a_trailing_space_test'() ->
    ?assertEqual("clu hlt io ",
		 crypto_square:ciphertext("Chill out.")).

'7_54_character_plaintext_results_in_7_chunks_the_last_two_with_trailing_spaces_test'() ->
    ?assertEqual("imtgdvs fearwer mayoogo anouuio ntnnlvt "
		 "wttddes aohghn  sseoau ",
		 crypto_square:ciphertext("If man was meant to stay on the ground, "
					  "god would have given us roots.")).
