module Helpers exposing (..)

import Model exposing (..)

import String

get_name_from_tuple : (String, String) -> String
get_name_from_tuple inp =
  case inp of
    (a,b) ->
      a

filter_data : Model -> String -> List (String, String)
filter_data model filter =
  List.filter (\el -> String.contains filter (String.toLower (get_name_from_tuple el))) model.data
