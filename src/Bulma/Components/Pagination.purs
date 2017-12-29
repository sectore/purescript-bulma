-- | [Pagination](https://bulma.io/documentation/components/pagination)
-- |
-- | Note: Sizes of pagination styles mentioned in https://bulma.io/documentation/components/pagination/#sizes are "global"
-- | and defined in `Bulma.Modifiers.Modifiers` only


module Bulma.Components.Pagination
  ( isAlignment
  , isCurrent
  , pagination
  , paginationPrevious
  , paginationNext
  , paginationLink
  , paginationList
  , paginationEllipsis
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), Alignment(..), isClass, joinClassParts, notSupported, toClassName, toClassPart)

-- | `.pagination` class
pagination :: ClassName
pagination = toClassName paginationPart

-- | `.pagination-previous` class
paginationPrevious :: ClassName
paginationPrevious = paginationClass $ ClassPart "previous"

-- | `.pagination-next` class
paginationNext :: ClassName
paginationNext = paginationClass $ ClassPart "next"

-- | `.pagination-list` class
paginationList :: ClassName
paginationList = paginationClass $ ClassPart "list"

-- | `.pagination-link` class
paginationLink :: ClassName
paginationLink = paginationClass $ ClassPart "link"

-- | `.pagination-ellipsis` class
paginationEllipsis :: ClassName
paginationEllipsis = paginationClass $ ClassPart "ellipsis"

-- | `.is-current` class
isCurrent :: ClassName
isCurrent = isClass $ ClassPart "current"

-- | Sets an `Alignment`
isAlignment :: Alignment -> ClassName
isAlignment p =
  let className = isClass $ toClassPart p in
  if p == Right || p == Centered
  then className
  else notSupported className

-- private helpers

paginationPart :: ClassPart
paginationPart = ClassPart "pagination"

paginationClass :: ClassPart -> ClassName
paginationClass cp =
  toClassName $ joinClassParts [paginationPart, cp]
