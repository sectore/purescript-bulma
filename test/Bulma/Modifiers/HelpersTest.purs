module Bulma.Modifiers.HelpersTest where

import Prelude

import Bulma.Core (ClassName(..))
import Bulma.Modifiers.Helpers (Helpers(..), helper)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteHelpers :: forall e. Free (TestF e) Unit
testSuiteHelpers =
  suite "Helpers" do
    test "helper" do
      helper Clearfix `equal` ClassName "is-clearfix"
      helper PulledLeft `equal` ClassName "is-pulled-left"
      helper PulledRight `equal` ClassName "is-pulled-right"
      helper Marginless `equal` ClassName "is-marginless"
      helper Paddingless `equal` ClassName "is-paddingless"
      helper Overlay `equal` ClassName "is-overlay"
      helper Clipped `equal` ClassName "is-clipped"
      helper Radiusless `equal` ClassName "is-radiusless"
      helper Shadowless `equal` ClassName "is-shadowless"
      helper Unsectable `equal` ClassName "is-unselectable"
      helper Invisible `equal` ClassName "is-invisible"
