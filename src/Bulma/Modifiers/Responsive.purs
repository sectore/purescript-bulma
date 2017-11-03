module Bulma.Modifiers.Responsive  where

import Prelude

import Bulma.Modifiers.Util (BreakPoints(..), is, toString)
import Bulma.Types (Clazz)

-- | Responsive helpers
-- See https://bulma.io/documentation/modifiers/responsive-helpers/

type Show =
  { isMobile :: Clazz
  , isTabletOnly :: Clazz
  , isDesktopOnly :: Clazz
  , isWidescreenOnly :: Clazz
  , isTouch :: Clazz
  , isTablet :: Clazz
  , isDesktop :: Clazz
  , isWhidescreen :: Clazz
  , isFullHD :: Clazz
  }

showFlex :: Show
showFlex =
  { isMobile: is $ flex $ toString Mobile
  , isTabletOnly: is $ flex $ toString TabletOnly
  , isDesktopOnly: is $ flex $ toString DesktopOnly
  , isWidescreenOnly: is $ flex $ toString WidescreenOnly
  , isTouch: is $ flex $ toString Touch
  , isTablet: is $ flex $ toString Tablet
  , isDesktop: is $ flex $ toString Desktop
  , isWhidescreen: is $ flex $ toString Widescreen
  , isFullHD: is $ flex $ toString FullHD
  }

showBlock :: Show
showBlock =
  { isMobile: is $ block $ toString Mobile
  , isTabletOnly: is $ block $ toString TabletOnly
  , isDesktopOnly: is $ block $ toString DesktopOnly
  , isWidescreenOnly: is $ block $ toString WidescreenOnly
  , isTouch: is $ block $ toString Touch
  , isTablet: is $ block $ toString Tablet
  , isDesktop: is $ block $ toString Desktop
  , isWhidescreen: is $ block $ toString Widescreen
  , isFullHD: is $ block $ toString FullHD
  }

showInline :: Show
showInline =
  { isMobile: is $ inline $ toString Mobile
  , isTabletOnly: is $ inline $ toString TabletOnly
  , isDesktopOnly: is $ inline $ toString DesktopOnly
  , isWidescreenOnly: is $ inline $ toString WidescreenOnly
  , isTouch: is $ inline $ toString Touch
  , isTablet: is $ inline $ toString Tablet
  , isDesktop: is $ inline $ toString Desktop
  , isWhidescreen: is $ inline $ toString Widescreen
  , isFullHD: is $ inline $ toString FullHD
  }

showInlineBlock :: Show
showInlineBlock =
  { isMobile: is $ inlineBlock $ toString Mobile
  , isTabletOnly: is $ inlineBlock $ toString TabletOnly
  , isDesktopOnly: is $ inlineBlock $ toString DesktopOnly
  , isWidescreenOnly: is $ inlineBlock $ toString WidescreenOnly
  , isTouch: is $ inlineBlock $ toString Touch
  , isTablet: is $ inlineBlock $ toString Tablet
  , isDesktop: is $ inlineBlock $ toString Desktop
  , isWhidescreen: is $ inlineBlock $ toString Widescreen
  , isFullHD: is $ inlineBlock $ toString FullHD
  }

showInlineFlex :: Show
showInlineFlex =
  { isMobile: is $ inlineFlex $ toString Mobile
  , isTabletOnly: is $ inlineFlex $ toString TabletOnly
  , isDesktopOnly: is $ inlineFlex $ toString DesktopOnly
  , isWidescreenOnly: is $ inlineFlex $ toString WidescreenOnly
  , isTouch: is $ inlineFlex $ toString Touch
  , isTablet: is $ inlineFlex $ toString Tablet
  , isDesktop: is $ inlineFlex $ toString Desktop
  , isWhidescreen: is $ inlineFlex $ toString Widescreen
  , isFullHD: is $ inlineFlex $ toString FullHD
  }

type Hide =
  { isHiddenMobile :: Clazz
  , isHidddenTabletOnly :: Clazz
  , isHiddenDesktopOnly :: Clazz
  , isHiddenWidescreenOnly :: Clazz
  , isHiddenTouch :: Clazz
  , isHiddenTablet :: Clazz
  , isHiddenDesktop :: Clazz
  , isHiddenWhidescreen :: Clazz
  , isHiddenFullHD :: Clazz
  }

hide :: Hide
hide =
  { isHiddenMobile: is $ hidden $ toString Mobile
  , isHidddenTabletOnly: is $ hidden $ toString TabletOnly
  , isHiddenDesktopOnly:is $ hidden $ toString DesktopOnly
  , isHiddenWidescreenOnly: is $ hidden $ toString WidescreenOnly
  , isHiddenTouch: is $ hidden $ toString Touch
  , isHiddenTablet: is $ hidden $ toString Tablet
  , isHiddenDesktop: is $ hidden $ toString Desktop
  , isHiddenWhidescreen: is $ hidden $ toString Widescreen
  , isHiddenFullHD: is $ hidden $ toString FullHD
  }

-- | Private helpers

flex :: String -> String
flex str =
  "flex-" <> str

block :: String -> String
block str =
  "block-" <> str

inline :: String -> String
inline str =
  "inline-" <> str

inlineBlock :: String -> String
inlineBlock str =
  inline $ "block-" <> str

inlineFlex :: String -> String
inlineFlex str =
  inline $ "flex-" <> str

hidden :: String -> String
hidden str =
  "hidden-" <> str
