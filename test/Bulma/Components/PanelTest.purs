module Bulma.Components.PanelTest where

import Prelude

import Bulma.Components.Panel (panel, panelBlock, panelHeading, panelIcon, panelTabs)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuitePanel :: Free TestF Unit
testSuitePanel =
  suite "Panel" do
    test "common" do
      panel `equal` ClassName "panel"
      panelHeading `equal` ClassName "panel-heading"
      panelTabs `equal` ClassName "panel-tabs"
      panelBlock `equal` ClassName "panel-block"
      panelIcon `equal` ClassName "panel-icon"
