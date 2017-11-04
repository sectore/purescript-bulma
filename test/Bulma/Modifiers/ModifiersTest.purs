module Bulma.Modifiers.ModifiersTest where

import Prelude

import Bulma.Core (ClazzName(..))
import Bulma.Modifiers.Modifiers (Colors(..), Sizes(..), State(..), color, size, state)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModifiers :: forall e. Free (TestF e) Unit
testSuiteModifiers =
  suite "Modifiers" do
    test "color" do
      color Primary `equal` ClazzName "is-primary"
      color Link `equal` ClazzName "is-link"
      color Info `equal` ClazzName "is-info"
      color Success `equal` ClazzName "is-success"
      color Warning `equal` ClazzName "is-warning"
      color Danger `equal` ClazzName "is-danger"
    test "size" do
      size Small `equal` ClazzName "is-small"
      size Medium `equal` ClazzName "is-medium"
      size Large `equal` ClazzName "is-large"
    test "state" do
      state Outlined `equal` ClazzName "is-outlined"
      state Loading `equal` ClazzName "is-loading"
      state Disabled `equal` ClazzName "[disabled]"
