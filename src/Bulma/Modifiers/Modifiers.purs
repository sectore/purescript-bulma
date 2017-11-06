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

import Bulma.Core (class ClazzHelper, ClassName, ClassPart(..), is, toClassName, toClassPart)

data Colors
  = Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger

instance chColors :: ClazzHelper Colors where
  toClassPart Primary = ClassPart "primary"
  toClassPart Link = ClassPart "link"
  toClassPart Info = ClassPart "info"
  toClassPart Success = ClassPart "success"
  toClassPart Warning = ClassPart "warning"
  toClassPart Danger = ClassPart "danger"

color :: Colors -> ClassName
color = is <<< toClassPart

data Sizes
  = Small
  | Medium
  | Large

instance chSizes :: ClazzHelper Sizes where
  toClassPart Small = ClassPart "small"
  toClassPart Medium = ClassPart "medium"
  toClassPart Large = ClassPart "large"

size :: Sizes -> ClassName
size = is <<< toClassPart


data State
  = Outlined
  | Loading
  | Disabled

instance chState :: ClazzHelper State where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Loading = ClassPart "loading"
  toClassPart Disabled = ClassPart "[disabled]"

state :: State -> ClassName
state st =
  case st of
    Disabled -> toClassName $ toClassPart st
    _ -> is $ toClassPart st
