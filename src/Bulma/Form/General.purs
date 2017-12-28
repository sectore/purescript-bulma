-- | Bulma [`General`] (https://bulma.io/documentation/form/general/) classes of a form

module Bulma.Form.General
  ( button
  , checkbox
  , control
  , field
  , fieldBody
  , fieldLabel
  , hasAddonsCentered
  , hasAddonsRight
  , hasIconAlignment
  , help
  , IconAlignment(..)
  , input
  , isExpanded
  , isGroupedRight
  , isHorizontal
  , label
  , radio
  , select
  , textarea
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), addonsPart, groupedPart, hasClass, isClass, joinClassParts, toClassName, toClassPart)
import Bulma.Elements.Elements (iconPart)

-- | `.label` class
label :: ClassName
label = ClassName "label"

-- | `.input` class
input :: ClassName
input = ClassName "input"

-- | `.textarea` class
textarea :: ClassName
textarea = ClassName "textarea"

-- | `.select` class
select :: ClassName
select = ClassName "select"

-- | `.checkbox` class
checkbox :: ClassName
checkbox = ClassName "checkbox"

-- | `.radio` class
radio :: ClassName
radio = ClassName "radio"

-- | `.button` class
button :: ClassName
button = ClassName "button"

-- | `.help` class
help :: ClassName
help = ClassName "help"

-- | `.control` class
control :: ClassName
control = ClassName "control"

-- | `.field` class
field :: ClassName
field = toClassName fieldPart

-- | `.field-label` class
fieldLabel :: ClassName
fieldLabel = toClassName $ joinClassParts [fieldPart, ClassPart "label"]

-- | `.field-body` class
fieldBody :: ClassName
fieldBody = toClassName $ joinClassParts [fieldPart, ClassPart "body"]

fieldPart :: ClassPart
fieldPart = ClassPart "field"

data IconAlignment
  = IconLeft
  | IconRight

instance chIconAlignment :: ClassHelper IconAlignment where
  toClassPart IconLeft = ClassPart "left"
  toClassPart IconRight = ClassPart "right"

  -- | Sets `IconAlignment` to a form icon
hasIconAlignment :: IconAlignment -> ClassName
hasIconAlignment iAlign = hasClass $ joinClassParts [iconPart, toClassPart iAlign]

-- | `.is-expanded` class
isExpanded :: ClassName
isExpanded = isClass $ ClassPart "expanded"

-- | `.has-addons-centered` class
hasAddonsCentered :: ClassName
hasAddonsCentered = hasClass $ joinClassParts [addonsPart, ClassPart "centered"]

-- | `.has-addons-right` class
hasAddonsRight :: ClassName
hasAddonsRight = hasClass $ joinClassParts [addonsPart, ClassPart "right"]

-- | `.is-grouped-right` class
isGroupedRight :: ClassName
isGroupedRight = isClass $ joinClassParts [groupedPart, ClassPart "right"]

-- | `.is-horizontal` class
isHorizontal :: ClassName
isHorizontal = isClass $ ClassPart "horizontal"
