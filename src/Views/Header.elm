module Views.Header exposing (view)

import Color
import Element exposing (..)
import Element.Attributes exposing (..)
import Html exposing (Html, nav)
import Style exposing (..)
import Style.Color as Color
import Style.Font as Font


type Styles
    = HeaderRow
    | HeaderTitle


stylesheet : StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ style HeaderRow
            [ Color.background Color.grey
            ]
        , style HeaderTitle
            [ Color.text Color.white
            , Font.size 16
            ]
        ]


view : Html msg
view =
    layout stylesheet <|
        row HeaderRow
            [ padding 10, spread ]
            [ el HeaderTitle [] (text "ELM - Radio")
            , el HeaderTitle [] (text "ELM - Radio")
            ]
