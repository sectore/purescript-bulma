-- | Tabs
-- https://bulma.io/documentation/components/tabs/
-- Note: Sizes of tabs styles mentioned in https://bulma.io/documentation/components/tabs/#sizes are "global"
-- and defined in `Bulma.Modifiers.Modifiers`

module Bulma.Components.Tabs
  ( isToggle
  , tabs
  ) where

import Prelude

import Bulma.Core (Alignment(..), ClassName, ClassPart(..), isClass, joinClassParts, notSupported, toClassName, toClassPart)

tabs :: ClassName
tabs = toClassName tabsPart

isAlignment :: Alignment -> ClassName
isAlignment a =
  let className = isClass $ toClassPart a in
  if a == Right || a == Centered
  then className
  else notSupported className

isToggle :: ClassName
isToggle = isClass $ ClassPart "toggle"

-- private helpers

tabsPart :: ClassPart
tabsPart = ClassPart "tabs"

tabsClass :: ClassPart -> ClassName
tabsClass cp =
  toClassName $ joinClassParts [tabsPart, cp]
