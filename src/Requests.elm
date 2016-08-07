module Requests exposing (..)

import Http
import Task

import Model exposing (..)
import Messages exposing (..)

import Json.Decode exposing ((:=))
import Json.Encode

get_file : Model -> Cmd Msg
get_file model =
  let
    req =
      {  verb = "GET"
      ,  headers = [   ] -- ("Content-Type", "application/json")
      ,  url = "https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml"
      ,  body = Http.empty
      }
  in
    (Http.send Http.defaultSettings req)
      |> Task.perform Error HandleGetFile
