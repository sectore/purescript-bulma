-- | Bulma [`Table`] (https://bulma.io/documentation/elements/table/)

module Bulma.Elements.Table
  ( isModifier
  , table
  , Modifier(..)
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), isClass, toClassPart)

-- | `.table` class
table :: ClassName
table = ClassName "table"

-- | [Modifier](https://bulma.io/documentation/elements/table/#modifiers) of a table
data Modifier
  = Bordered
  | Striped
  | Narrow
  | Hoverable
  | Fullwidth

instance chModifier :: ClassHelper Modifier where
  toClassPart Bordered = ClassPart "bordered"
  toClassPart Striped = ClassPart "striped"
  toClassPart Narrow = ClassPart "narrow"
  toClassPart Hoverable = ClassPart "hoverable"
  toClassPart Fullwidth = ClassPart "fullwidth"

-- | Sets a `Modifier` of a table
isModifier :: Modifier -> ClassName
isModifier = isClass <<< toClassPart
