module Bulma.Components.DropdownTest where

import Prelude

import Bulma.Components.Dropdown (Alignment(..), State(..), dropdown, dropdownContent, dropdownDivider, dropdownItem, dropdownMenu, dropdownTrigger, isAlignment, isState)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteDropdown :: forall e. Free (TestF e) Unit
testSuiteDropdown =
  suite "Dropdown" do
    test "common" do
      dropdown `equal` ClassName "dropdown"
      dropdownTrigger `equal` ClassName "dropdown-trigger"
      dropdownMenu `equal` ClassName "dropdown-menu"
      dropdownContent `equal` ClassName "dropdown-content"
      dropdownItem `equal` ClassName "dropdown-item"
      dropdownDivider `equal` ClassName "dropdown-divider"
    test "alignment" do
      isAlignment Right `equal` ClassName "is-right"
      isAlignment Up `equal` ClassName "is-up"
    test "state" do
      isState Active `equal` ClassName "is-active"
      isState Hoverable `equal` ClassName "is-hoverable"
