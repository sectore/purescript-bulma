-- | Menu
-- https://bulma.io/documentation/components/menu/

module Bulma.Components.Menu
  ( menu
  , menuLabel
  , menuList
  ) where

import Prelude

import Bulma.Core (ClassName, ClassPart(..), joinClassParts, toClassName)

menu :: ClassName
menu = toClassName menuPart

menuLabel :: ClassName
menuLabel = menuClass $ ClassPart "label"

menuList :: ClassName
menuList = menuClass $ ClassPart "list"

-- private helpers

menuPart :: ClassPart
menuPart = ClassPart "menu"

menuClass :: ClassPart -> ClassName
menuClass cp =
  toClassName $ joinClassParts [menuPart, cp]
