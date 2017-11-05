module Bulma.Core where

import Prelude

import Data.Generic (class Generic, gShow)
import Data.Newtype (class Newtype, over, unwrap, wrap)
import Data.String (joinWith)

class ClazzHelper a where
  toClazzPart :: a -> ClazzPart

notSupported :: ClazzName -> ClazzName
notSupported = over ClazzName (flip (<>) "-IS-NOT-SUPPORTED-HERE")

data Sizes
  = Size1
  | Size2
  | Size3
  | Size4
  | Size5
  | Size6
  | Size7
  | Size8
  | Size9
  | Size10
  | Size11
  | Size12

derive instance eqSizes :: Eq Sizes
derive instance ordSizes :: Ord Sizes

instance chSize :: ClazzHelper Sizes where
  toClazzPart Size1 = ClazzPart "1"
  toClazzPart Size2 = ClazzPart "2"
  toClazzPart Size3 = ClazzPart "3"
  toClazzPart Size4 = ClazzPart "4"
  toClazzPart Size5 = ClazzPart "5"
  toClazzPart Size6 = ClazzPart "6"
  toClazzPart Size7 = ClazzPart "7"
  toClazzPart Size8 = ClazzPart "8"
  toClazzPart Size9 = ClazzPart "9"
  toClazzPart Size10 = ClazzPart "10"
  toClazzPart Size11 = ClazzPart "11"
  toClazzPart Size12 = ClazzPart "12"

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
derive instance ntClazzName :: Newtype ClazzName _

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
joinClazzParts arr = ClazzPart $ joinWith "-" $ map unwrap arr

toClazzName :: ClazzPart -> ClazzName
toClazzName = wrap <<< unwrap

runClazzName :: ClazzName -> String
runClazzName (ClazzName name) = name

runClazzNames :: Array ClazzName -> String
runClazzNames = joinWith " " <<< map runClazzName
