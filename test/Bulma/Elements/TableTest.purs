module Bulma.Elements.TableTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Elements.Table (Modifier(..), isModifier, table)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTable :: Free TestF Unit
testSuiteTable =
  suite "Table" do
    test "common" do
      table `equal` ClassName "table"
    test "modifiers" do
      isModifier Bordered `equal` ClassName "is-bordered"
      isModifier Striped `equal` ClassName "is-striped"
      isModifier Narrow `equal` ClassName "is-narrow"
      isModifier Hoverable `equal` ClassName "is-hoverable"
      isModifier Fullwidth `equal` ClassName "is-fullwidth"
