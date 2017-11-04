module Bulma.Modifiers.HelpersTest where

import Prelude

import Bulma.Modifiers.Helpers (Helpers(..), helper)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteHelpers :: forall e. Free (TestF e) Unit
testSuiteHelpers =
  suite "Helpers" do
    test "helper" do
      helper Clearfix `equal` "is-clearfix"
      helper PulledLeft `equal` "is-pulled-left"
      helper PulledRight `equal` "is-pulled-right"
      helper Marginless `equal` "is-marginless"
      helper Paddingless `equal` "is-paddingless"
      helper Overlay `equal` "is-overlay"
      helper Clipped `equal` "is-clipped"
      helper Radiusless `equal` "is-radiusless"
      helper Shadowless `equal` "is-shadowless"
      helper Unsectable `equal` "is-unselectable"
      helper Invisible `equal` "is-invisible"
