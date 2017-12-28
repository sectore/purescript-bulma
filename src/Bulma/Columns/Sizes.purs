module Bulma.Columns.Size
  ( isNarrow
  , isNarrowResponsive
  , isOffset
  , PercentSize(..)
  , isPercentOffset
  , isPercentSize
  , isPercentSizeResponsive
  , isSize
  ) where

import Prelude

import Bulma.Common (class ClassHelper, Breakpoint, ClassName, ClassPart(..), Is(..), notSupported, isClass, joinClassParts, toClassPart)

data PercentSize
  = ThreeQuarters
  | TwoThirds
  | Half
  | OneThird
  | OneQuarter
  | FourFifths
  | ThreeFifths
  | TwoFifths
  | OneFifth

instance chPercentSize :: ClassHelper PercentSize where
  toClassPart ThreeQuarters = ClassPart "three-quarters"
  toClassPart TwoThirds = ClassPart "two-thirds"
  toClassPart Half = ClassPart "half"
  toClassPart OneThird = ClassPart "one-third"
  toClassPart OneQuarter = ClassPart "one-quarter"
  toClassPart FourFifths = ClassPart "four-fifths"
  toClassPart ThreeFifths = ClassPart "three-fifths"
  toClassPart TwoFifths = ClassPart "two-fifths"
  toClassPart OneFifth = ClassPart "one-fifth"

isPercentSize :: PercentSize -> ClassName
isPercentSize = isClass <<< toClassPart

isPercentSizeResponsive :: PercentSize -> Breakpoint -> ClassName
isPercentSizeResponsive s bp =
  isClass $ joinClassParts [toClassPart s, toClassPart bp]

isSize :: Is -> ClassName
isSize i =
  let className = isClass $ toClassPart i in
  if i <= Is1 || i >= Is12
  then notSupported className
  else className

isOffset :: Is -> ClassName
isOffset = isOffsetClass <<< toClassPart

isPercentOffset :: PercentSize -> ClassName
isPercentOffset = isOffsetClass <<< toClassPart

isNarrow :: ClassName
isNarrow = isClass $ ClassPart "narrow"

isNarrowResponsive :: Breakpoint -> ClassName
isNarrowResponsive bp = isClass $ joinClassParts [ClassPart "narrow", toClassPart bp]


-- private helpers

isOffsetClass :: ClassPart -> ClassName
isOffsetClass s = isClass $ joinClassParts [ClassPart "offset", s]
