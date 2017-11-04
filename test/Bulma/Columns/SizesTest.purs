module Bulma.Columns.SizesTest where

import Prelude

import Bulma.Columns.Sizes (PercentSizes(..), Sizes(..), narrow, offset, percentOffset, percentSize, responsiveNarrow, responsivePercentSize, size)
import Bulma.Core (BreakPoints(..), ClazzName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteSizes :: forall e. Free (TestF e) Unit
testSuiteSizes =
  suite "Sizes" do
    test "sizes" do
      size Size2 `equal` ClazzName "is-2"
      size Size3 `equal` ClazzName "is-3"
      size Size4 `equal` ClazzName "is-4"
      size Size5 `equal` ClazzName "is-5"
      size Size6 `equal` ClazzName "is-6"
      size Size7 `equal` ClazzName "is-7"
      size Size8 `equal` ClazzName "is-8"
      size Size9 `equal` ClazzName "is-9"
      size Size10 `equal` ClazzName "is-10"
      size Size11 `equal` ClazzName "is-11"
    test "percent sizes" do
      percentSize ThreeQuarters `equal` ClazzName "is-three-quarters"
      percentSize TwoThirds `equal` ClazzName "is-two-thirds"
      percentSize OneThird `equal` ClazzName "is-one-third"
      percentSize OneQuarter `equal` ClazzName "is-one-quarter"
      percentSize FourFifths `equal` ClazzName "is-four-fifths"
      percentSize ThreeFifths `equal` ClazzName "is-three-fifths"
      percentSize TwoFifths `equal` ClazzName "is-two-fifths"
      percentSize OneFifth `equal` ClazzName "is-one-fifth"
    test "percent sizes mobile" do
      responsivePercentSize ThreeQuarters Mobile `equal` ClazzName "is-three-quarters-mobile"
      responsivePercentSize TwoThirds Mobile `equal` ClazzName "is-two-thirds-mobile"
      responsivePercentSize OneThird Mobile `equal` ClazzName "is-one-third-mobile"
      responsivePercentSize OneQuarter Mobile `equal` ClazzName "is-one-quarter-mobile"
      responsivePercentSize FourFifths Mobile `equal` ClazzName "is-four-fifths-mobile"
      responsivePercentSize ThreeFifths Mobile `equal` ClazzName "is-three-fifths-mobile"
      responsivePercentSize TwoFifths Mobile `equal` ClazzName "is-two-fifths-mobile"
      responsivePercentSize OneFifth Mobile `equal` ClazzName "is-one-fifth-mobile"
    test "percent sizes desktop" do
      responsivePercentSize ThreeQuarters Desktop `equal` ClazzName "is-three-quarters-desktop"
      responsivePercentSize TwoThirds Desktop `equal` ClazzName "is-two-thirds-desktop"
      responsivePercentSize OneThird Desktop `equal` ClazzName "is-one-third-desktop"
      responsivePercentSize OneQuarter Desktop `equal` ClazzName "is-one-quarter-desktop"
      responsivePercentSize FourFifths Desktop `equal` ClazzName "is-four-fifths-desktop"
      responsivePercentSize ThreeFifths Desktop `equal` ClazzName "is-three-fifths-desktop"
      responsivePercentSize TwoFifths Desktop `equal` ClazzName "is-two-fifths-desktop"
      responsivePercentSize OneFifth Desktop `equal` ClazzName "is-one-fifth-desktop"
    test "percent sizes tablet" do
      responsivePercentSize ThreeQuarters Tablet `equal` ClazzName "is-three-quarters-tablet"
      responsivePercentSize TwoThirds Tablet `equal` ClazzName "is-two-thirds-tablet"
      responsivePercentSize OneThird Tablet `equal` ClazzName "is-one-third-tablet"
      responsivePercentSize OneQuarter Tablet `equal` ClazzName "is-one-quarter-tablet"
      responsivePercentSize FourFifths Tablet `equal` ClazzName "is-four-fifths-tablet"
      responsivePercentSize ThreeFifths Tablet `equal` ClazzName "is-three-fifths-tablet"
      responsivePercentSize TwoFifths Tablet `equal` ClazzName "is-two-fifths-tablet"
      responsivePercentSize OneFifth Tablet `equal` ClazzName "is-one-fifth-tablet"
    test "offset" do
      offset Size2 `equal` ClazzName "is-offset-2"
      offset Size3 `equal` ClazzName "is-offset-3"
      offset Size4 `equal` ClazzName "is-offset-4"
      offset Size5 `equal` ClazzName "is-offset-5"
      offset Size6 `equal` ClazzName "is-offset-6"
      offset Size7 `equal` ClazzName "is-offset-7"
      offset Size8 `equal` ClazzName "is-offset-8"
      offset Size9 `equal` ClazzName "is-offset-9"
      offset Size10 `equal` ClazzName "is-offset-10"
      offset Size11 `equal` ClazzName "is-offset-11"
    test "percent offset" do
      percentOffset ThreeQuarters `equal` ClazzName "is-offset-three-quarters"
      percentOffset TwoThirds `equal` ClazzName "is-offset-two-thirds"
      percentOffset OneThird `equal` ClazzName "is-offset-one-third"
      percentOffset OneQuarter `equal` ClazzName "is-offset-one-quarter"
      percentOffset FourFifths `equal` ClazzName "is-offset-four-fifths"
      percentOffset ThreeFifths `equal` ClazzName "is-offset-three-fifths"
      percentOffset TwoFifths `equal` ClazzName "is-offset-two-fifths"
      percentOffset OneFifth `equal` ClazzName "is-offset-one-fifth"
    test "narrow" do
      narrow `equal` ClazzName "is-narrow"
    test "responsive narrow" do
      responsiveNarrow Mobile `equal` ClazzName "is-narrow-mobile"
      responsiveNarrow Tablet `equal` ClazzName "is-narrow-tablet"
      responsiveNarrow TabletOnly `equal` ClazzName "is-narrow-tablet-only"
      responsiveNarrow Touch `equal` ClazzName "is-narrow-touch"
      responsiveNarrow Desktop `equal` ClazzName "is-narrow-desktop"
      responsiveNarrow DesktopOnly `equal` ClazzName "is-narrow-desktop-only"
      responsiveNarrow Widescreen `equal` ClazzName "is-narrow-widescreen"
      responsiveNarrow WidescreenOnly `equal` ClazzName "is-narrow-widescreen-only"
      responsiveNarrow FullHD `equal` ClazzName "is-narrow-fullhd"
