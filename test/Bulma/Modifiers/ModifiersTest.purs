module Bulma.Modifiers.ModifiersTest where

import Prelude

import Bulma.Modifiers.Modifiers (Colors(..), Sizes(..), State(..), color, size, state)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModifiers :: forall e. Free (TestF e) Unit
testSuiteModifiers =
  suite "Modifiers" do
    test "color" do
      color Primary `equal` "is-primary"
      color Link `equal` "is-link"
      color Info `equal` "is-info"
      color Success `equal` "is-success"
      color Warning `equal` "is-warning"
      color Danger `equal` "is-danger"
    test "size" do
      size Small `equal` "is-small"
      size Medium `equal` "is-medium"
      size Large `equal` "is-large"
    test "state" do
      state Outlined `equal` "is-outlined"
      state Loading `equal` "is-loading"
      state Disabled `equal` "[disabled]"
