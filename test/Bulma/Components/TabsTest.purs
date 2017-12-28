module Bulma.Components.TabsTest where

import Prelude

import Bulma.Components.Tabs (tabs, isToggle)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTabs :: forall e. Free (TestF e) Unit
testSuiteTabs =
  suite "Tabs" do
    test "common" do
      tabs `equal` ClassName "tabs"
      isToggle `equal` ClassName "is-toggle"
