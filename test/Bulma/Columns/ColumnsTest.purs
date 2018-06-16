module Bulma.Columns.ColumnsTest where

import Prelude

import Bulma.Columns.Columns (column, columns, isGapless, isMultiline)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteColumns :: Free TestF Unit
testSuiteColumns =
  suite "Columns" do
    test "basics" do
      column `equal` ClassName "column"
      columns `equal` ClassName "columns"
    test "options" do
      isMultiline `equal` ClassName "is-multiline"
    test "gap" do
      isGapless `equal` ClassName "is-gapless"
