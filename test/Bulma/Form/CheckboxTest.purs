module Bulma.Form.CheckboxTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.Checkbox (checkbox)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCheckbox :: Free TestF Unit
testSuiteCheckbox =
  suite "Form/Checkbox" do
    test "common" do
      checkbox `equal` ClassName "checkbox"
