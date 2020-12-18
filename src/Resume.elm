module Resume exposing (..)

import Browser
import Html exposing (Attribute, Html, a, div, h1, h2, input, nav, p, section, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Nav exposing (customNav)
import Section exposing (section)


main : Program () Model Msg
main =
    Browser.element { init = init, subscriptions = subscriptions, update = update, view = view }


type alias Model =
    { content : String
    }


type alias Flag =
    { content : String }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


init : flags -> ( Model, Cmd Msg )
init flags =
    ( initialModel, Cmd.none )


initialModel : Model
initialModel =
    { content = "" }


type Msg
    = Change String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newContent ->
            ( { model | content = newContent }, Cmd.none )


sections : List String
sections =
    [ "Experience", "Languages", "Frameworks/Libraries", "Database", "Software", "Extracurriculars", "Education" ]


view : Model -> Html Msg
view model =
    div []
        [ customNav
        , div [ id "sections" ] (List.map Section.section sections)
        ]
