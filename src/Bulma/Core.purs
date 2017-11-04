module Bulma.Core where

import Data.String (joinWith)

class ClazzHelper a where
  toString :: a -> String

clazzDelimiter :: String
clazzDelimiter = "-"

clazzNotSupported :: String
clazzNotSupported = "clazz-is-not-supported"

data BreakPoints
  = Mobile
  | Tablet
  | TabletOnly
  | Touch
  | Desktop
  | DesktopOnly
  | Widescreen
  | WidescreenOnly
  | FullHD

instance chBreakPoints :: ClazzHelper BreakPoints where
  toString Mobile = "mobile"
  toString Tablet = "tablet"
  toString TabletOnly = "tablet-only"
  toString Touch = "touch"
  toString Desktop = "desktop"
  toString DesktopOnly = "desktop-only"
  toString Widescreen = "widescreen"
  toString WidescreenOnly = "widescreen-only"
  toString FullHD = "fullhd"

is :: String -> String
is str =
  combine ["is", str]

has :: String -> String
has str =
  combine ["has", str]

combine :: Array String -> String
combine = joinWith clazzDelimiter
