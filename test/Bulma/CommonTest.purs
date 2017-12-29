module Bulma.CommonTest where

import Prelude

import Bulma.Common (Alignment(..), ClassName(..), ClassPart(..), hasAddons, hasClass, isAlignment, isBoxed, isClass, isFullwidth, isGrouped, isSelected, isStatic, joinClassParts, notSupported, notSupportedPart, runClassName, runClassNames, toClassName, unsafeClassName, unsafeClassNames)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCommon :: forall e. Free (TestF e) Unit
testSuiteCommon =
  suite "Common" do
    test "common" do
      isBoxed `equal` ClassName "is-boxed"
      isFullwidth `equal` ClassName "is-fullwidth"
      hasAddons `equal` ClassName "has-addons"
      isGrouped `equal` ClassName "is-grouped"
      isSelected `equal` ClassName "is-selected"
      isStatic `equal` ClassName "is-static"
    test "position" do
      isAlignment Left `equal` ClassName "is-left"
      isAlignment Right `equal` ClassName "is-right"
      isAlignment Centered `equal` ClassName "is-centered"
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
    test "unsafe" do
      unsafeClassName "hello" `equal` ClassName "hello"
      unsafeClassNames ["hello", "world"] `equal` [ClassName "hello", ClassName "world"]
