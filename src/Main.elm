
import Html.App

import Update exposing (..)
import View exposing (..)
import Messages exposing (..)
import Model exposing (..)
import Subs exposing (..)

init =
  initModel

main =
  Html.App.program
    {  init = init
    ,  view = view
    ,  update = update
    ,  subscriptions = subscriptions
    }

