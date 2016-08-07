module Model exposing (..)

import Dict
import String

import Messages exposing (..)

type alias Model =
  {  data : Dict.Dict String String
  ,  all_text : String
  }

initModel : Model
initModel =
  {  data = Dict.fromList [] -- empty
  ,  all_text = ""
  }
