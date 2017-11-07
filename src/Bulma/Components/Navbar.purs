-- | Navbar
-- https://bulma.io/documentation/components/navbar/
module Bulma.Components.Navbar
  ( navbar
  , navbarBrand
  , navbarBurger
  , navbarMenu
  , navbarStart
  , navbarEnd
  , navbarItem
  , navbarLink
  , navbarDropdown
  , navbarDivider
  ) where

import Prelude

import Bulma.Core (ClassName, ClassPart(..), joinClassParts, toClassName)

navbar :: ClassName
navbar = toClassName navbarPart

navbarBrand :: ClassName
navbarBrand = navbarClass $ ClassPart "brand"

navbarBurger :: ClassName
navbarBurger = navbarClass $ ClassPart "burger"

navbarMenu :: ClassName
navbarMenu = navbarClass $ ClassPart "menu"

navbarStart :: ClassName
navbarStart = navbarClass $ ClassPart "start"

navbarEnd :: ClassName
navbarEnd = navbarClass $ ClassPart "end"

navbarItem :: ClassName
navbarItem = navbarClass $ ClassPart "item"

navbarLink :: ClassName
navbarLink = navbarClass $ ClassPart "link"

navbarDropdown :: ClassName
navbarDropdown = navbarClass $ ClassPart "dropdown"

navbarDivider :: ClassName
navbarDivider = navbarClass $ ClassPart "divider"

-- private helpers

navbarPart :: ClassPart
navbarPart = ClassPart "navbar"

navbarClass :: ClassPart -> ClassName
navbarClass cp =
  toClassName $ joinClassParts [navbarPart, cp]
