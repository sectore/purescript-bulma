module Bulma.Components.BreadcrumbTest where

import Prelude

import Bulma.Components.Breadcrumb (Separator(..), State(..), breadcrumb, hasSeparator, isState)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteBreadcrumb :: forall e. Free (TestF e) Unit
testSuiteBreadcrumb =
  suite "Breadcrumb" do
    test "common" do
      breadcrumb `equal` ClassName "breadcrumb"
    test "state" do
      isState Active `equal` ClassName "is-active"
    test "separator" do
      hasSeparator Arrow `equal` ClassName "has-arrow-separator"
      hasSeparator Bullet `equal` ClassName "has-bullet-separator"
      hasSeparator Dot `equal` ClassName "has-dot-separator"
      hasSeparator Succeeds `equal` ClassName "has-succeeds-separator"
