module Model exposing (..)

import Dict
import String

import Messages exposing (..)

type alias Model =
  {  data : Dict.Dict String String
  }

initModel : (Model, Cmd Msg)
initModel =
  {  data = Dict.fromList [] -- empty
  } ! []
