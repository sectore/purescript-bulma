module Bulma.Modifiers.HelpersTest where

import Prelude

import Bulma.Modifiers.Helpers (float, others, spacing)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteHelpers :: forall e. Free (TestF e) Unit
testSuiteHelpers =
  suite "Helpers" do
    test "float" do
      float.isClearfix `equal` "is-clearfix"
      float.isPulledLeft `equal` "is-pulled-left"
      float.isPulledRight `equal` "is-pulled-right"
    test "spacing" do
      spacing.isMarginless `equal` "is-marginless"
      spacing.isPaddingless `equal` "is-paddingless"
    test "others" do
      others.isOverlay `equal` "is-overlay"
      others.isClipped `equal` "is-clipped"
      others.isRadiusless `equal` "is-radiusless"
      others.isShadowless `equal` "is-shadowless"
      others.isUnsectable `equal` "is-unselectable"
      others.isInvisible `equal` "is-invisible"
