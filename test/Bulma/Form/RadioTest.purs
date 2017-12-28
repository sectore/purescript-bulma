module Bulma.Form.RadioTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.Radio (radio)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteRadio :: forall e. Free (TestF e) Unit
testSuiteRadio =
  suite "Form/Radio" do
    test "common" do
      radio `equal` ClassName "radio"
