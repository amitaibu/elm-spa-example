module Main exposing (..)

import Test exposing (..)
import Test.Runner.Html
import App.Test as App exposing (..)
import Pages.Login.Test as PagesLogin exposing (..)


main : Test.Runner.Html.TestProgram
main =
    [ App.all
    , PagesLogin.all
    ]
        |> concat
        |> Test.Runner.Html.run
