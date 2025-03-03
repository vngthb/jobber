%%%-------------------------------------------------------------------
%% @doc jobber public API
%% @end
%%%-------------------------------------------------------------------

-module(jobber_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    jobber_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
