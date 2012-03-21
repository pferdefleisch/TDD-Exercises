-module(pubsub_parser_tests).
-include_lib("eunit/include/eunit.hrl").
-include("../src/message.hrl").

parse_publish_selector_test() ->
    Message = "publish-connection",
    Res = pubsub_parser:parse(Message),
    ?assertMatch(#pipe_declaration{type = publish},Res).

parse_subscribe_selector_test() ->
    Message = "subscribe-connection",
    Res = pubsub_parser:parse(Message),
    ?assertMatch(#pipe_declaration{type = subscribe},Res).
    


    
