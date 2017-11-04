module Bulma.Columns.Sizes
  ( narrow
  , responsiveNarrow
  , offset
  , PercentSizes(..)
  , percentOffset
  , percentSize
  , responsivePercentSize
  , Sizes(..)
  , size
  ) where

import Prelude

import Bulma.Core (class ClazzHelper, BreakPoints, clazzDelemiter, is, toString)
import Bulma.Types (Clazz)

data PercentSizes
  = ThreeQuarters
  | TwoThirds
  | Half
  | OneThird
  | OneQuarter
  | FourFifths
  | ThreeFifths
  | TwoFifths
  | OneFifth

instance chPercentSizes :: ClazzHelper PercentSizes where
  toString ThreeQuarters = "three-quarters"
  toString TwoThirds = "two-thirds"
  toString Half = "half"
  toString OneThird = "one-third"
  toString OneQuarter = "one-quarter"
  toString FourFifths = "four-fifths"
  toString ThreeFifths = "three-fifths"
  toString TwoFifths = "two-fifths"
  toString OneFifth = "one-fifth"

percentSize :: PercentSizes -> Clazz
percentSize = is <<< toString

responsivePercentSize :: PercentSizes -> BreakPoints -> Clazz
responsivePercentSize s bp =
  is $ toString s <> clazzDelemiter <> toString bp

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
