-- | Modifier helpers
-- https://bulma.io/documentation/modifiers/helpers/

module Bulma.Modifiers.Helpers
  ( Helpers(..)
  , is
  )where

import Prelude

import Bulma.Common (class ClassHelper, ClassName, ClassPart(..), isClass, toClassPart)


data Helpers
  = Clearfix
  | PulledLeft
  | PulledRight
  | Marginless
  | Paddingless
  | Overlay
  | Clipped
  | Radiusless
  | Shadowless
  | Unsectable
  | Invisible

instance chHelpers :: ClassHelper Helpers where
  toClassPart Clearfix = ClassPart "clearfix"
  toClassPart PulledLeft = ClassPart "pulled-left"
  toClassPart PulledRight = ClassPart "pulled-right"
  toClassPart Marginless = ClassPart "marginless"
  toClassPart Paddingless = ClassPart "paddingless"
  toClassPart Overlay = ClassPart "overlay"
  toClassPart Clipped = ClassPart "clipped"
  toClassPart Radiusless = ClassPart "radiusless"
  toClassPart Shadowless = ClassPart "shadowless"
  toClassPart Unsectable = ClassPart "unselectable"
  toClassPart Invisible = ClassPart "invisible"

is :: Helpers -> ClassName
is = isClass <<< toClassPart
