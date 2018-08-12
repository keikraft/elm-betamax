module Views.Header exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Views.BetamaxLogo


headerDiv : List (Attribute msg) -> List (Html msg) -> Html msg
headerDiv =
    styled div
        [ displayFlex
        , justifyContent spaceBetween
        , alignItems center
        , padding2 zero (px 10)
        , backgroundColor (hex "000000")
        ]


headerTitle : Html msg
headerTitle =
    styled span
        [ fontSize (px 16)
        , fontWeight (int 600)
        , color (hex "ffffff")
        ]
        []
        [ text "BETAMAX" ]


headerGithubLink : Html msg
headerGithubLink =
    styled a
        [ textDecoration none
        , color (hex "ffffff")
        ]
        [ href "https://github.com/k3ira/elm-betamax"
        , Html.Styled.Attributes.target "_blank"
        ]
        [ text "Github" ]


view : Html msg
view =
    headerDiv []
        [ Views.BetamaxLogo.view
        , headerTitle
        , headerGithubLink
        ]
