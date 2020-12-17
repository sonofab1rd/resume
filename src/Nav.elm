module Nav exposing (customNav)

import Html exposing (Html, a, div, nav, p, text)
import Html.Attributes exposing (href)


customNav : Html msg
customNav =
    nav []
        [ div [] [ text "Jacob Dierkens, Software Developer" ]
        , a [ href "mailto:jacob.dierkens@gmail.com" ] [ text "jacob.dierkens@gmail.com" ]
        , p [] [ text "440-752-9928" ]
        ]
