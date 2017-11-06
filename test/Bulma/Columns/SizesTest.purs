module Bulma.Columns.SizesTest where

import Prelude

import Bulma.Columns.Sizes (PercentSizes(..), narrow, offset, percentOffset, percentSize, responsiveNarrow, responsivePercentSize, size)
import Bulma.Core (BreakPoints(..), ClassName(..), Sizes(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteSizes :: forall e. Free (TestF e) Unit
testSuiteSizes =
  suite "Sizes" do
    test "sizes" do
      size Size1 `equal` ClassName "is-1-IS-NOT-SUPPORTED-HERE"
      size Size2 `equal` ClassName "is-2"
      size Size3 `equal` ClassName "is-3"
      size Size4 `equal` ClassName "is-4"
      size Size5 `equal` ClassName "is-5"
      size Size6 `equal` ClassName "is-6"
      size Size7 `equal` ClassName "is-7"
      size Size8 `equal` ClassName "is-8"
      size Size9 `equal` ClassName "is-9"
      size Size10 `equal` ClassName "is-10"
      size Size11 `equal` ClassName "is-11"
      size Size12 `equal` ClassName "is-12-IS-NOT-SUPPORTED-HERE"
    test "percent sizes" do
      percentSize ThreeQuarters `equal` ClassName "is-three-quarters"
      percentSize TwoThirds `equal` ClassName "is-two-thirds"
      percentSize OneThird `equal` ClassName "is-one-third"
      percentSize OneQuarter `equal` ClassName "is-one-quarter"
      percentSize FourFifths `equal` ClassName "is-four-fifths"
      percentSize ThreeFifths `equal` ClassName "is-three-fifths"
      percentSize TwoFifths `equal` ClassName "is-two-fifths"
      percentSize OneFifth `equal` ClassName "is-one-fifth"
    test "percent sizes mobile" do
      responsivePercentSize ThreeQuarters Mobile `equal` ClassName "is-three-quarters-mobile"
      responsivePercentSize TwoThirds Mobile `equal` ClassName "is-two-thirds-mobile"
      responsivePercentSize OneThird Mobile `equal` ClassName "is-one-third-mobile"
      responsivePercentSize OneQuarter Mobile `equal` ClassName "is-one-quarter-mobile"
      responsivePercentSize FourFifths Mobile `equal` ClassName "is-four-fifths-mobile"
      responsivePercentSize ThreeFifths Mobile `equal` ClassName "is-three-fifths-mobile"
      responsivePercentSize TwoFifths Mobile `equal` ClassName "is-two-fifths-mobile"
      responsivePercentSize OneFifth Mobile `equal` ClassName "is-one-fifth-mobile"
    test "percent sizes desktop" do
      responsivePercentSize ThreeQuarters Desktop `equal` ClassName "is-three-quarters-desktop"
      responsivePercentSize TwoThirds Desktop `equal` ClassName "is-two-thirds-desktop"
      responsivePercentSize OneThird Desktop `equal` ClassName "is-one-third-desktop"
      responsivePercentSize OneQuarter Desktop `equal` ClassName "is-one-quarter-desktop"
      responsivePercentSize FourFifths Desktop `equal` ClassName "is-four-fifths-desktop"
      responsivePercentSize ThreeFifths Desktop `equal` ClassName "is-three-fifths-desktop"
      responsivePercentSize TwoFifths Desktop `equal` ClassName "is-two-fifths-desktop"
      responsivePercentSize OneFifth Desktop `equal` ClassName "is-one-fifth-desktop"
    test "percent sizes tablet" do
      responsivePercentSize ThreeQuarters Tablet `equal` ClassName "is-three-quarters-tablet"
      responsivePercentSize TwoThirds Tablet `equal` ClassName "is-two-thirds-tablet"
      responsivePercentSize OneThird Tablet `equal` ClassName "is-one-third-tablet"
      responsivePercentSize OneQuarter Tablet `equal` ClassName "is-one-quarter-tablet"
      responsivePercentSize FourFifths Tablet `equal` ClassName "is-four-fifths-tablet"
      responsivePercentSize ThreeFifths Tablet `equal` ClassName "is-three-fifths-tablet"
      responsivePercentSize TwoFifths Tablet `equal` ClassName "is-two-fifths-tablet"
      responsivePercentSize OneFifth Tablet `equal` ClassName "is-one-fifth-tablet"
    test "offset" do
      offset Size2 `equal` ClassName "is-offset-2"
      offset Size3 `equal` ClassName "is-offset-3"
      offset Size4 `equal` ClassName "is-offset-4"
      offset Size5 `equal` ClassName "is-offset-5"
      offset Size6 `equal` ClassName "is-offset-6"
      offset Size7 `equal` ClassName "is-offset-7"
      offset Size8 `equal` ClassName "is-offset-8"
      offset Size9 `equal` ClassName "is-offset-9"
      offset Size10 `equal` ClassName "is-offset-10"
      offset Size11 `equal` ClassName "is-offset-11"
    test "percent offset" do
      percentOffset ThreeQuarters `equal` ClassName "is-offset-three-quarters"
      percentOffset TwoThirds `equal` ClassName "is-offset-two-thirds"
      percentOffset OneThird `equal` ClassName "is-offset-one-third"
      percentOffset OneQuarter `equal` ClassName "is-offset-one-quarter"
      percentOffset FourFifths `equal` ClassName "is-offset-four-fifths"
      percentOffset ThreeFifths `equal` ClassName "is-offset-three-fifths"
      percentOffset TwoFifths `equal` ClassName "is-offset-two-fifths"
      percentOffset OneFifth `equal` ClassName "is-offset-one-fifth"
    test "narrow" do
      narrow `equal` ClassName "is-narrow"
    test "responsive narrow" do
      responsiveNarrow Mobile `equal` ClassName "is-narrow-mobile"
      responsiveNarrow Tablet `equal` ClassName "is-narrow-tablet"
      responsiveNarrow TabletOnly `equal` ClassName "is-narrow-tablet-only"
      responsiveNarrow Touch `equal` ClassName "is-narrow-touch"
      responsiveNarrow Desktop `equal` ClassName "is-narrow-desktop"
      responsiveNarrow DesktopOnly `equal` ClassName "is-narrow-desktop-only"
      responsiveNarrow Widescreen `equal` ClassName "is-narrow-widescreen"
      responsiveNarrow WidescreenOnly `equal` ClassName "is-narrow-widescreen-only"
      responsiveNarrow FullHD `equal` ClassName "is-narrow-fullhd"
