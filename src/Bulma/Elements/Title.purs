-- | Title
-- https://bulma.io/documentation/elements/title/

module Bulma.Elements.Title
  ( title
  , subtitle
  , isSize
  , isSpaced
  ) where

import Prelude

import Bulma.Core (ClassName(..), ClassPart(..), Is(..), isClass, notSupported, toClassPart)

title :: ClassName
title = ClassName "title"

subtitle :: ClassName
subtitle = ClassName "subtitle"

isSize :: Is -> ClassName
isSize i =
  let clazzName = isClass $ toClassPart i in
  if i > Is6
  then notSupported clazzName
  else clazzName

isSpaced :: ClassName
isSpaced = isClass $ ClassPart "spaced"
