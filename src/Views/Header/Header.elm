module Views.Header.Header exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Styles.Colors exposing (themeTitle)
import Views.Header.BetamaxLogo as BetamaxLogo
import Views.Header.MenuLinks as MenuLinks


headerDiv : List (Attribute msg) -> List (Html msg) -> Html msg
headerDiv =
    styled div
        [ displayFlex
        , justifyContent spaceBetween
        , alignItems flexEnd
        , padding3 (px 5) (px 30) (px 10)
        , backgroundColor (hex "000000")
        ]


headerTitle : Html msg
headerTitle =
    styled div
        [ displayFlex
        , alignItems center
        , flexDirection column
        , fontSize (px 16)
        , fontWeight (int 600)
        , fontFamilies [ "IBM Plex Sans", "sans-serif" ]
        , color themeTitle.text
        ]
        []
        [ BetamaxLogo.view
        , text "BETAMAX"
        ]


view : Html msg
view =
    headerDiv []
        [ MenuLinks.view
        , headerTitle
        , MenuLinks.github
        ]
