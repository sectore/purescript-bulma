module Bulma.Form.SelectTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.Select (select)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteSelect :: Free TestF Unit
testSuiteSelect =
  suite "Form/Select" do
    test "common" do
      select `equal` ClassName "select"
