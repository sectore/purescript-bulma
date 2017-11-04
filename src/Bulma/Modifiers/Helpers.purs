-- | Modifier helpers
-- https://bulma.io/documentation/modifiers/helpers/

module Bulma.Modifiers.Helpers
  ( Helpers(..)
  , helper
  )where

import Prelude

import Bulma.Core (class ClazzHelper, ClazzName, ClazzPart(..), is, toClazzPart)


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
  toClazzPart Clearfix = ClazzPart "clearfix"
  toClazzPart PulledLeft = ClazzPart "pulled-left"
  toClazzPart PulledRight = ClazzPart "pulled-right"
  toClazzPart Marginless = ClazzPart "marginless"
  toClazzPart Paddingless = ClazzPart "paddingless"
  toClazzPart Overlay = ClazzPart "overlay"
  toClazzPart Clipped = ClazzPart "clipped"
  toClazzPart Radiusless = ClazzPart "radiusless"
  toClazzPart Shadowless = ClazzPart "shadowless"
  toClazzPart Unsectable = ClazzPart "unselectable"
  toClazzPart Invisible = ClazzPart "invisible"

helper :: Helpers -> ClazzName
helper = is <<< toClazzPart
