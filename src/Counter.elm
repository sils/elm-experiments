module Counter exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox
    { init = 0
    , update = update
    , view = view
    }

type alias Model = Int

type Msg
  = Inc
  | Dec

update : Msg -> Model -> Model
update msg model =
  case msg of
    Inc ->
      model + 1
    Dec ->
      model - 1

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Inc] [ text "Inc" ]
    , text (String.fromInt model)
    , button [ onClick Dec] [ text "Dec" ]
    ]
