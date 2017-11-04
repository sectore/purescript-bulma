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

import Bulma.Core (class ClazzHelper, BreakPoints(..), clazzNotSupported, combine, has, is, toString)

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
  toString Size1 = "size-1"
  toString Size2 = "size-2"
  toString Size3 = "size-3"
  toString Size4 = "size-4"
  toString Size5 = "size-5"
  toString Size6 = "size-6"
  toString Size7 = "size-7"

size :: Sizes -> String
size s = is $ toString s


-- | Responsive size
-- https://bulma.io/documentation/modifiers/typography-helpers/#responsive-size

responsiveSize :: Sizes -> BreakPoints -> String
responsiveSize s bp =
  case bp of
    DesktopOnly -> clazzNotSupported
    WidescreenOnly -> clazzNotSupported
    TabletOnly -> clazzNotSupported
    _ -> is $ combine [toString s, toString bp]

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
  toString White = "white"
  toString Black = "black"
  toString LightColor = "light"
  toString Dark = "dark"
  toString Primary = "primary"
  toString Info = "info"
  toString Success = "success"
  toString Warning = "warning"
  toString Danger = "danger"
  toString BlackBis = "black-bis"
  toString BlackTer = "black-ter"
  toString GreyDarker = "grey-darker"
  toString GreyDark = "grey-dark"
  toString Grey = "grey"
  toString GreyLight = "grey-light"
  toString GreyLighter = "grey-lighter"
  toString WhiteTer = "white-ter"
  toString WhiteBis = "white-bis"

color :: Colors -> String
color c = hasText $ toString c

-- | Typography alignment
-- https://bulma.io/documentation/modifiers/typography-helpers/#alignment
data Alignment
  = Centered
  | Justified
  | Left
  | Right

instance chAlignment :: ClazzHelper Alignment where
  toString Centered = "centered"
  toString Justified = "justified"
  toString Left = "left"
  toString Right = "right"

alignment :: Alignment -> String
alignment a = hasText $ toString a

responsiveAlignment :: Alignment -> BreakPoints -> String
responsiveAlignment a bp =
  hasText $ combine [toString a, toString bp]


-- | Typography transformation
-- https://bulma.io/documentation/modifiers/typography-helpers/#text-transformation
data Transformation
  = Capitalized
  | Lowercase
  | Uppercase

instance chTransformation :: ClazzHelper Transformation where
  toString Capitalized = "capitalized"
  toString Lowercase = "lowercase"
  toString Uppercase = "uppercase"

transformation :: Transformation -> String
transformation a = is $ toString a

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
  toString LightWeight = "weight-light"
  toString Normal = "weight-normal"
  toString Semibold = "weight-semibold"
  toString Bold = "weight-bold"

weight :: Weight -> String
weight w = hasText $ toString w

-- | Private helpers

hasText :: String -> String
hasText str =
  has "text-" <> str
