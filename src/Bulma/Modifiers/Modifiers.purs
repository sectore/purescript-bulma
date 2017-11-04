-- | Modifier classes
-- https://bulma.io/documentation/modifiers/syntax/

module Bulma.Modifiers.Modifiers
  ( Colors(..)
  , color
  , Sizes(..)
  , size
  , State(..)
  , state
  ) where

import Prelude

import Bulma.Core (class ClazzHelper, is, toString)

data Colors
  = Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger

instance chColors :: ClazzHelper Colors where
  toString Primary = "primary"
  toString Link = "link"
  toString Info = "info"
  toString Success = "success"
  toString Warning = "warning"
  toString Danger = "danger"

color :: Colors -> String
color c = is $ toString c

data Sizes
  = Small
  | Medium
  | Large

instance chSizes :: ClazzHelper Sizes where
  toString Small = "small"
  toString Medium = "medium"
  toString Large = "large"

size :: Sizes -> String
size s = is $ toString s


data State
  = Outlined
  | Loading
  | Disabled

instance chState :: ClazzHelper State where
  toString Outlined = "outlined"
  toString Loading = "loading"
  toString Disabled = "[disabled]"

state :: State -> String
state st =
  case st of
    Disabled -> toString st
    _ -> is $ toString st
