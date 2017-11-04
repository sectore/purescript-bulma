module Bulma.Modifiers.HelpersTest where

import Prelude

import Bulma.Core (ClazzName(..))
import Bulma.Modifiers.Helpers (Helpers(..), helper)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteHelpers :: forall e. Free (TestF e) Unit
testSuiteHelpers =
  suite "Helpers" do
    test "helper" do
      helper Clearfix `equal` ClazzName "is-clearfix"
      helper PulledLeft `equal` ClazzName "is-pulled-left"
      helper PulledRight `equal` ClazzName "is-pulled-right"
      helper Marginless `equal` ClazzName "is-marginless"
      helper Paddingless `equal` ClazzName "is-paddingless"
      helper Overlay `equal` ClazzName "is-overlay"
      helper Clipped `equal` ClazzName "is-clipped"
      helper Radiusless `equal` ClazzName "is-radiusless"
      helper Shadowless `equal` ClazzName "is-shadowless"
      helper Unsectable `equal` ClazzName "is-unselectable"
      helper Invisible `equal` ClazzName "is-invisible"
