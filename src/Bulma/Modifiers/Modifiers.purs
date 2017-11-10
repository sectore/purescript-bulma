-- | Modifier classes
-- https://bulma.io/documentation/modifiers/syntax/

module Bulma.Modifiers.Modifiers
  ( isColor
  , Size(..)
  , isSize
  , State(..)
  , isState
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), Color, isClass, toClassName, toClassPart)

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
