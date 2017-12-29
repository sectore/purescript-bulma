-- | [Panel](https://bulma.io/documentation/components/panel/)

module Bulma.Components.Panel
  ( panel
  , panelHeading
  , panelIcon
  , panelTabs
  , panelBlock
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), joinClassParts, toClassName)

-- | `.panel` class
panel :: ClassName
panel = toClassName panelPart

-- | `.panel-heading` class
panelHeading :: ClassName
panelHeading = panelClass $ ClassPart "heading"

-- | `.panel-tabs` class
panelTabs :: ClassName
panelTabs = panelClass $ ClassPart "tabs"

-- | `.panel-block` class
panelBlock :: ClassName
panelBlock = panelClass $ ClassPart "block"

-- | `.panel-icon` class
panelIcon :: ClassName
panelIcon = panelClass $ ClassPart "icon"


-- private helpers

panelPart :: ClassPart
panelPart = ClassPart "panel"

panelClass :: ClassPart -> ClassName
panelClass cp =
  toClassName $ joinClassParts [panelPart, cp]
