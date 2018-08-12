module Routing exposing (Route(..), parseLocation, routeToUrl)

import Navigation exposing (Location)
import UrlParser as Url exposing (parsePath, s)


type Route
    = Home
    | Discover
    | Cast
    | NotFound


matchers : Url.Parser (Route -> a) a
matchers =
    Url.oneOf
        [ Url.map Home Url.top
        , Url.map Discover (s (routeToUrl Discover))
        , Url.map Cast (s (routeToUrl Cast))
        ]


parseLocation : Location -> Route
parseLocation location =
    case parsePath matchers location of
        Just route ->
            route

        Nothing ->
            NotFound


routeToUrl : Route -> String
routeToUrl route =
    case route of
        Home ->
            "/"

        Discover ->
            "discover"

        Cast ->
            "cast"

        NotFound ->
            "not-found"
