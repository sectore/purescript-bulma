module Bulma.Columns.SizesTest where

import Prelude

import Bulma.Columns.Size (PercentSize(..), isNarrow, isOffset, isPercentOffset, isPercentSize, isNarrowResponsive, isPercentSizeResponsive, isSize)
import Bulma.Common (Breakpoint(..), ClassName(..), Is(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteSize :: forall e. Free (TestF e) Unit
testSuiteSize =
  suite "Size" do
    test "sizes" do
      isSize Is1 `equal` ClassName "is-1-IS-NOT-SUPPORTED-HERE"
      isSize Is2 `equal` ClassName "is-2"
      isSize Is3 `equal` ClassName "is-3"
      isSize Is4 `equal` ClassName "is-4"
      isSize Is5 `equal` ClassName "is-5"
      isSize Is6 `equal` ClassName "is-6"
      isSize Is7 `equal` ClassName "is-7"
      isSize Is8 `equal` ClassName "is-8"
      isSize Is9 `equal` ClassName "is-9"
      isSize Is10 `equal` ClassName "is-10"
      isSize Is11 `equal` ClassName "is-11"
      isSize Is12 `equal` ClassName "is-12-IS-NOT-SUPPORTED-HERE"
    test "percent sizes" do
      isPercentSize ThreeQuarters `equal` ClassName "is-three-quarters"
      isPercentSize TwoThirds `equal` ClassName "is-two-thirds"
      isPercentSize OneThird `equal` ClassName "is-one-third"
      isPercentSize OneQuarter `equal` ClassName "is-one-quarter"
      isPercentSize FourFifths `equal` ClassName "is-four-fifths"
      isPercentSize ThreeFifths `equal` ClassName "is-three-fifths"
      isPercentSize TwoFifths `equal` ClassName "is-two-fifths"
      isPercentSize OneFifth `equal` ClassName "is-one-fifth"
    test "percent sizes mobile" do
      isPercentSizeResponsive ThreeQuarters Mobile `equal` ClassName "is-three-quarters-mobile"
      isPercentSizeResponsive TwoThirds Mobile `equal` ClassName "is-two-thirds-mobile"
      isPercentSizeResponsive OneThird Mobile `equal` ClassName "is-one-third-mobile"
      isPercentSizeResponsive OneQuarter Mobile `equal` ClassName "is-one-quarter-mobile"
      isPercentSizeResponsive FourFifths Mobile `equal` ClassName "is-four-fifths-mobile"
      isPercentSizeResponsive ThreeFifths Mobile `equal` ClassName "is-three-fifths-mobile"
      isPercentSizeResponsive TwoFifths Mobile `equal` ClassName "is-two-fifths-mobile"
      isPercentSizeResponsive OneFifth Mobile `equal` ClassName "is-one-fifth-mobile"
    test "percent sizes desktop" do
      isPercentSizeResponsive ThreeQuarters Desktop `equal` ClassName "is-three-quarters-desktop"
      isPercentSizeResponsive TwoThirds Desktop `equal` ClassName "is-two-thirds-desktop"
      isPercentSizeResponsive OneThird Desktop `equal` ClassName "is-one-third-desktop"
      isPercentSizeResponsive OneQuarter Desktop `equal` ClassName "is-one-quarter-desktop"
      isPercentSizeResponsive FourFifths Desktop `equal` ClassName "is-four-fifths-desktop"
      isPercentSizeResponsive ThreeFifths Desktop `equal` ClassName "is-three-fifths-desktop"
      isPercentSizeResponsive TwoFifths Desktop `equal` ClassName "is-two-fifths-desktop"
      isPercentSizeResponsive OneFifth Desktop `equal` ClassName "is-one-fifth-desktop"
    test "percent sizes tablet" do
      isPercentSizeResponsive ThreeQuarters Tablet `equal` ClassName "is-three-quarters-tablet"
      isPercentSizeResponsive TwoThirds Tablet `equal` ClassName "is-two-thirds-tablet"
      isPercentSizeResponsive OneThird Tablet `equal` ClassName "is-one-third-tablet"
      isPercentSizeResponsive OneQuarter Tablet `equal` ClassName "is-one-quarter-tablet"
      isPercentSizeResponsive FourFifths Tablet `equal` ClassName "is-four-fifths-tablet"
      isPercentSizeResponsive ThreeFifths Tablet `equal` ClassName "is-three-fifths-tablet"
      isPercentSizeResponsive TwoFifths Tablet `equal` ClassName "is-two-fifths-tablet"
      isPercentSizeResponsive OneFifth Tablet `equal` ClassName "is-one-fifth-tablet"
    test "offset" do
      isOffset Is2 `equal` ClassName "is-offset-2"
      isOffset Is3 `equal` ClassName "is-offset-3"
      isOffset Is4 `equal` ClassName "is-offset-4"
      isOffset Is5 `equal` ClassName "is-offset-5"
      isOffset Is6 `equal` ClassName "is-offset-6"
      isOffset Is7 `equal` ClassName "is-offset-7"
      isOffset Is8 `equal` ClassName "is-offset-8"
      isOffset Is9 `equal` ClassName "is-offset-9"
      isOffset Is10 `equal` ClassName "is-offset-10"
      isOffset Is11 `equal` ClassName "is-offset-11"
    test "percent offset" do
      isPercentOffset ThreeQuarters `equal` ClassName "is-offset-three-quarters"
      isPercentOffset TwoThirds `equal` ClassName "is-offset-two-thirds"
      isPercentOffset OneThird `equal` ClassName "is-offset-one-third"
      isPercentOffset OneQuarter `equal` ClassName "is-offset-one-quarter"
      isPercentOffset FourFifths `equal` ClassName "is-offset-four-fifths"
      isPercentOffset ThreeFifths `equal` ClassName "is-offset-three-fifths"
      isPercentOffset TwoFifths `equal` ClassName "is-offset-two-fifths"
      isPercentOffset OneFifth `equal` ClassName "is-offset-one-fifth"
    test "narrow" do
      isNarrow `equal` ClassName "is-narrow"
    test "responsive narrow" do
      isNarrowResponsive Mobile `equal` ClassName "is-narrow-mobile"
      isNarrowResponsive Tablet `equal` ClassName "is-narrow-tablet"
      isNarrowResponsive TabletOnly `equal` ClassName "is-narrow-tablet-only"
      isNarrowResponsive Touch `equal` ClassName "is-narrow-touch"
      isNarrowResponsive Desktop `equal` ClassName "is-narrow-desktop"
      isNarrowResponsive DesktopOnly `equal` ClassName "is-narrow-desktop-only"
      isNarrowResponsive Widescreen `equal` ClassName "is-narrow-widescreen"
      isNarrowResponsive WidescreenOnly `equal` ClassName "is-narrow-widescreen-only"
      isNarrowResponsive FullHD `equal` ClassName "is-narrow-fullhd"
