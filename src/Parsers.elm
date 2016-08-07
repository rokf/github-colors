module Parsers exposing (..)

import Http
import Dict
import Json.Decode exposing ((:=))
import Regex

import Model exposing (..)

yaml_parser : Http.Value -> Dict.Dict String String
yaml_parser val =
  let
    text =
      case val of
        Http.Text txt ->
          txt
        _ ->
          "yaml_parser : ERROR"
  in
    Dict.fromList []

raw_text : Http.Value -> String
raw_text val =
  let
    text =
      case val of
        Http.Text txt ->
          txt
        _ ->
          "raw_text : ERROR"
  in
    text
