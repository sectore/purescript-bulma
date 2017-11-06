-- | Modifier helpers
-- https://bulma.io/documentation/modifiers/helpers/

module Bulma.Modifiers.Helpers
  ( Helpers(..)
  , helper
  )where

import Prelude

import Bulma.Core (class ClazzHelper, ClassName, ClassPart(..), is, toClassPart)


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

instance chHelpers :: ClazzHelper Helpers where
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

helper :: Helpers -> ClassName
helper = is <<< toClassPart
