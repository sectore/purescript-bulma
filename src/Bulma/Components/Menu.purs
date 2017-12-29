-- | [Menu](https://bulma.io/documentation/components/menu/)

module Bulma.Components.Menu
  ( menu
  , menuLabel
  , menuList
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), joinClassParts, toClassName)

-- | `.menu` class
menu :: ClassName
menu = toClassName menuPart

-- | `.menu-label` class
menuLabel :: ClassName
menuLabel = menuClass $ ClassPart "label"

-- | `.menu-list` class
menuList :: ClassName
menuList = menuClass $ ClassPart "list"

-- private helpers

menuPart :: ClassPart
menuPart = ClassPart "menu"

menuClass :: ClassPart -> ClassName
menuClass cp =
  toClassName $ joinClassParts [menuPart, cp]
