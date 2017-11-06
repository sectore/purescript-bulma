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

import Bulma.Core (class ClazzHelper, BreakPoints, ClassName, ClassPart(..), Sizes(..), notSupported, is, joinClassParts, toClassPart)

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
  toClassPart ThreeQuarters = ClassPart "three-quarters"
  toClassPart TwoThirds = ClassPart "two-thirds"
  toClassPart Half = ClassPart "half"
  toClassPart OneThird = ClassPart "one-third"
  toClassPart OneQuarter = ClassPart "one-quarter"
  toClassPart FourFifths = ClassPart "four-fifths"
  toClassPart ThreeFifths = ClassPart "three-fifths"
  toClassPart TwoFifths = ClassPart "two-fifths"
  toClassPart OneFifth = ClassPart "one-fifth"

percentSize :: PercentSizes -> ClassName
percentSize = is <<< toClassPart

responsivePercentSize :: PercentSizes -> BreakPoints -> ClassName
responsivePercentSize s bp =
  is $ joinClassParts [toClassPart s, toClassPart bp]

size :: Sizes -> ClassName
size s =
  let clazzName = is $ toClassPart s in
  if s <= Size1 || s >= Size12
  then notSupported clazzName
  else clazzName

offset :: Sizes -> ClassName
offset = isOffset <<< toClassPart

percentOffset :: PercentSizes -> ClassName
percentOffset = isOffset <<< toClassPart

narrow :: ClassName
narrow = is $ ClassPart "narrow"

responsiveNarrow :: BreakPoints -> ClassName
responsiveNarrow bp = is $ joinClassParts [ClassPart "narrow", toClassPart bp]


-- private helpers

isOffset :: ClassPart -> ClassName
isOffset s = is $ joinClassParts [ClassPart "offset", s]
