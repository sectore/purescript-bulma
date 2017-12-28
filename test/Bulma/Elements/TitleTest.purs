module Bulma.Elements.TitleTest where

import Prelude

import Bulma.Common (ClassName(..), Is(..))
import Bulma.Elements.Title (isSpaced, isSize, subtitle, title)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTitle :: forall e. Free (TestF e) Unit
testSuiteTitle =
  suite "Title" do
    test "common" do
      title `equal` ClassName "title"
      subtitle `equal` ClassName "subtitle"
      isSpaced `equal` ClassName "is-spaced"
    test "sizes" do
      isSize Is1 `equal` ClassName "is-1"
      isSize Is2 `equal` ClassName "is-2"
      isSize Is3 `equal` ClassName "is-3"
      isSize Is4 `equal` ClassName "is-4"
      isSize Is5 `equal` ClassName "is-5"
      isSize Is6 `equal` ClassName "is-6"
      isSize Is7 `equal` ClassName "is-7-IS-NOT-SUPPORTED-HERE"
      isSize Is8 `equal` ClassName "is-8-IS-NOT-SUPPORTED-HERE"
      isSize Is9 `equal` ClassName "is-9-IS-NOT-SUPPORTED-HERE"
      isSize Is10 `equal` ClassName "is-10-IS-NOT-SUPPORTED-HERE"
      isSize Is11 `equal` ClassName "is-11-IS-NOT-SUPPORTED-HERE"
      isSize Is12 `equal` ClassName "is-12-IS-NOT-SUPPORTED-HERE"
