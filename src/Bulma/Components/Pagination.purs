-- | Pagination
-- https://bulma.io/documentation/components/pagination
-- Note: Sizes of pagination styles mentioned in https://bulma.io/documentation/components/pagination/#sizes are "global"
-- and defined in `Bulma.Modifiers.Modifiers` only


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

import Bulma.Core (ClassName, ClassPart(..), Alignment(..), isClass, joinClassParts, notSupported, toClassName, toClassPart)

pagination :: ClassName
pagination = toClassName paginationPart

paginationPrevious :: ClassName
paginationPrevious = paginationClass $ ClassPart "previous"

paginationNext :: ClassName
paginationNext = paginationClass $ ClassPart "next"

paginationList :: ClassName
paginationList = paginationClass $ ClassPart "list"

paginationLink :: ClassName
paginationLink = paginationClass $ ClassPart "link"

paginationEllipsis :: ClassName
paginationEllipsis = paginationClass $ ClassPart "ellipsis"

isCurrent :: ClassName
isCurrent = isClass $ ClassPart "current"

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
