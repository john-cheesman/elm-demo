module Main exposing (..)

import Html exposing (Html, button, div, text, section, h1, input)
import Html.Attributes exposing (class, placeholder)
import Html.Events exposing (onInput)


main : Program Never { content: String } Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    {
        content: String
    }


model : { content: String }
model =
    { content = "" }



-- UPDATE


type Msg
    = Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newContent ->
            { model | content = newContent }



-- VIEW


view : Model -> Html Msg
view model =
    section [ class "text-reverse" ] [
        h1 [] [ text "Text reverse" ]
        , input [ placeholder "Text to reverse", onInput Change ] []
        , div [] [ text (String.reverse model.content) ]
        ]
