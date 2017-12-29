-- | Bulma [`Image`](https://bulma.io/documentation/elements/image/) classes

module Bulma.Elements.Image
  ( Dimension(..)
  , image
  , isDimension
  , isRatio
  , Ratio(..)
  ) where

import Prelude
import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), isClass, toClassPart)

-- | `.image` class
image :: ClassName
image = ClassName "image"

-- | Image [dimensions](https://bulma.io/documentation/elements/image/#fixed-square-images)
data Dimension
  = D16x16
  | D24x24
  | D32x32
  | D64x64
  | D96x96
  | D128x128

instance chDimension :: ClassHelper Dimension where
  toClassPart D16x16 = ClassPart "16x16"
  toClassPart D24x24 = ClassPart "24x24"
  toClassPart D32x32 = ClassPart "32x32"
  toClassPart D64x64 = ClassPart "64x64"
  toClassPart D96x96 = ClassPart "96x96"
  toClassPart D128x128 = ClassPart "128x128"

-- | Sets a `Dimension` of an image
isDimension :: Dimension -> ClassName
isDimension = isClass <<< toClassPart

-- | Responsive image w/ [ratios](https://bulma.io/documentation/elements/image/#fixed-square-images)
data Ratio
  = Square
  | OneByOne
  | FourByThree
  | ThreeByTwo
  | SixteenByNine
  | TwoByOne

instance chRatio :: ClassHelper Ratio where
  toClassPart Square = ClassPart "square"
  toClassPart OneByOne = ClassPart "1by1"
  toClassPart FourByThree = ClassPart "4by3"
  toClassPart ThreeByTwo = ClassPart "3by2"
  toClassPart SixteenByNine = ClassPart "16by9"
  toClassPart TwoByOne = ClassPart "2by1"

-- | Sets a `Ratio` for an image
isRatio :: Ratio -> ClassName
isRatio = isClass <<< toClassPart
