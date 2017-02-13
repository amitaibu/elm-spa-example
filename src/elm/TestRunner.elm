port module Main exposing (..)

import App.Test as App exposing (..)
import Json.Encode exposing (Value)
import Test.Runner.Node exposing (run, TestProgram)
import Test exposing (describe, Test)


allTests : Test
allTests =
    describe "All tests"
        [ App.all
        ]


main : TestProgram
1
main =
    run emit allTests
33

port emit : ( String, Value ) -> Cmd msg
