-- | Modifier classes
-- https://bulma.io/documentation/modifiers/syntax/

module Bulma.Modifiers.Modifiers
  ( isColor
  , isSize
  , State(..)
  , isState
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), Color, Size, isClass, toClassName, toClassPart)

isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

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
