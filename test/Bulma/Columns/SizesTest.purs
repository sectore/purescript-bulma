module Bulma.Columns.SizesTest where

import Prelude

import Bulma.Columns.Sizes (PercentSizes(..), Sizes(..), narrow, offset, percentOffset, percentSize, responsiveNarrow, size)
import Bulma.Core (BreakPoints(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteSizes :: forall e. Free (TestF e) Unit
testSuiteSizes =
  suite "Sizes" do
    test "sizes" do
      size Size2 `equal` "is-2"
      size Size3 `equal` "is-3"
      size Size4 `equal` "is-4"
      size Size5 `equal` "is-5"
      size Size6 `equal` "is-6"
      size Size7 `equal` "is-7"
      size Size8 `equal` "is-8"
      size Size9 `equal` "is-9"
      size Size10 `equal` "is-10"
      size Size11 `equal` "is-11"
    test "percent sizes" do
      percentSize THREE_QUATERS `equal` "is-three-quarters"
      percentSize TWO_THIRDS `equal` "is-two-thirds"
      percentSize ONE_THIRD `equal` "is-one-third"
      percentSize ONE_QUARTER `equal` "is-one-quarter"
      percentSize FOUR_FIFTHS `equal` "is-four-fifths"
      percentSize THREE_FIFTHS `equal` "is-three-fifths"
      percentSize TWO_FIFTHS `equal` "is-two-fifths"
      percentSize ONE_FIFTH `equal` "is-one-fifth"
    test "offset" do
      offset Size2 `equal` "is-offset-2"
      offset Size3 `equal` "is-offset-3"
      offset Size4 `equal` "is-offset-4"
      offset Size5 `equal` "is-offset-5"
      offset Size6 `equal` "is-offset-6"
      offset Size7 `equal` "is-offset-7"
      offset Size8 `equal` "is-offset-8"
      offset Size9 `equal` "is-offset-9"
      offset Size10 `equal` "is-offset-10"
      offset Size11 `equal` "is-offset-11"
    test "percent offset" do
      percentOffset THREE_QUATERS `equal` "is-offset-three-quarters"
      percentOffset TWO_THIRDS `equal` "is-offset-two-thirds"
      percentOffset ONE_THIRD `equal` "is-offset-one-third"
      percentOffset ONE_QUARTER `equal` "is-offset-one-quarter"
      percentOffset FOUR_FIFTHS `equal` "is-offset-four-fifths"
      percentOffset THREE_FIFTHS `equal` "is-offset-three-fifths"
      percentOffset TWO_FIFTHS `equal` "is-offset-two-fifths"
      percentOffset ONE_FIFTH `equal` "is-offset-one-fifth"
    test "narrow" do
      narrow `equal` "is-narrow"
    test "responsive narrow" do
      responsiveNarrow Mobile `equal` "is-narrow-mobile"
      responsiveNarrow Tablet `equal` "is-narrow-tablet"
      responsiveNarrow TabletOnly `equal` "is-narrow-tablet-only"
      responsiveNarrow Touch `equal` "is-narrow-touch"
      responsiveNarrow Desktop `equal` "is-narrow-desktop"
      responsiveNarrow DesktopOnly `equal` "is-narrow-desktop-only"
      responsiveNarrow Widescreen `equal` "is-narrow-widescreen"
      responsiveNarrow WidescreenOnly `equal` "is-narrow-widescreen-only"
      responsiveNarrow FullHD `equal` "is-narrow-fullhd"
