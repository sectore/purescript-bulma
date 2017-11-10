-- | Navbar
-- https://bulma.io/documentation/components/navbar/

module Bulma.Components.Navbar
  ( Color(..)
  , isFixed
  , isColor
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
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), hasClass, isClass, joinClassParts, toClassName, toClassPart)
import Bulma.Core (Color(..)) as C

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

-- | Fixed navbar
-- https://bulma.io/documentation/components/navbar/#fixed-navbar

data FixedPosition
  = Top
  | Bottom

instance chFixedPosition :: ClassHelper FixedPosition where
  toClassPart Top = ClassPart "fixed-top"
  toClassPart Bottom = ClassPart "fixed-bottom"

isFixed :: FixedPosition -> ClassName
isFixed = isClass <<< toClassPart

-- | Navbar dropdown
-- https://bulma.io/documentation/components/navbar/#dropdown-menu

navbarDropdown :: ClassName
navbarDropdown = navbarClass dropdownPart

hasDropdown :: ClassName
hasDropdown = hasClass dropdownPart

hasDropdownUp :: ClassName
hasDropdownUp = navbarClass $ joinClassParts [dropdownPart, ClassPart "up"]

navbarDivider :: ClassName
navbarDivider = navbarClass $ ClassPart "divider"

data State
  = Hoverable
  | Active

instance chState :: ClassHelper State where
  toClassPart Hoverable = ClassPart "hoverable"
  toClassPart Active = ClassPart "active"

isState :: State -> ClassName
isState = isClass <<< toClassPart


data Color
  = CoreColor C.Color
  | White
  | Light
  | Dark
  | Black

instance chColor :: ClassHelper Color where
  toClassPart (CoreColor c) = toClassPart c
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"

-- Navbar background colors
-- https://bulma.io/documentation/components/navbar/#colors
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
