module Bulma.Core where

import Prelude

import Data.Generic (class Generic, gShow)
import Data.Newtype (class Newtype, unwrap)
import Data.String (joinWith)

class ClazzHelper a where
  toClazzPart :: a -> ClazzPart

clazzDelimiter :: String
clazzDelimiter = "-"

clazzNotSupported :: ClazzName
clazzNotSupported = ClazzName "clazz-is-not-supported"

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
  toClazzPart Mobile = ClazzPart "mobile"
  toClazzPart Tablet = ClazzPart "tablet"
  toClazzPart TabletOnly = ClazzPart "tablet-only"
  toClazzPart Touch = ClazzPart "touch"
  toClazzPart Desktop = ClazzPart "desktop"
  toClazzPart DesktopOnly = ClazzPart "desktop-only"
  toClazzPart Widescreen = ClazzPart "widescreen"
  toClazzPart WidescreenOnly = ClazzPart "widescreen-only"
  toClazzPart FullHD = ClazzPart "fullhd"

newtype ClazzName = ClazzName String
derive instance eqClazzPart :: Eq ClazzName
derive instance gClazzPart :: Generic ClazzName
instance sClazzPart :: Show ClazzName where
  show = gShow

newtype ClazzPart = ClazzPart String
derive instance ntClazzPart :: Newtype ClazzPart _

is :: ClazzPart -> ClazzName
is cp =
  toClazzName $ joinClazzParts [ClazzPart "is", cp]

has :: ClazzPart -> ClazzName
has cp =
  toClazzName $ joinClazzParts [ClazzPart "has", cp]

joinClazzParts :: Array ClazzPart -> ClazzPart
joinClazzParts arr = ClazzPart $ joinWith clazzDelimiter $ map unwrap arr

toClazzName :: ClazzPart -> ClazzName
toClazzName = ClazzName <<< unwrap

runClazzName :: ClazzName -> String
runClazzName (ClazzName name) = name

runClazzNames :: Array ClazzName -> String
runClazzNames = joinWith " " <<< map runClazzName
