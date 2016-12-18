module User.Decoder exposing (decodeFromGithub)

import Json.Decode exposing (field)
import Json.Decode.Extra exposing ((|:))
import User.Model exposing (..)


decodeFromGithub : Json.Decode.Decoder User
decodeFromGithub =
    Json.Decode.succeed User
        |: (field "avatar_url" Json.Decode.string)
        |: (field "login" Json.Decode.string)
        |: (Json.Decode.maybe (field "name" Json.Decode.string))
