-- | Dropdown
-- https://bulma.io/documentation/components/dropdown/

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

import Bulma.Core (class ClassHelper, ClassName, ClassPart(..), isClass, joinClassParts, toClassName, toClassPart)

dropdown :: ClassName
dropdown = toClassName dropdownPart

dropdownTrigger :: ClassName
dropdownTrigger = dropdownClass $ ClassPart "trigger"

dropdownMenu :: ClassName
dropdownMenu = dropdownClass $ ClassPart "menu"

dropdownContent :: ClassName
dropdownContent = dropdownClass $ ClassPart "content"

dropdownItem :: ClassName
dropdownItem = dropdownClass $ ClassPart "item"

dropdownDivider :: ClassName
dropdownDivider = dropdownClass $ ClassPart "divider"

data State
  = Hoverable
  | Active

instance chState :: ClassHelper State where
  toClassPart Hoverable = ClassPart "hoverable"
  toClassPart Active = ClassPart "active"

isState :: State -> ClassName
isState = isClass <<< toClassPart

data Alignment
  = Right
  | Up 

instance chAlignment :: ClassHelper Alignment where
  toClassPart Right = ClassPart "right"
  toClassPart Up = ClassPart "up"

isAlignment :: Alignment -> ClassName
isAlignment = isClass <<< toClassPart

-- private helpers

dropdownPart :: ClassPart
dropdownPart = ClassPart "dropdown"

dropdownClass :: ClassPart -> ClassName
dropdownClass cp =
  toClassName $ joinClassParts [dropdownPart, cp]
