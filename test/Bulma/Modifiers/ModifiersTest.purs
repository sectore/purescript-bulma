module Bulma.Modifiers.ModifiersTest where

import Prelude

import Bulma.Common (ClassName(..), Color(..), Size(..))
import Bulma.Modifiers.Modifiers (State(..), isColor, isSize, isState)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModifiers :: Free TestF Unit
testSuiteModifiers =
  suite "Modifiers" do
    test "color" do
      isColor Primary `equal` ClassName "is-primary"
      isColor Link `equal` ClassName "is-link"
      isColor Info `equal` ClassName "is-info"
      isColor Success `equal` ClassName "is-success"
      isColor Warning `equal` ClassName "is-warning"
      isColor Danger `equal` ClassName "is-danger"
    test "size" do
      isSize Small `equal` ClassName "is-small"
      isSize Medium `equal` ClassName "is-medium"
      isSize Large `equal` ClassName "is-large"
    test "state" do
      isState Outlined `equal` ClassName "is-outlined"
      isState Loading `equal` ClassName "is-loading"
      isState Disabled `equal` ClassName "[disabled]"
