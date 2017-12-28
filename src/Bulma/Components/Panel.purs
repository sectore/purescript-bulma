-- | Panel
-- https://bulma.io/documentation/components/panel/

module Bulma.Components.Panel
  ( panel
  , panelHeading
  , panelIcon
  , panelTabs
  , panelBlock
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), joinClassParts, toClassName)

panel :: ClassName
panel = toClassName panelPart

panelHeading :: ClassName
panelHeading = panelClass $ ClassPart "heading"

panelTabs :: ClassName
panelTabs = panelClass $ ClassPart "tabs"

panelBlock :: ClassName
panelBlock = panelClass $ ClassPart "block"

panelIcon :: ClassName
panelIcon = panelClass $ ClassPart "icon"


-- private helpers

panelPart :: ClassPart
panelPart = ClassPart "panel"

panelClass :: ClassPart -> ClassName
panelClass cp =
  toClassName $ joinClassParts [panelPart, cp]
