module Routing exposing (Route(..), parseLocation)

import Navigation exposing (Location)
import UrlParser as Url exposing (parseHash, s)


type Route
    = Home
    | Discover
    | Cast
    | NotFound


matchers : Url.Parser (Route -> a) a
matchers =
    Url.oneOf
        [ Url.map Home (s "")
        , Url.map Discover (s "discover")
        , Url.map Cast (s "cast")
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFound
