module Bulma.Form.GeneralTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.General (IconAlignment(..), button, checkbox, control, field, fieldBody, fieldLabel, hasAddonsCentered, hasAddonsRight, hasIconAlignment, help, isExpanded, isGroupedRight, isHorizontal, label, radio)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteGeneral :: forall e. Free (TestF e) Unit
testSuiteGeneral =
  suite "Form-/General" do
    test "common" do
      button `equal` ClassName "button"
      checkbox `equal` ClassName "checkbox"
      help `equal` ClassName "help"
      label `equal` ClassName "label"
      radio `equal` ClassName "radio"
      control `equal` ClassName "control"
      isExpanded `equal` ClassName "is-expanded"
    test "alignment" do
      hasIconAlignment IconLeft `equal` ClassName "has-icon-left"
      hasIconAlignment IconRight `equal` ClassName "has-icon-right"
    test "addons" do
      hasAddonsCentered `equal` ClassName "has-addons-centered"
      hasAddonsRight `equal` ClassName "has-addons-right"
    test "grouped" do
      isGroupedRight `equal` ClassName "is-grouped-right"
    test "horizontal" do
      isHorizontal `equal` ClassName "is-horizontal"
    test "field" do
      field `equal` ClassName "field"
      fieldLabel `equal` ClassName "field-label"
      fieldBody `equal` ClassName "field-body"
