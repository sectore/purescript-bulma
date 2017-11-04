-- | Typography helpers
-- See https://bulma.io/documentation/modifiers/typography-helpers/

module Bulma.Modifiers.Typography
  ( Alignment(..)
  , alignment
  , Colors(..)
  , color
  , responsiveSize
  , responsiveAlignment
  , Sizes(..)
  , size
  , Transformation(..)
  , transformation
  , Weight(..)
  , weight
  ) where

import Prelude

import Bulma.Core (class ClazzHelper, BreakPoints(..), ClazzName, ClazzPart(..), clazzNotSupported, has, is, joinClazzParts, toClazzPart)

-- | Typography sizes
-- https://bulma.io/documentation/modifiers/typography-helpers/#size

data Sizes
  = Size1
  | Size2
  | Size3
  | Size4
  | Size5
  | Size6
  | Size7

instance chSizes :: ClazzHelper Sizes where
  toClazzPart Size1 = ClazzPart "size-1"
  toClazzPart Size2 = ClazzPart "size-2"
  toClazzPart Size3 = ClazzPart "size-3"
  toClazzPart Size4 = ClazzPart "size-4"
  toClazzPart Size5 = ClazzPart "size-5"
  toClazzPart Size6 = ClazzPart "size-6"
  toClazzPart Size7 = ClazzPart "size-7"

size :: Sizes -> ClazzName
size s = is $ toClazzPart s


-- | Responsive size
-- https://bulma.io/documentation/modifiers/typography-helpers/#responsive-size

responsiveSize :: Sizes -> BreakPoints -> ClazzName
responsiveSize s bp =
  case bp of
    DesktopOnly -> clazzNotSupported
    WidescreenOnly -> clazzNotSupported
    TabletOnly -> clazzNotSupported
    _ -> is $ joinClazzParts [toClazzPart s, toClazzPart bp]

-- | Text colors
-- https://bulma.io/documentation/modifiers/typography-helpers/#colors

data Colors
  = White
  | Black
  | LightColor
  -- ^ Renamed from `Light` to `LightColor`
  -- to avoid conficts of Weight's `Light`
  | Dark
  | Primary
  | Info
  | Success
  | Warning
  | Danger
  | BlackBis
  | BlackTer
  | GreyDarker
  | GreyDark
  | Grey
  | GreyLight
  | GreyLighter
  | WhiteTer
  | WhiteBis

instance chColors :: ClazzHelper Colors where
  toClazzPart White = ClazzPart "white"
  toClazzPart Black = ClazzPart "black"
  toClazzPart LightColor = ClazzPart "light"
  toClazzPart Dark = ClazzPart "dark"
  toClazzPart Primary = ClazzPart "primary"
  toClazzPart Info = ClazzPart "info"
  toClazzPart Success = ClazzPart "success"
  toClazzPart Warning = ClazzPart "warning"
  toClazzPart Danger = ClazzPart "danger"
  toClazzPart BlackBis = ClazzPart "black-bis"
  toClazzPart BlackTer = ClazzPart "black-ter"
  toClazzPart GreyDarker = ClazzPart "grey-darker"
  toClazzPart GreyDark = ClazzPart "grey-dark"
  toClazzPart Grey = ClazzPart "grey"
  toClazzPart GreyLight = ClazzPart "grey-light"
  toClazzPart GreyLighter = ClazzPart "grey-lighter"
  toClazzPart WhiteTer = ClazzPart "white-ter"
  toClazzPart WhiteBis = ClazzPart "white-bis"

color :: Colors -> ClazzName
color c = hasText $ toClazzPart c

-- | Typography alignment
-- https://bulma.io/documentation/modifiers/typography-helpers/#alignment
data Alignment
  = Centered
  | Justified
  | Left
  | Right

instance chAlignment :: ClazzHelper Alignment where
  toClazzPart Centered = ClazzPart "centered"
  toClazzPart Justified = ClazzPart "justified"
  toClazzPart Left = ClazzPart "left"
  toClazzPart Right = ClazzPart "right"

alignment :: Alignment -> ClazzName
alignment a = hasText $ toClazzPart a

responsiveAlignment :: Alignment -> BreakPoints -> ClazzName
responsiveAlignment a bp =
  hasText $ joinClazzParts [toClazzPart a, toClazzPart bp]


-- | Typography transformation
-- https://bulma.io/documentation/modifiers/typography-helpers/#text-transformation
data Transformation
  = Capitalized
  | Lowercase
  | Uppercase

instance chTransformation :: ClazzHelper Transformation where
  toClazzPart Capitalized = ClazzPart "capitalized"
  toClazzPart Lowercase = ClazzPart "lowercase"
  toClazzPart Uppercase = ClazzPart "uppercase"

transformation :: Transformation -> ClazzName
transformation = is <<< toClazzPart

-- | Typography weight
-- https://bulma.io/documentation/modifiers/typography-helpers/#weight

data Weight
  = LightWeight
  -- ^ Renamed from `Light` to `LightWeight`
  -- to avoid conficts of Colors `Light`
  | Normal
  | Semibold
  | Bold

instance chWeight :: ClazzHelper Weight where
  toClazzPart LightWeight = ClazzPart "weight-light"
  toClazzPart Normal = ClazzPart "weight-normal"
  toClazzPart Semibold = ClazzPart "weight-semibold"
  toClazzPart Bold = ClazzPart "weight-bold"

weight :: Weight -> ClazzName
weight w = hasText $ toClazzPart w

-- | Private helpers

hasText :: ClazzPart -> ClazzName
hasText str =
  has $ joinClazzParts [ClazzPart "text", str]
