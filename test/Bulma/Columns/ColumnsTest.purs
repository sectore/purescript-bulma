module Bulma.Columns.ColumnsTest where

import Prelude

import Bulma.Columns.Columns (column, columns)
import Bulma.Core (runClazzName)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteColumns :: forall e. Free (TestF e) Unit
testSuiteColumns =
  suite "Columns" do
    test "basics" do
      runClazzName column `equal` "column"
      runClazzName columns `equal` "columns"
