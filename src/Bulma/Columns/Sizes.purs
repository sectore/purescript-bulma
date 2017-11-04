module Bulma.Columns.Sizes
  ( narrow
  , responsiveNarrow
  , offset
  , PercentSizes(..)
  , percentOffset
  , percentSize
  , Sizes(..)
  , size
  ) where

import Prelude

import Bulma.Core (class ClazzHelper, BreakPoints, clazzDelemiter, is, toString)
import Bulma.Types (Clazz)

data PercentSizes
  = THREE_QUATERS
  | TWO_THIRDS
  | HALF
  | ONE_THIRD
  | ONE_QUARTER
  | FOUR_FIFTHS
  | THREE_FIFTHS
  | TWO_FIFTHS
  | ONE_FIFTH

instance chPercentSizes :: ClazzHelper PercentSizes where
  toString THREE_QUATERS = "three-quarters"
  toString TWO_THIRDS = "two-thirds"
  toString HALF = "half"
  toString ONE_THIRD = "one-third"
  toString ONE_QUARTER = "one-quarter"
  toString FOUR_FIFTHS = "four-fifths"
  toString THREE_FIFTHS = "three-fifths"
  toString TWO_FIFTHS = "two-fifths"
  toString ONE_FIFTH = "one-fifth"

percentSize :: PercentSizes -> Clazz
percentSize = is <<< toString

data Sizes
  = Size2
  | Size3
  | Size4
  | Size5
  | Size6
  | Size7
  | Size8
  | Size9
  | Size10
  | Size11

instance chSizes :: ClazzHelper Sizes where
  toString Size2 = "2"
  toString Size3 = "3"
  toString Size4 = "4"
  toString Size5 = "5"
  toString Size6 = "6"
  toString Size7 = "7"
  toString Size8 = "8"
  toString Size9 = "9"
  toString Size10 = "10"
  toString Size11 = "11"

size :: Sizes -> Clazz
size = is <<< toString

offset :: Sizes -> Clazz
offset = isOffset <<< toString

percentOffset :: PercentSizes -> Clazz
percentOffset = isOffset <<< toString

narrow :: Clazz
narrow = is "narrow"

responsiveNarrow :: BreakPoints -> Clazz
responsiveNarrow bp = is "narrow" <> clazzDelemiter <> toString bp


-- private helpers

isOffset :: String -> Clazz
isOffset s = is $ "offset" <> clazzDelemiter <> s
