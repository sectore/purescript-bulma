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

import Bulma.Core (class ClazzHelper, BreakPoints, ClazzName(..), ClazzPart(..), is, joinClazzParts, toClazzPart)

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
  toClazzPart ThreeQuarters = ClazzPart "three-quarters"
  toClazzPart TwoThirds = ClazzPart "two-thirds"
  toClazzPart Half = ClazzPart "half"
  toClazzPart OneThird = ClazzPart "one-third"
  toClazzPart OneQuarter = ClazzPart "one-quarter"
  toClazzPart FourFifths = ClazzPart "four-fifths"
  toClazzPart ThreeFifths = ClazzPart "three-fifths"
  toClazzPart TwoFifths = ClazzPart "two-fifths"
  toClazzPart OneFifth = ClazzPart "one-fifth"

percentSize :: PercentSizes -> ClazzName
percentSize = is <<< toClazzPart

responsivePercentSize :: PercentSizes -> BreakPoints -> ClazzName
responsivePercentSize s bp =
  is $ joinClazzParts [toClazzPart s, toClazzPart bp]

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

size :: Sizes -> ClazzName
size = is <<< toClazzPart

offset :: Sizes -> ClazzName
offset = isOffset <<< toClazzPart

percentOffset :: PercentSizes -> ClazzName
percentOffset = isOffset <<< toClazzPart

narrow :: ClazzName
narrow = is $ ClazzPart "narrow"

responsiveNarrow :: BreakPoints -> ClazzName
responsiveNarrow bp = is $ joinClazzParts [ClazzPart "narrow", toClazzPart bp]


-- private helpers

isOffset :: ClazzPart -> ClazzName
isOffset s = is $ joinClazzParts [ClazzPart "offset", s]
