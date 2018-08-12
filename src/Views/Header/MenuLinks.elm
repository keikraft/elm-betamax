module Views.Header.MenuLinks exposing (github, view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (href)
import Routing exposing (Route(..), routeToUrl)
import Styles.Colors exposing (themeTitle)


headerMenuLinks : List (Attribute msg) -> List (Html msg) -> Html msg
headerMenuLinks =
    styled div
        [ displayFlex
        , justifyContent spaceAround
        , alignItems center
        ]


menuLink : List (Attribute msg) -> List (Html msg) -> Html msg
menuLink =
    styled a
        [ marginRight (px 20)
        , padding2 (px 2) zero
        , fontSize (px 16)
        , color themeTitle.text
        , borderBottom3 (px 2) solid transparent
        , textDecoration none
        , cursor pointer
        , hover
            [ borderBottom3 (px 2) solid themeTitle.text ]
        ]


github : Html msg
github =
    menuLink
        [ href "https://github.com/k3ira/elm-betamax"
        , Html.Styled.Attributes.target "_blank"
        ]
        [ text "GITHUB" ]


view : Html msg
view =
    headerMenuLinks []
        [ menuLink [ href (routeToUrl Home) ] [ text "HOME" ]
        , menuLink [ href (routeToUrl Cast) ] [ text "CAST" ]
        , menuLink [ href (routeToUrl Discover) ] [ text "DISCOVER" ]
        ]
