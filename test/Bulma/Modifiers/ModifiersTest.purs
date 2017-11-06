module Bulma.Modifiers.ModifiersTest where

import Prelude

import Bulma.Core (ClassName(..))
import Bulma.Modifiers.Modifiers (Colors(..), Sizes(..), State(..), color, size, state)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModifiers :: forall e. Free (TestF e) Unit
testSuiteModifiers =
  suite "Modifiers" do
    test "color" do
      color Primary `equal` ClassName "is-primary"
      color Link `equal` ClassName "is-link"
      color Info `equal` ClassName "is-info"
      color Success `equal` ClassName "is-success"
      color Warning `equal` ClassName "is-warning"
      color Danger `equal` ClassName "is-danger"
    test "size" do
      size Small `equal` ClassName "is-small"
      size Medium `equal` ClassName "is-medium"
      size Large `equal` ClassName "is-large"
    test "state" do
      state Outlined `equal` ClassName "is-outlined"
      state Loading `equal` ClassName "is-loading"
      state Disabled `equal` ClassName "[disabled]"
