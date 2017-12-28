-- | Bulmas [`Modifier`](https://bulma.io/documentation/modifiers/syntax/) classes

module Bulma.Modifiers.Modifiers
  ( isColor
  , isSize
  , isState
  , State(..)
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName, ClassPart(..), Color, Size, isClass, toClassName, toClassPart)

-- | Sets a `Color`
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- | Sets a `Size`
isSize :: Size -> ClassName
isSize = isClass <<< toClassPart

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
