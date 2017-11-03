-- | Typography helpers
-- See https://bulma.io/documentation/modifiers/typography-helpers/

module Bulma.Modifiers.Typography
  ( alignment
  , colors
  , sizes
  , responsiveSize1
  , responsiveSize2
  , responsiveSize3
  , responsiveSize4
  , responsiveSize5
  , responsiveSize6
  , responsiveSize7
  , weight
  ) where

import Prelude

import Bulma.Modifiers.Util (ModifierColors(..), has, is, toString)
import Bulma.Types (Clazz)

-- | Typography sizes
-- https://bulma.io/documentation/modifiers/typography-helpers/#size

type Sizes =
  { isSize1 :: Clazz
  , isSize2 :: Clazz
  , isSize3 :: Clazz
  , isSize4 :: Clazz
  , isSize5 :: Clazz
  , isSize6 :: Clazz
  , isSize7 :: Clazz
  }

sizes :: Sizes
sizes =
  { isSize1: isSize 1
  , isSize2: isSize 2
  , isSize3: isSize 3
  , isSize4: isSize 4
  , isSize5: isSize 5
  , isSize6: isSize 6
  , isSize7: isSize 7
  }

-- | Responsive size
-- https://bulma.io/documentation/modifiers/typography-helpers/#responsive-size
type ResponsiveSize =
  { mobile :: Clazz
  , tablet :: Clazz
  , touch :: Clazz
  , desktop :: Clazz
  , widescreen :: Clazz
  , fullHD :: Clazz
  }

responsiveSize1 :: ResponsiveSize
responsiveSize1 =
  { mobile: isMobileSize 1
  , tablet: isTabletSize 1
  , touch: isTouchSize 1
  , desktop: isDesktopSize 1
  , widescreen: isWidescreenSize 1
  , fullHD: isFullHDSize 1
  }

responsiveSize2 :: ResponsiveSize
responsiveSize2 =
  { mobile: isMobileSize 2
  , tablet: isTabletSize 2
  , touch: isTouchSize 2
  , desktop: isDesktopSize 2
  , widescreen: isWidescreenSize 2
  , fullHD: isFullHDSize 2
  }

responsiveSize3 :: ResponsiveSize
responsiveSize3 =
  { mobile: isMobileSize 3
  , tablet: isTabletSize 3
  , touch: isTouchSize 3
  , desktop: isDesktopSize 3
  , widescreen: isWidescreenSize 3
  , fullHD: isFullHDSize 3
  }

responsiveSize4 :: ResponsiveSize
responsiveSize4 =
  { mobile: isMobileSize 4
  , tablet: isTabletSize 4
  , touch: isTouchSize 4
  , desktop: isDesktopSize 4
  , widescreen: isWidescreenSize 4
  , fullHD: isFullHDSize 4
  }

responsiveSize5 :: ResponsiveSize
responsiveSize5 =
  { mobile: isMobileSize 5
  , tablet: isTabletSize 5
  , touch: isTouchSize 5
  , desktop: isDesktopSize 5
  , widescreen: isWidescreenSize 5
  , fullHD: isFullHDSize 5
  }

responsiveSize6 :: ResponsiveSize
responsiveSize6 =
  { mobile: isMobileSize 6
  , tablet: isTabletSize 6
  , touch: isTouchSize 6
  , desktop: isDesktopSize 6
  , widescreen: isWidescreenSize 6
  , fullHD: isFullHDSize 6
  }

responsiveSize7 :: ResponsiveSize
responsiveSize7 =
  { mobile: isMobileSize 7
  , tablet: isTabletSize 7
  , touch: isTouchSize 7
  , desktop: isDesktopSize 7
  , widescreen: isWidescreenSize 7
  , fullHD: isFullHDSize 7
  }

-- | Text colors
-- https://bulma.io/documentation/modifiers/typography-helpers/#colors

type Colors =
  { hasTextWhite :: Clazz
  , hasTextBlack :: Clazz
  , hasTextLight :: Clazz
  , hasTextDark :: Clazz
  , hasTextPrimary :: Clazz
  , hasTextInfo :: Clazz
  , hasTextSuccess :: Clazz
  , hasTextWarning :: Clazz
  , hasTextDanger :: Clazz
  , hasTextBlackBis :: Clazz
  , hasTextBlackTer :: Clazz
  , hasTextGreyDarker :: Clazz
  , hasTextGreyDark :: Clazz
  , hasTextGrey :: Clazz
  , hasTextGreyLight :: Clazz
  , hasTextGreyLighter :: Clazz
  , hasTextWhiteTer :: Clazz
  , hasTextWhiteBis :: Clazz
  }

colors :: Colors
colors =
  { hasTextWhite: prefixHasText "white"
  , hasTextBlack: prefixHasText "black"
  , hasTextLight: prefixHasText "light"
  , hasTextDark: prefixHasText "dark"
  , hasTextPrimary: prefixHasText $ toString Primary
  , hasTextInfo: prefixHasText $ toString Info
  , hasTextSuccess: prefixHasText $ toString Success
  , hasTextWarning: prefixHasText $ toString Warning
  , hasTextDanger: prefixHasText $ toString Danger
  , hasTextBlackBis: prefixHasText "black-bis"
  , hasTextBlackTer: prefixHasText "black-ter"
  , hasTextGreyDarker: prefixHasText "grey-darker"
  , hasTextGreyDark: prefixHasText "grey-dark"
  , hasTextGrey: prefixHasText "grey"
  , hasTextGreyLight: prefixHasText "grey-light"
  , hasTextGreyLighter: prefixHasText "grey-lighter"
  , hasTextWhiteTer: prefixHasText "white-ter"
  , hasTextWhiteBis: prefixHasText "white-bis"
  }

-- | Typography alignment
-- https://bulma.io/documentation/modifiers/typography-helpers/#alignment
type Alignment =
  { hasTextCentered :: Clazz
  , hasTextJustified :: Clazz
  , hasTextLeft :: Clazz
  , hasTextRight :: Clazz
  }

alignment :: Alignment
alignment =
  { hasTextCentered: prefixHasText "centered"
  , hasTextJustified: prefixHasText "justified"
  , hasTextLeft: prefixHasText "left"
  , hasTextRight: prefixHasText "right"
  }

-- | Typography alignment
-- https://bulma.io/documentation/modifiers/typography-helpers/#alignment
type Weight =
  { light :: Clazz
  , normal :: Clazz
  , semibold :: Clazz
  , bold :: Clazz
  }

weight :: Weight
weight =
  { light: prefixHasText "weight-light"
  , normal: prefixHasText "weight-normal"
  , semibold: prefixHasText "semibold"
  , bold: prefixHasText "bold"
  }

-- | Private helpers

isSize :: Int -> Clazz
isSize size =
  is $ "size-" <> show size

isMobileSize :: Int -> Clazz
isMobileSize size =
  isSize size <> "-mobile"

isTabletSize :: Int -> Clazz
isTabletSize size =
  isSize size <> "-tablet"

isTouchSize :: Int -> Clazz
isTouchSize size =
  isSize size <> "-touch"

isDesktopSize :: Int -> Clazz
isDesktopSize size =
  isSize size <> "-desktop"

isWidescreenSize :: Int -> Clazz
isWidescreenSize size =
  isSize size <> "-widescreen"

isFullHDSize :: Int -> Clazz
isFullHDSize size =
  isSize size <> "-fullhd"

prefixHasText :: String -> Clazz
prefixHasText str =
  has "text-" <> str
