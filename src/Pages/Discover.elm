module Pages.Discover exposing (Model, view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)


type alias Model =
    { popular : List String }


view : Html msg
view =
    div []
        [ text "DISCOVER!" ]
