module Bulma.Modifiers.ModifiersTest where

import Prelude

import Bulma.Modifiers.Modifiers (colors, size, state)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModifiers :: forall e. Free (TestF e) Unit
testSuiteModifiers =
  suite "Modifiers" do
    test "colors" do
      colors.isPrimary `equal` "is-primary"
      colors.isLink `equal` "is-link"
      colors.isInfo `equal` "is-info"
      colors.isSuccess `equal` "is-success"
      colors.isWarning `equal` "is-warning"
      colors.isDanger `equal` "is-danger"
    test "size" do
      size.isSmall `equal` "is-small"
      size.isMedium `equal` "is-medium"
      size.isLarge `equal` "is-large"
    test "state" do
      state.isOutlined `equal` "is-outlined"
      state.isLoading `equal` "is-loading"
      state.disabled `equal` "[disabled]"
