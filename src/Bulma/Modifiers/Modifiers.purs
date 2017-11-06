-- | Modifier classes
-- https://bulma.io/documentation/modifiers/syntax/

module Bulma.Modifiers.Modifiers
  ( Color(..)
  , isColor
  , Size(..)
  , isSize
  , State(..)
  , isState
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), isClass, toClassName, toClassPart)

data Color
  = Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger

instance chColor :: ClassHelper Color where
  toClassPart Primary = ClassPart "primary"
  toClassPart Link = ClassPart "link"
  toClassPart Info = ClassPart "info"
  toClassPart Success = ClassPart "success"
  toClassPart Warning = ClassPart "warning"
  toClassPart Danger = ClassPart "danger"

isColor :: Color -> ClassName
isColor = isClass <<< toClassPart


data Size
  = Small
  | Medium
  | Large

instance chSize :: ClassHelper Size where
  toClassPart Small = ClassPart "small"
  toClassPart Medium = ClassPart "medium"
  toClassPart Large = ClassPart "large"

isSize :: Size -> ClassName
isSize = isClass <<< toClassPart


data State
  = Outlined
  | Loading
  | Disabled

instance chState :: ClassHelper State where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Loading = ClassPart "loading"
  toClassPart Disabled = ClassPart "[disabled]"

isState :: State -> ClassName
isState st =
  case st of
    Disabled -> toClassName $ toClassPart st
    _ -> isClass $ toClassPart st
