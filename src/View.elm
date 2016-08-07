module View exposing (..)

import Messages exposing (..)
import Model exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

view : Model -> Html Msg
view model =
  div [] [text "View"]
