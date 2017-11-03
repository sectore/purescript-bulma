module Bulma.Modifiers.Modifiers where

import Prelude

import Bulma.Modifiers.Util (ModifierColors(..), is, toString)
import Bulma.Types (Clazz)

-- | Modifier classes
-- See https://bulma.io/documentation/modifiers/syntax/

type Colors =
  { isPrimary :: Clazz
  , isLink :: Clazz
  , isInfo :: Clazz
  , isSuccess :: Clazz
  , isWarning :: Clazz
  , isDanger :: Clazz
  }

colors :: Colors
colors =
  { isPrimary: is $ toString Primary
  , isLink: is $ toString Link
  , isInfo: is $ toString Info
  , isSuccess: is $ toString Success
  , isWarning: is $ toString Warning
  , isDanger: is $ toString Danger
  }

type Size =
  { isSmall :: Clazz
  , isMedium :: Clazz
  , isLarge :: Clazz
  }

size :: Size
size =
  { isSmall: is "small"
  , isMedium: is "medium"
  , isLarge: is "large"
  }

type State =
  { isOutlined :: Clazz
  , isLoading :: Clazz
  , disabled :: Clazz
  }

state :: State
state =
  { isOutlined: is "outlined"
  , isLoading: is "loading"
  , disabled: "[disabled]"
  }
