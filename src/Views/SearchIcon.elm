module Views.SearchIcon exposing (view)

import Html.Styled exposing (Html)
import Svg.Styled exposing (..)
import Svg.Styled.Attributes exposing (d, fill, height, opacity, viewBox, width, x, y)


view : Html msg
view =
    svg
        [ x "0", y "0", width "48", height "48", viewBox "0 0 24 24", fill "#000000" ]
        [ path [ d "M18.853,17.438l-3.604-3.604c-0.075-0.075-0.166-0.127-0.267-0.156C15.621,12.781,16,11.686,16,10.5C16,7.463,13.537,5,10.5,5S5,7.463,5,10.5S7.463,16,10.5,16c1.186,0,2.281-0.379,3.18-1.018c0.028,0.101,0.08,0.191,0.155,0.267l3.604,3.604c0.301,0.301,0.858,0.227,1.249-0.165C19.079,18.297,19.153,17.739,18.853,17.438z M10.5,14C8.568,14,7,12.432,7,10.5S8.568,7,10.5,7S14,8.568,14,10.5S12.432,14,10.5,14z" ] [] ]
