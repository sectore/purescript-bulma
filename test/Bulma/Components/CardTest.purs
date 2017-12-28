module Bulma.Components.CardTest where

import Prelude

import Bulma.Components.Card (card, cardHeader, isHeaderTitleAlignment)
import Bulma.Common (Alignment(..), ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCard :: forall e. Free (TestF e) Unit
testSuiteCard =
  suite "Card" do
    test "common" do
      card `equal` ClassName "card"
      cardHeader `equal` ClassName "card-header"
    test "header title alignment" do
      isHeaderTitleAlignment Centered `equal` ClassName "is-centered"
      isHeaderTitleAlignment Right `equal` ClassName "is-right-IS-NOT-SUPPORTED-HERE"
