port module Main exposing (..)

import Test exposing (describe)
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


-- Your Tests
import Tests


tests =
    describe "The Tests" 
        [ Tests.all
        ]


main : TestProgram
main =
    run emit tests


port emit : ( String, Value ) -> Cmd msg
