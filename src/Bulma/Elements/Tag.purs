-- | Bulma [`Tag`] (https://bulma.io/documentation/elements/tag/) classes

module Bulma.Elements.Tag
  ( Color(..)
  , isColor
  , isDelete
  , isGroupedMultiline
  , isSize
  , tag
  , tags
  ) where

import Prelude

import Bulma.Common (Color) as C
import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), Size(..), groupedPart, isClass, joinClassParts, notSupported, toClassPart)

-- | `.tag` class
tag :: ClassName
tag = ClassName "tag"

-- | `.tags` class
tags :: ClassName
tags = ClassName "tags"

-- | [background colors](https://bulma.io/documentation/elements/tag/#colors) of a tag
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

-- Sets a `Color` of a tag
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- Sets a [`Size`](https://bulma.io/documentation/elements/tag/#sizes) of a tag
isSize :: Size -> ClassName
isSize s =
  let className = isClass $ toClassPart s in
  if s < Large
  then className
  else notSupported className

-- | `.is-delete` class
isDelete :: ClassName
isDelete = isClass $ ClassPart "delete"

-- | `.is-grouped-multiline` class
isGroupedMultiline :: ClassName
isGroupedMultiline = isClass $ joinClassParts [groupedPart, ClassPart "multiline"]
