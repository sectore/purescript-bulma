module Bulma.Elements.ElementsTest where

import Prelude

import Bulma.Core (ClassName(..))
import Bulma.Elements.Elements (box, content, delete, icon, notification, progress)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteElements :: forall e. Free (TestF e) Unit
testSuiteElements =
  suite "Elements" do
    test "box" do
      box `equal` ClassName "box"
    test "content" do
      content `equal` ClassName "content"
    test "delete" do
      delete `equal` ClassName "delete"
    test "icon" do
      icon `equal` ClassName "icon"
    test "notification" do
      notification `equal` ClassName "notification"
    test "progress" do
      progress `equal` ClassName "progress"
