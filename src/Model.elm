module Model exposing (..)

import Dict
import String

import Messages exposing (..)

type alias Model =
  {  data : List (String, String)
  ,  all_text : String
  ,  filter : String
  ,  filtered_data : List (String, String)
  }

initModel : Model
initModel =
  {  data = []
  ,  all_text = ""
  ,  filter = ""
  ,  filtered_data = [ ("Nothing", "#ffffff") ]
  }
