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

import Bulma.Core (class ClazzHelper, ClazzName, ClazzPart(..), is, toClazzName, toClazzPart)

data Colors
  = Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger

instance chColors :: ClazzHelper Colors where
  toClazzPart Primary = ClazzPart "primary"
  toClazzPart Link = ClazzPart "link"
  toClazzPart Info = ClazzPart "info"
  toClazzPart Success = ClazzPart "success"
  toClazzPart Warning = ClazzPart "warning"
  toClazzPart Danger = ClazzPart "danger"

color :: Colors -> ClazzName
color c = is $ toClazzPart c

data Sizes
  = Small
  | Medium
  | Large

instance chSizes :: ClazzHelper Sizes where
  toClazzPart Small = ClazzPart "small"
  toClazzPart Medium = ClazzPart "medium"
  toClazzPart Large = ClazzPart "large"

size :: Sizes -> ClazzName
size s = is $ toClazzPart s


data State
  = Outlined
  | Loading
  | Disabled

instance chState :: ClazzHelper State where
  toClazzPart Outlined = ClazzPart "outlined"
  toClazzPart Loading = ClazzPart "loading"
  toClazzPart Disabled = ClazzPart "[disabled]"

state :: State -> ClazzName
state st =
  case st of
    Disabled -> toClazzName $ toClazzPart st
    _ -> is $ toClazzPart st
