module Pages.Home exposing (Model, view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)


type alias Model =
    { lastMovies : List String }


view : Html msg
view =
    div
        []
        [ text "HOME!" ]
