module Bulma.Columns.Sizes
  ( narrow
  , responsiveNarrow
  , offset
  , PercentSizes(..)
  , percentOffset
  , percentSize
  , responsivePercentSize
  , size
  ) where

import Prelude

import Bulma.Core (class ClazzHelper, BreakPoints, ClazzName, ClazzPart(..), Sizes(..), notSupported, is, joinClazzParts, toClazzPart)

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

size :: Sizes -> ClazzName
size s =
  let clazzName = is $ toClazzPart s in
  if s <= Size1 || s >= Size12
  then notSupported clazzName
  else clazzName

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
