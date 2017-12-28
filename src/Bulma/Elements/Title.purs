-- | Bulma [`Title`] (https://bulma.io/documentation/elements/title/)

module Bulma.Elements.Title
  ( title
  , subtitle
  , isSize
  , isSpaced
  ) where

import Prelude
import Bulma.Common (ClassName(..), ClassPart(..), Is(..), isClass, notSupported, toClassPart)

-- | `.title` class
title :: ClassName
title = ClassName "title"

-- | `.subtitle` class
subtitle :: ClassName
subtitle = ClassName "subtitle"

-- | Sets a [`Size`](https://bulma.io/documentation/elements/title/#sizes) of a title
isSize :: Is -> ClassName
isSize i =
  let className = isClass $ toClassPart i in
  if i > Is6
  then notSupported className
  else className

-- | `.is-spaced` class
isSpaced :: ClassName
isSpaced = isClass $ ClassPart "spaced"
