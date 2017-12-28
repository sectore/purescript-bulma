-- | Bulma [`Select`] (https://bulma.io/documentation/form/select/) classes

module Bulma.Form.Select
  ( isMultiple
  , select
  ) where

import Prelude
import Bulma.Common (ClassName(..), ClassPart(..), isClass)

-- | `.select` class
select :: ClassName
select = ClassName "select"

-- | `.is-multiple` class
isMultiple :: ClassName
isMultiple = isClass $ ClassPart "multiple"
