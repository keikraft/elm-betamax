module Main exposing (main)

import Debug
import Html
import Html.Styled exposing (..)
import Navigation exposing (Location)
import Pages.Cast
import Pages.Discover
import Pages.Home
import Pages.NotFound
import Routing exposing (Route, parseLocation)


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view >> toUnstyled
        }


type Page
    = NotFound
    | Home Pages.Home.Model
    | Discover Pages.Discover.Model
    | Cast Pages.Cast.Model



-- MODEL


type alias Model =
    { route : Route }


initialModel : Route -> Model
initialModel route =
    { route = route }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
    ( initialModel currentRoute, Cmd.none )



-- UPDATE


type Msg
    = OnLocationChange Location


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            ( { model | route = parseLocation location }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    viewPage model


viewPage : Model -> Html Msg
viewPage model =
    case model.route of
        Routing.Home ->
            Pages.Home.view

        Routing.Discover ->
            Pages.Discover.view

        Routing.Cast ->
            Pages.Cast.view

        Routing.NotFound ->
            Pages.NotFound.view
