module Bulma.Columns.SizesTest where

import Prelude

import Bulma.Columns.Sizes (PercentSizes(..), Sizes(..), narrow, offset, percentOffset, percentSize, responsiveNarrow, responsivePercentSize, size)
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
      percentSize ThreeQuarters `equal` "is-three-quarters"
      percentSize TwoThirds `equal` "is-two-thirds"
      percentSize OneThird `equal` "is-one-third"
      percentSize OneQuarter `equal` "is-one-quarter"
      percentSize FourFifths `equal` "is-four-fifths"
      percentSize ThreeFifths `equal` "is-three-fifths"
      percentSize TwoFifths `equal` "is-two-fifths"
      percentSize OneFifth `equal` "is-one-fifth"
    test "percent sizes mobile" do
      responsivePercentSize ThreeQuarters Mobile `equal` "is-three-quarters-mobile"
      responsivePercentSize TwoThirds Mobile `equal` "is-two-thirds-mobile"
      responsivePercentSize OneThird Mobile `equal` "is-one-third-mobile"
      responsivePercentSize OneQuarter Mobile `equal` "is-one-quarter-mobile"
      responsivePercentSize FourFifths Mobile `equal` "is-four-fifths-mobile"
      responsivePercentSize ThreeFifths Mobile `equal` "is-three-fifths-mobile"
      responsivePercentSize TwoFifths Mobile `equal` "is-two-fifths-mobile"
      responsivePercentSize OneFifth Mobile `equal` "is-one-fifth-mobile"
    test "percent sizes desktop" do
      responsivePercentSize ThreeQuarters Desktop `equal` "is-three-quarters-desktop"
      responsivePercentSize TwoThirds Desktop `equal` "is-two-thirds-desktop"
      responsivePercentSize OneThird Desktop `equal` "is-one-third-desktop"
      responsivePercentSize OneQuarter Desktop `equal` "is-one-quarter-desktop"
      responsivePercentSize FourFifths Desktop `equal` "is-four-fifths-desktop"
      responsivePercentSize ThreeFifths Desktop `equal` "is-three-fifths-desktop"
      responsivePercentSize TwoFifths Desktop `equal` "is-two-fifths-desktop"
      responsivePercentSize OneFifth Desktop `equal` "is-one-fifth-desktop"
    test "percent sizes tablet" do
      responsivePercentSize ThreeQuarters Tablet `equal` "is-three-quarters-tablet"
      responsivePercentSize TwoThirds Tablet `equal` "is-two-thirds-tablet"
      responsivePercentSize OneThird Tablet `equal` "is-one-third-tablet"
      responsivePercentSize OneQuarter Tablet `equal` "is-one-quarter-tablet"
      responsivePercentSize FourFifths Tablet `equal` "is-four-fifths-tablet"
      responsivePercentSize ThreeFifths Tablet `equal` "is-three-fifths-tablet"
      responsivePercentSize TwoFifths Tablet `equal` "is-two-fifths-tablet"
      responsivePercentSize OneFifth Tablet `equal` "is-one-fifth-tablet"
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
      percentOffset ThreeQuarters `equal` "is-offset-three-quarters"
      percentOffset TwoThirds `equal` "is-offset-two-thirds"
      percentOffset OneThird `equal` "is-offset-one-third"
      percentOffset OneQuarter `equal` "is-offset-one-quarter"
      percentOffset FourFifths `equal` "is-offset-four-fifths"
      percentOffset ThreeFifths `equal` "is-offset-three-fifths"
      percentOffset TwoFifths `equal` "is-offset-two-fifths"
      percentOffset OneFifth `equal` "is-offset-one-fifth"
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
