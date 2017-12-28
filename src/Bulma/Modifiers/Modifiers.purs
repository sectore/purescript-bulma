-- | Bulmas [`Modifier`](https://bulma.io/documentation/modifiers/syntax/) classes

module Bulma.Modifiers.Modifiers
  ( isColor
  , isSelected
  , isSize
  , isState
  , State(..)
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), Color, Size, isClass, toClassName, toClassPart)

-- | Sets a `Color`
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- | Sets a `Size`
isSize :: Size -> ClassName
isSize = isClass <<< toClassPart

-- | `.is-selected` class
isSelected :: ClassName
isSelected = isClass $ ClassPart "selected"

-- | States
data State
  = Outlined
  | Loading
  | Disabled

instance chState :: ClassHelper State where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Loading = ClassPart "loading"
  toClassPart Disabled = ClassPart "[disabled]"

-- | Sets a `State`
isState :: State -> ClassName
isState st =
  case st of
    Disabled -> toClassName $ toClassPart st
    _ -> isClass $ toClassPart st
