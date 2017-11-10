module Bulma.CoreTest where

import Prelude

import Bulma.Core (Alignment(..), ClassName(..), ClassPart(..), hasClass, isAlignment, isBoxed, isClass, isFullwidth, joinClassParts, notSupported, notSupportedPart, runClassName, runClassNames, toClassName)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCore :: forall e. Free (TestF e) Unit
testSuiteCore =
  suite "Core" do
    test "position" do
      isAlignment Left `equal` ClassName "is-left"
      isAlignment Right `equal` ClassName "is-right"
      isAlignment Centered `equal` ClassName "is-centered"
    test "common" do
      isBoxed `equal` ClassName "is-boxed"
      isFullwidth `equal` ClassName "is-fullwidth"
    test "not supported" do
      (notSupported $ ClassName "my-class") `equal` ClassName "my-class-IS-NOT-SUPPORTED-HERE"
      (notSupportedPart $ ClassPart "any-part") `equal` ClassPart "any-part-IS-NOT-SUPPORTED-HERE"
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
