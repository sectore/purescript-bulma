-- | Modifier helpers
-- https://bulma.io/documentation/modifiers/helpers/

module Bulma.Modifiers.Helpers
  ( Helpers(..)
  , helper
  )where

import Prelude

import Bulma.Core (class ClazzHelper, is, toString)


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
  toString Clearfix = "clearfix"
  toString PulledLeft = "pulled-left"
  toString PulledRight = "pulled-right"
  toString Marginless = "marginless"
  toString Paddingless = "paddingless"
  toString Overlay = "overlay"
  toString Clipped = "clipped"
  toString Radiusless = "radiusless"
  toString Shadowless = "shadowless"
  toString Unsectable = "unselectable"
  toString Invisible = "invisible"

helper :: Helpers -> String
helper h = is $ toString h
