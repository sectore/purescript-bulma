-- | Shared `Columns` classes:
-- | * [`Basic`](https://bulma.io/documentation/columns/basics/)
-- | * [`Responsiveness`](https://bulma.io/documentation/columns/responsiveness/)
-- | * [`Nesting`](https://bulma.io/documentation/columns/nesting/)
-- | * [`Gap`](https://bulma.io/documentation/columns/gap/)
-- | * [`Options`](https://bulma.io/documentation/columns/options/)

module Bulma.Columns.Columns where

import Prelude

import Bulma.Common (ClassName(..), ClassPart(..), isClass)

-- | `.columns` class
columns :: ClassName
columns = ClassName "columns"

-- | `.column` class
column :: ClassName
column = ClassName "column"

-- | `.is-multiline` class
isMultiline :: ClassName
isMultiline = isClass $ ClassPart "multiline"

-- | `.is-gapless` class
isGapless :: ClassName
isGapless = isClass $ ClassPart "gapless"
