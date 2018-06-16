module Bulma.Form.InputTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.Input (input)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteInput :: Free TestF Unit
testSuiteInput =
  suite "Form/Input" do
    test "common" do
      input `equal` ClassName "input"
