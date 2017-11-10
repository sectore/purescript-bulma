module Bulma.Components.PaginationTest where

import Prelude

import Bulma.Components.Pagination (isCurrent, isPosition, pagination, paginationEllipsis, paginationLink, paginationList, paginationNext, paginationPrevious)
import Bulma.Core (ClassName(..), Position(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuitePagination :: forall e. Free (TestF e) Unit
testSuitePagination =
  suite "Pagination" do
    test "common" do
      pagination `equal` ClassName "pagination"
      paginationPrevious `equal` ClassName "pagination-previous"
      paginationNext `equal` ClassName "pagination-next"
      paginationList `equal` ClassName "pagination-list"
      paginationLink `equal` ClassName "pagination-link"
      paginationEllipsis `equal` ClassName "pagination-ellipsis"
      isCurrent `equal` ClassName "is-current"
    test "position" do
      isPosition Right `equal` ClassName "is-right"
      isPosition Centered `equal` ClassName "is-centered"
      isPosition Left `equal` ClassName "is-left-IS-NOT-SUPPORTED-HERE"
