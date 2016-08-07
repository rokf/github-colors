module Update exposing (..)

import Messages exposing (..)
import Model exposing (..)
import Helpers exposing (..)
import Parsers
import Requests

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    HandleGetFile res ->
      { model | data = Parsers.yaml_parser res.value, all_text = Parsers.raw_text res.value} ! [ ]
    UpdateFilter new ->
      let
        filtered_data = (filter_data model new)
        dmsg = Debug.log "filter" new
      in
        { model | filter = new, filtered_data = filtered_data } ! []
    NoOp ->
      model ! []
    Error err -> -- TODO
      model ! []
