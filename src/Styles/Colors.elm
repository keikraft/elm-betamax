module Styles.Colors exposing (themeTitle)

import Css exposing (..)


themeTitle : { text : Color, background : Color, hover : Color }
themeTitle =
    { text = hex "ffffff"
    , background = hex "000000"
    , hover = hex "e3e3e3"
    }
