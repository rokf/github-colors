module Update exposing (..)

import Messages exposing (..)
import Model exposing (..)
import Parsers
import Requests

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    HandleGetFile res ->
      { model | data = Parsers.yaml_parser res.value, all_text = Parsers.raw_text res.value} ! [ ]
    _ ->
      model ! []
