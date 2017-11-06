module Bulma.Modifiers.HelpersTest where

import Prelude

import Bulma.Core (ClassName(..))
import Bulma.Modifiers.Helpers (Helpers(..), is)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteHelpers :: forall e. Free (TestF e) Unit
testSuiteHelpers =
  suite "Helpers" do
    test "helper" do
      is Clearfix `equal` ClassName "is-clearfix"
      is PulledLeft `equal` ClassName "is-pulled-left"
      is PulledRight `equal` ClassName "is-pulled-right"
      is Marginless `equal` ClassName "is-marginless"
      is Paddingless `equal` ClassName "is-paddingless"
      is Overlay `equal` ClassName "is-overlay"
      is Clipped `equal` ClassName "is-clipped"
      is Radiusless `equal` ClassName "is-radiusless"
      is Shadowless `equal` ClassName "is-shadowless"
      is Unsectable `equal` ClassName "is-unselectable"
      is Invisible `equal` ClassName "is-invisible"
