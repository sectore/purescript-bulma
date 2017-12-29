-- | [Navbar](https://bulma.io/documentation/components/navbar/)

module Bulma.Components.Navbar
  ( Color(..)
  , isFixed
  , isColor
  , isState
  , FixedPosition(..)
  , hasDropdown
  , navbar
  , navbarBrand
  , navbarBurger
  , navbarMenu
  , navbarStart
  , navbarEnd
  , navbarItem
  , navbarLink
  , navbarDropdown
  , navbarDivider
  , State(..)
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName, ClassPart(..), hasClass, isClass, joinClassParts, toClassName, toClassPart)
import Bulma.Common (Color) as C

-- | `.navbar` class
navbar :: ClassName
navbar = toClassName navbarPart

-- | `.navbar-brand` class
navbarBrand :: ClassName
navbarBrand = navbarClass $ ClassPart "brand"

-- | `.navbar-burger` class
navbarBurger :: ClassName
navbarBurger = navbarClass $ ClassPart "burger"

-- | `.navbar-menu` class
navbarMenu :: ClassName
navbarMenu = navbarClass $ ClassPart "menu"

-- | `.navbar-start` class
navbarStart :: ClassName
navbarStart = navbarClass $ ClassPart "start"

-- | `.navbar-end` class
navbarEnd :: ClassName
navbarEnd = navbarClass $ ClassPart "end"

-- | `.navbar-item` class
navbarItem :: ClassName
navbarItem = navbarClass $ ClassPart "item"

-- | `.navbar-link` class
navbarLink :: ClassName
navbarLink = navbarClass $ ClassPart "link"

-- | [Positions](https://bulma.io/documentation/components/navbar/#fixed-navbar) of a fixed navbar
data FixedPosition
  = Top
  | Bottom

instance chFixedPosition :: ClassHelper FixedPosition where
  toClassPart Top = ClassPart "fixed-top"
  toClassPart Bottom = ClassPart "fixed-bottom"

-- | Sets `FixedPosition`
isFixed :: FixedPosition -> ClassName
isFixed = isClass <<< toClassPart

-- | `.navbar-dropdown` class
navbarDropdown :: ClassName
navbarDropdown = navbarClass dropdownPart

-- | `.has-dropdown` class
hasDropdown :: ClassName
hasDropdown = hasClass dropdownPart

-- | `.has-dropdown-up` class
hasDropdownUp :: ClassName
hasDropdownUp = navbarClass $ joinClassParts [dropdownPart, ClassPart "up"]

-- | `.navbar-divider` class
navbarDivider :: ClassName
navbarDivider = navbarClass $ ClassPart "divider"

-- | States of a navbar item
data State
  = Hoverable
  | Active

instance chState :: ClassHelper State where
  toClassPart Hoverable = ClassPart "hoverable"
  toClassPart Active = ClassPart "active"

-- | Sets a `State`
isState :: State -> ClassName
isState = isClass <<< toClassPart

-- | [Background colors](https://bulma.io/documentation/components/navbar/#colors) of a navbar
data Color
  = CommonColor C.Color
  | White
  | Light
  | Dark
  | Black

instance chColor :: ClassHelper Color where
  toClassPart (CommonColor c) = toClassPart c
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"

-- | Sets background `Colors`
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- private helpers

navbarPart :: ClassPart
navbarPart = ClassPart "navbar"

dropdownPart :: ClassPart
dropdownPart = ClassPart "dropdown"

navbarClass :: ClassPart -> ClassName
navbarClass cp =
  toClassName $ joinClassParts [navbarPart, cp]
