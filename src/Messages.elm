module Messages exposing (..)

import Http

type Msg = NoOp
  | HandleGetFile Http.Response
  | Error Http.RawError
  | UpdateFilter String
