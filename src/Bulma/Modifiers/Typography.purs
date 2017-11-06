-- | Typography helpers
-- See https://bulma.io/documentation/modifiers/typography-helpers/

module Bulma.Modifiers.Typography
  ( Alignment(..)
  , Color(..)
  , hasAlignment
  , hasAlignmentResponsive
  , hasColor
  , hasWeight
  , isSizeResponsive
  , isTransformed
  , Size(..)
  , isSize
  , Transformation(..)
  , Weight(..)
  ) where

import Prelude

import Bulma.Core (class ClassHelper, Breakpoint(..), ClassName, ClassPart(..), hasClass, isClass, joinClassParts, notSupported, toClassPart)

-- | Typography sizes
-- https://bulma.io/documentation/modifiers/typography-helpers/#size

data Size
  = Size1
  | Size2
  | Size3
  | Size4
  | Size5
  | Size6
  | Size7

instance chSize :: ClassHelper Size where
  toClassPart Size1 = ClassPart "size-1"
  toClassPart Size2 = ClassPart "size-2"
  toClassPart Size3 = ClassPart "size-3"
  toClassPart Size4 = ClassPart "size-4"
  toClassPart Size5 = ClassPart "size-5"
  toClassPart Size6 = ClassPart "size-6"
  toClassPart Size7 = ClassPart "size-7"

isSize :: Size -> ClassName
isSize = isClass <<< toClassPart


-- | Responsive size
-- https://bulma.io/documentation/modifiers/typography-helpers/#responsive-size

isSizeResponsive :: Size -> Breakpoint -> ClassName
isSizeResponsive s bp =
  let clazzName = isClass $ joinClassParts [toClassPart s, toClassPart bp] in
  case bp of
    DesktopOnly -> notSupported clazzName
    WidescreenOnly -> notSupported clazzName
    TabletOnly -> notSupported clazzName
    _ -> clazzName

-- | Text colors
-- https://bulma.io/documentation/modifiers/typography-helpers/#colors

data Color
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

instance chColor :: ClassHelper Color where
  toClassPart White = ClassPart "white"
  toClassPart Black = ClassPart "black"
  toClassPart LightColor = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Primary = ClassPart "primary"
  toClassPart Info = ClassPart "info"
  toClassPart Success = ClassPart "success"
  toClassPart Warning = ClassPart "warning"
  toClassPart Danger = ClassPart "danger"
  toClassPart BlackBis = ClassPart "black-bis"
  toClassPart BlackTer = ClassPart "black-ter"
  toClassPart GreyDarker = ClassPart "grey-darker"
  toClassPart GreyDark = ClassPart "grey-dark"
  toClassPart Grey = ClassPart "grey"
  toClassPart GreyLight = ClassPart "grey-light"
  toClassPart GreyLighter = ClassPart "grey-lighter"
  toClassPart WhiteTer = ClassPart "white-ter"
  toClassPart WhiteBis = ClassPart "white-bis"

hasColor :: Color -> ClassName
hasColor = hasTextClass  <<< toClassPart

-- | Typography alignment
-- https://bulma.io/documentation/modifiers/typography-helpers/#alignment
data Alignment
  = Centered
  | Justified
  | Left
  | Right

instance chAlignment :: ClassHelper Alignment where
  toClassPart Centered = ClassPart "centered"
  toClassPart Justified = ClassPart "justified"
  toClassPart Left = ClassPart "left"
  toClassPart Right = ClassPart "right"

hasAlignment :: Alignment -> ClassName
hasAlignment = hasTextClass <<< toClassPart

hasAlignmentResponsive :: Alignment -> Breakpoint -> ClassName
hasAlignmentResponsive a bp =
  hasTextClass $ joinClassParts [toClassPart a, toClassPart bp]


-- | Typography transformation
-- https://bulma.io/documentation/modifiers/typography-helpers/#text-transformation
data Transformation
  = Capitalized
  | Lowercase
  | Uppercase

instance chTransformation :: ClassHelper Transformation where
  toClassPart Capitalized = ClassPart "capitalized"
  toClassPart Lowercase = ClassPart "lowercase"
  toClassPart Uppercase = ClassPart "uppercase"

isTransformed :: Transformation -> ClassName
isTransformed = isClass <<< toClassPart

-- | Typography weight
-- https://bulma.io/documentation/modifiers/typography-helpers/#weight

data Weight
  = LightWeight
  -- ^ Renamed from `Light` to `LightWeight`
  -- to avoid conficts of Color `Light`
  | Normal
  | Semibold
  | Bold

instance chWeight :: ClassHelper Weight where
  toClassPart LightWeight = ClassPart "weight-light"
  toClassPart Normal = ClassPart "weight-normal"
  toClassPart Semibold = ClassPart "weight-semibold"
  toClassPart Bold = ClassPart "weight-bold"

hasWeight :: Weight -> ClassName
hasWeight = hasTextClass <<< toClassPart

-- | Private helpers

hasTextClass  :: ClassPart -> ClassName
hasTextClass  str =
  hasClass $ joinClassParts [ClassPart "text", str]
