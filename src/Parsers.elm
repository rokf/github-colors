module Parsers exposing (..)

import Http
import Dict
import Json.Decode exposing ((:=))
import Regex exposing (..)

import Model exposing (..)

submatch_parser : Maybe String -> String
submatch_parser sm =
  case sm of
    Just str ->
      str
    Nothing ->
      ""

list2tuple2 : List String -> (String,String)
list2tuple2 ls =
  case ls of
    a :: b :: _ ->
      (a,b)
    _ :: [] ->
      ("", "")
    [] ->
      ("","")

submatch_splitter : Match -> (String,String)
submatch_splitter m =
  list2tuple2 (List.map (\sm -> submatch_parser sm) m.submatches)

yaml_parser : Http.Value -> List (String, String)
yaml_parser val =
  let
    text =
      case val of
        Http.Text txt ->
          txt
        _ ->
          "yaml_parser : ERROR"
    -- all_matches = find All (regex "([\\w ]+):\\n  type: programming\\n  color: \"(#\\w+)\"") text
    -- all_matches = find All (regex "([\\w ]+):\\n[\\n\\w\\s:\\.]+color: \"(#\\w+)\"") text
    all_matches = find All ( regex "([A-Z][\\w ]*):(?:\\n  \\w+:[\\w\\s\\-\\.]+)+color: \"(#\\w+)\"" ) text
    list_data = List.map submatch_splitter all_matches
    dmsg = Debug.log "list_data" list_data
  in
    list_data

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
