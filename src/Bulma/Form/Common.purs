-- | Shared classes of following form elements:
-- | * [`Textarea`] (https://bulma.io/documentation/form/textarea/)
-- | * [`Input`] (https://bulma.io/documentation/form/general/)
-- | * [`Select`] (https://bulma.io/documentation/form/select/#colors)
-- | * [`File Input`](https://bulma.io/documentation/form/file/#sizes)

module Bulma.Form.Common
  ( isColor
  , isSize
  , isState
  , isRounded
  , State(..)

  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), Color(..), Size, isClass, notSupported, toClassPart)

data State
  = Normal
  | Hover
  | Focus
  | Loading

instance chState :: ClassHelper State where
  toClassPart Normal = ClassPart "normal"
  toClassPart Hover = ClassPart "hovered"
  toClassPart Focus = ClassPart "focused"
  toClassPart Loading = ClassPart "loading"

-- | Sets a `State` to following form elements
-- | * [`Input`](https://bulma.io/documentation/form/input/#states)
-- | * [`TextArea`](https://bulma.io/documentation/form/textarea/#states)
isState :: State -> ClassName
isState = isClass <<< toClassPart

-- | Sets a `State` to following form elements
-- | * [`Input`](https://bulma.io/documentation/form/input/#sizes)
-- | * [`TextArea`](https://bulma.io/documentation/form/textarea/#sizes)
-- | * [`Select`](https://bulma.io/documentation/form/select/#sizes)
-- | * [`File Input`](https://bulma.io/documentation/form/file/#sizes)
isSize :: Size -> ClassName
isSize = isClass <<< toClassPart

-- | Defined colors of following form elements
-- | * [`Input`](https://bulma.io/documentation/form/input/#colors)
-- | * [`TextArea`](https://bulma.io/documentation/form/textarea/#colors)
-- | * [`Select`](https://bulma.io/documentation/form/select/#colors)
isColor :: Color -> ClassName
isColor c =
  let className = isClass $ toClassPart c in
  if c /= Link
  then className
  else notSupported className

-- | `.is-rounded` class used by following form elements
-- | * [`Input`](https://bulma.io/documentation/form/input/#styles)
-- | * [`Select`](https://bulma.io/documentation/form/select/#styles)
isRounded :: ClassName
isRounded = ClassName "is-rounded"
