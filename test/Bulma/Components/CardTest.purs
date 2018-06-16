module Bulma.Components.CardTest where

import Prelude

import Bulma.Components.Card (card, cardContent, cardFooter, cardFooterItem, cardImage, cardHeader, isHeaderTitleAlignment)
import Bulma.Common (Alignment(..), ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCard :: Free TestF Unit
testSuiteCard =
  suite "Card" do
    test "common" do
      card `equal` ClassName "card"
      cardHeader `equal` ClassName "card-header"
      cardImage `equal` ClassName "card-image"
      cardContent `equal` ClassName "card-content"
      cardFooter `equal` ClassName "card-footer"
      cardFooterItem `equal` ClassName "card-footer-item"
    test "header title alignment" do
      isHeaderTitleAlignment Centered `equal` ClassName "is-centered"
      isHeaderTitleAlignment Right `equal` ClassName "is-right-IS-NOT-SUPPORTED-HERE"
