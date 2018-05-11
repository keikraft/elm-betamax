module Views.SearchBar exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Views.SearchIcon exposing (view)


searchBar =
    styled div
        []


searchInput =
    styled input
        []


view : Html msg
view =
    searchBar
        []
        [ Views.SearchIcon.view
        , searchInput [] []
        ]
