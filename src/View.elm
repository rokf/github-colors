module View exposing (..)

import Messages exposing (..)
import Model exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

pair_to_li : (String,String) -> Html Msg
pair_to_li pair =
  case pair of
    (a,b) ->
      li [] [span [class "color-block", style [ ("background", b) ] ] [], text (" " ++ a ++ " - " ++ b) ]

list_of_pairs : Model -> List (Html Msg)
list_of_pairs model =
  List.map (\pair -> (pair_to_li pair)) model.filtered_data

view : Model -> Html Msg
view model =
  div []
  [  input [onInput UpdateFilter, placeholder "filter"] []
  ,  ul [] (list_of_pairs model)
  ]
