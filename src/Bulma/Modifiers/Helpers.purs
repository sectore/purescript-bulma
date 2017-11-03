module Bulma.Modifiers.Helpers  where

import Bulma.Types (Clazz)
import Bulma.Modifiers.Util (is)

-- | Modifier helpers
-- See https://bulma.io/documentation/modifiers/helpers/

type Float =
  { isClearfix :: Clazz
  , isPulledLeft :: Clazz
  , isPulledRight :: Clazz
  }

float :: Float
float =
  { isClearfix: is "clearfix"
  , isPulledLeft: is "pulled-left"
  , isPulledRight: is "pulled-right"
  }

type Spacing =
  { isMarginless :: Clazz
  , isPaddingless :: Clazz
  }

spacing :: Spacing
spacing =
  { isMarginless: is "marginless"
  , isPaddingless: is "paddingless"
  }

type Others =
  { isOverlay :: Clazz
  , isClipped :: Clazz
  , isRadiusless :: Clazz
  , isShadowless :: Clazz
  , isUnsectable :: Clazz
  , isInvisible :: Clazz
  }

others :: Others
others =
  { isOverlay: is "overlay"
  , isClipped: is "clipped"
  , isRadiusless: is "radiusless"
  , isShadowless: is "shadowless"
  , isUnsectable: is "unselectable"
  , isInvisible: is "invisible"
  }
