-- | [Dropdown](https://bulma.io/documentation/components/dropdown/)

module Bulma.Components.Dropdown
  ( Alignment(..)
  , dropdown
  , dropdownTrigger
  , dropdownMenu
  , dropdownContent
  , dropdownItem
  , dropdownDivider
  , isAlignment
  , isState
  , State(..)
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName, ClassPart(..), isClass, joinClassParts, toClassName, toClassPart)

-- | `.dropdown` class
dropdown :: ClassName
dropdown = toClassName dropdownPart

-- | `.dropdown-trigger` class
dropdownTrigger :: ClassName
dropdownTrigger = dropdownClass $ ClassPart "trigger"

-- | `.dropdown-menu` class
dropdownMenu :: ClassName
dropdownMenu = dropdownClass $ ClassPart "menu"

-- | `.dropdown-content` class
dropdownContent :: ClassName
dropdownContent = dropdownClass $ ClassPart "content"

-- | `.dropdown-item` class
dropdownItem :: ClassName
dropdownItem = dropdownClass $ ClassPart "item"

-- | `.dropdown-divider` class
dropdownDivider :: ClassName
dropdownDivider = dropdownClass $ ClassPart "divider"

-- | [States](https://bulma.io/documentation/components/dropdown/#hoverable-or-toggable) of a dropdown
data State
  = Hoverable
  | Active

instance chState :: ClassHelper State where
  toClassPart Hoverable = ClassPart "hoverable"
  toClassPart Active = ClassPart "active"

-- | Sets a `State`
isState :: State -> ClassName
isState = isClass <<< toClassPart

-- | Alignments of a [dropdown](https://bulma.io/documentation/components/dropdown/#right-aligned)
-- | and a [dropup](https://bulma.io/documentation/components/dropdown/#dropup)
data Alignment
  = Right
  | Up

instance chAlignment :: ClassHelper Alignment where
  toClassPart Right = ClassPart "right"
  toClassPart Up = ClassPart "up"

-- | Sets an `Alignment`
isAlignment :: Alignment -> ClassName
isAlignment = isClass <<< toClassPart

-- private helpers

dropdownPart :: ClassPart
dropdownPart = ClassPart "dropdown"

dropdownClass :: ClassPart -> ClassName
dropdownClass cp =
  toClassName $ joinClassParts [dropdownPart, cp]
