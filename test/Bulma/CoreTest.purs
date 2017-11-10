module Bulma.CoreTest where

import Prelude

import Bulma.Core (ClassName(..), ClassPart(..), Position(..), hasClass, isBoxed, isClass, isPosition, joinClassParts, runClassName, runClassNames, toClassName)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCore :: forall e. Free (TestF e) Unit
testSuiteCore =
  suite "Core" do
    test "position" do
      isPosition Left `equal` ClassName "is-left"
      isPosition Right `equal` ClassName "is-right"
      isPosition Centered `equal` ClassName "is-centered"
    test "common" do
      isBoxed `equal` ClassName "is-boxed"
    test "helpers" do
      (isClass $ ClassPart "any") `equal` (ClassName "is-any")
      (hasClass $ ClassPart "any") `equal` ClassName "has-any"
      joinClassParts [ ClassPart "any"
                     , ClassPart "else" ]
        `equal` ClassPart "any-else"
      (toClassName $ ClassPart "any") `equal` ClassName "any"
      (runClassName $ ClassName "any") `equal` "any"
      runClassNames [ ClassName "any-class"
                    , ClassName "other-class" ]
        `equal` "any-class other-class"
