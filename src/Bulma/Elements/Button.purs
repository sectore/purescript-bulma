-- | Button
-- https://bulma.io/documentation/elements/button/

module Bulma.Elements.Button
  ( button
  , buttons
  , Color(..)
  , isColor
  , Style(..)
  , isStyle
  , State(..)
  , isState
  , isStatic
  , isGrouped
  , hasAddons
  , isSelected
  ) where

import Prelude

import Bulma.Core (class ClassHelper, ClassName(..), ClassPart(..), hasClass, isClass, toClassPart)

button :: ClassName
button = ClassName "button"

buttons :: ClassName
buttons = ClassName "buttons"

data Color
  = White
  | Light
  | Dark
  | Black
  | Text

instance chColor :: ClassHelper Color where
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"
  toClassPart Text = ClassPart "text"

-- Button colors
-- https://bulma.io/documentation/elements/button/#colors
-- Note: For using common colors such as `primary`, `link` etc.
-- use `isColor` function of `Bulma.Modifiers.Modifiers`
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- Buttons styles
-- https://bulma.io/documentation/elements/button/#styles
data Style
  = Outlined
  | Inverted

instance chStyle :: ClassHelper Style where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Inverted = ClassPart "inverted"

isStyle :: Style -> ClassName
isStyle = isClass <<< toClassPart


data State
  = Hover
  | Focus
  | Active
  | Loading

instance chState :: ClassHelper State where
  toClassPart Hover = ClassPart "hovered"
  toClassPart Focus = ClassPart "focused"
  toClassPart Active = ClassPart "active"
  toClassPart Loading = ClassPart "loading"

-- Button state
-- https://bulma.io/documentation/elements/button/#states
isState :: State -> ClassName
isState = isClass <<< toClassPart


isStatic :: ClassName
isStatic = isClass $ ClassPart "static"

isGrouped :: ClassName
isGrouped = isClass $ ClassPart "grouped"

hasAddons :: ClassName
hasAddons = hasClass $ ClassPart "addons"

isSelected :: ClassName
isSelected = isClass $ ClassPart "selected"
