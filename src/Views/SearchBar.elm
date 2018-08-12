module Views.SearchBar exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Views.SearchIcon exposing (view)


searchBar =
    styled div
        [ displayFlex
        , alignItems center
        , Css.width (pct 100)
        , padding2 zero (px 20)
        , borderBottom3 (px 1) solid (hex "e3e3e3")
        ]


searchInput =
    styled input
        [ flex (int 1)
        , marginLeft (px 10)
        , fontSize (px 16)
        , fontWeight (int 100)
        , border zero
        , outline none
        , pseudoElement "placeholder"
            [ color (hex "a7a7a7") ]
        ]


view : Html msg
view =
    searchBar
        []
        [ Views.SearchIcon.view
        , searchInput [ autofocus True, placeholder "Search by title, artist, ..." ] []
        ]
