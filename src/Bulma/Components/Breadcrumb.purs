-- | [Breadcrumb](https://bulma.io/documentation/components/breadcrumb/)
-- |
-- | Note: Following styles of messages are global and defined in `Bulma.Modifiers.Modifiers` only:
-- | * [Alignment](https://bulma.io/documentation/components/breadcrumb/#alignment) (Use `isAlignment` of `Bulma.Common`)
-- | * Sizes (https://bulma.io/documentation/components/breadcrumb/#sizes) (Use `isSize` of `Bulma.Modifiers.Modifiers`)

module Bulma.Components.Breadcrumb
  ( breadcrumb
  , Separator(..)
  , hasSeparator
  , isState
  , State(..)
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), hasClass, isClass, joinClassParts, toClassPart)

-- | `.breadcrumb` class
breadcrumb :: ClassName
breadcrumb = ClassName "breadcrumb"

-- | State of a breadcrumb
-- | Note: Currently there is one state only (just to highlight a breadcrumb)
data State = Active

instance chState :: ClassHelper State where
  toClassPart Active = ClassPart "active"

-- | Sets a `State`
isState :: State -> ClassName
isState = isClass <<< toClassPart

-- | [Alternative separators](https://bulma.io/documentation/components/breadcrumb/#alternative-separators) of a breadcrumb
data Separator
  = Arrow
  | Bullet
  | Dot
  | Succeeds

instance chSeparator :: ClassHelper Separator where
  toClassPart Arrow = ClassPart "arrow"
  toClassPart Bullet = ClassPart "bullet"
  toClassPart Dot = ClassPart "dot"
  toClassPart Succeeds = ClassPart "succeeds"

-- | Sets a `Separator`
hasSeparator :: Separator -> ClassName
hasSeparator s = hasClass $ joinClassParts [toClassPart s, ClassPart "separator"]
