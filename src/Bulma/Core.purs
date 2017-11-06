module Bulma.Core where

import Prelude

import Data.Generic (class Generic, gShow)
import Data.Newtype (class Newtype, over, unwrap, wrap)
import Data.String (joinWith)

class ClazzHelper a where
  toClassPart :: a -> ClassPart

notSupported :: ClassName -> ClassName
notSupported = over ClassName (flip (<>) "-IS-NOT-SUPPORTED-HERE")

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
  toClassPart Size1 = ClassPart "1"
  toClassPart Size2 = ClassPart "2"
  toClassPart Size3 = ClassPart "3"
  toClassPart Size4 = ClassPart "4"
  toClassPart Size5 = ClassPart "5"
  toClassPart Size6 = ClassPart "6"
  toClassPart Size7 = ClassPart "7"
  toClassPart Size8 = ClassPart "8"
  toClassPart Size9 = ClassPart "9"
  toClassPart Size10 = ClassPart "10"
  toClassPart Size11 = ClassPart "11"
  toClassPart Size12 = ClassPart "12"

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
  toClassPart Mobile = ClassPart "mobile"
  toClassPart Tablet = ClassPart "tablet"
  toClassPart TabletOnly = ClassPart "tablet-only"
  toClassPart Touch = ClassPart "touch"
  toClassPart Desktop = ClassPart "desktop"
  toClassPart DesktopOnly = ClassPart "desktop-only"
  toClassPart Widescreen = ClassPart "widescreen"
  toClassPart WidescreenOnly = ClassPart "widescreen-only"
  toClassPart FullHD = ClassPart "fullhd"

newtype ClassName = ClassName String
derive instance eqClassPart :: Eq ClassName
derive instance ntClassName :: Newtype ClassName _

derive instance gClassPart :: Generic ClassName
instance sClassPart :: Show ClassName where
  show = gShow

newtype ClassPart = ClassPart String
derive instance ntClassPart :: Newtype ClassPart _

is :: ClassPart -> ClassName
is cp =
  toClassName $ joinClassParts [ClassPart "is", cp]

has :: ClassPart -> ClassName
has cp =
  toClassName $ joinClassParts [ClassPart "has", cp]

joinClassParts :: Array ClassPart -> ClassPart
joinClassParts arr = ClassPart $ joinWith "-" $ map unwrap arr

toClassName :: ClassPart -> ClassName
toClassName = wrap <<< unwrap

runClassName :: ClassName -> String
runClassName (ClassName name) = name

runClassNames :: Array ClassName -> String
runClassNames = joinWith " " <<< map runClassName
