module Section exposing (section)

import Html exposing (Html, h1, text)


sectionText : String -> String
sectionText description =
    description


section : String -> Html msg
section desciption =
    h1 [] [ text (sectionText desciption) ]
