module Bulma.Modifiers.ResponsiveTest where

import Prelude

import Bulma.Core (Breakpoint(..), ClassName(..))
import Bulma.Modifiers.Responsive (isBreakpoint, isHiddenResponsive, isBlockResponsive, isFlexResponsive, isInlineResponsive, isInlineBlockResponsive , isInlineFlexResponsive)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteResponsive :: forall e. Free (TestF e) Unit
testSuiteResponsive =
  suite "Responsive" do
    test "show flex" do
      isFlexResponsive Mobile `equal` ClassName "is-flex-mobile"
      isFlexResponsive Tablet `equal` ClassName "is-flex-tablet"
      isFlexResponsive TabletOnly `equal` ClassName "is-flex-tablet-only"
      isFlexResponsive Touch `equal` ClassName "is-flex-touch"
      isFlexResponsive Desktop `equal` ClassName "is-flex-desktop"
      isFlexResponsive DesktopOnly `equal` ClassName "is-flex-desktop-only"
      isFlexResponsive Widescreen `equal` ClassName "is-flex-widescreen"
      isFlexResponsive WidescreenOnly `equal` ClassName "is-flex-widescreen-only"
      isFlexResponsive FullHD `equal` ClassName "is-flex-fullhd"
    test "show block" do
      isBlockResponsive Mobile `equal` ClassName "is-block-mobile"
      isBlockResponsive Tablet `equal` ClassName "is-block-tablet"
      isBlockResponsive TabletOnly `equal` ClassName "is-block-tablet-only"
      isBlockResponsive Touch `equal` ClassName "is-block-touch"
      isBlockResponsive Desktop `equal` ClassName "is-block-desktop"
      isBlockResponsive DesktopOnly `equal` ClassName "is-block-desktop-only"
      isBlockResponsive Widescreen `equal` ClassName "is-block-widescreen"
      isBlockResponsive WidescreenOnly `equal` ClassName "is-block-widescreen-only"
      isBlockResponsive FullHD `equal` ClassName "is-block-fullhd"
    test "show inline" do
      isInlineResponsive Mobile `equal` ClassName "is-inline-mobile"
      isInlineResponsive Tablet `equal` ClassName "is-inline-tablet"
      isInlineResponsive TabletOnly `equal` ClassName "is-inline-tablet-only"
      isInlineResponsive Touch `equal` ClassName "is-inline-touch"
      isInlineResponsive Desktop `equal` ClassName "is-inline-desktop"
      isInlineResponsive DesktopOnly `equal` ClassName "is-inline-desktop-only"
      isInlineResponsive Widescreen `equal` ClassName "is-inline-widescreen"
      isInlineResponsive WidescreenOnly `equal` ClassName "is-inline-widescreen-only"
      isInlineResponsive FullHD `equal` ClassName "is-inline-fullhd"
    test "show inlineBlock" do
      isInlineBlockResponsive Mobile `equal` ClassName "is-inline-block-mobile"
      isInlineBlockResponsive Tablet `equal` ClassName "is-inline-block-tablet"
      isInlineBlockResponsive TabletOnly `equal` ClassName "is-inline-block-tablet-only"
      isInlineBlockResponsive Touch `equal` ClassName "is-inline-block-touch"
      isInlineBlockResponsive Desktop `equal` ClassName "is-inline-block-desktop"
      isInlineBlockResponsive DesktopOnly `equal` ClassName "is-inline-block-desktop-only"
      isInlineBlockResponsive Widescreen `equal` ClassName "is-inline-block-widescreen"
      isInlineBlockResponsive WidescreenOnly `equal` ClassName "is-inline-block-widescreen-only"
      isInlineBlockResponsive FullHD `equal` ClassName "is-inline-block-fullhd"
    test "show inlineFlex" do
      isInlineFlexResponsive Mobile `equal` ClassName "is-inline-flex-mobile"
      isInlineFlexResponsive Tablet `equal` ClassName "is-inline-flex-tablet"
      isInlineFlexResponsive TabletOnly `equal` ClassName "is-inline-flex-tablet-only"
      isInlineFlexResponsive Touch `equal` ClassName "is-inline-flex-touch"
      isInlineFlexResponsive Desktop `equal` ClassName "is-inline-flex-desktop"
      isInlineFlexResponsive DesktopOnly `equal` ClassName "is-inline-flex-desktop-only"
      isInlineFlexResponsive Widescreen `equal` ClassName "is-inline-flex-widescreen"
      isInlineFlexResponsive WidescreenOnly `equal` ClassName "is-inline-flex-widescreen-only"
      isInlineFlexResponsive FullHD `equal` ClassName "is-inline-flex-fullhd"
    test "hide" do
      isHiddenResponsive Mobile `equal` ClassName "is-hidden-mobile"
      isHiddenResponsive Tablet `equal` ClassName "is-hidden-tablet"
      isHiddenResponsive TabletOnly `equal` ClassName "is-hidden-tablet-only"
      isHiddenResponsive Touch `equal` ClassName "is-hidden-touch"
      isHiddenResponsive Desktop `equal` ClassName "is-hidden-desktop"
      isHiddenResponsive DesktopOnly `equal` ClassName "is-hidden-desktop-only"
      isHiddenResponsive Widescreen `equal` ClassName "is-hidden-widescreen"
      isHiddenResponsive WidescreenOnly `equal` ClassName "is-hidden-widescreen-only"
      isHiddenResponsive FullHD `equal` ClassName "is-hidden-fullhd"
    test "breakpoint" do
      isBreakpoint Mobile `equal` ClassName "is-mobile"
      isBreakpoint Tablet `equal` ClassName "is-tablet"
      isBreakpoint TabletOnly `equal` ClassName "is-tablet-only"
      isBreakpoint Touch `equal` ClassName "is-touch"
      isBreakpoint Desktop `equal` ClassName "is-desktop"
      isBreakpoint DesktopOnly `equal` ClassName "is-desktop-only"
      isBreakpoint Widescreen `equal` ClassName "is-widescreen"
      isBreakpoint WidescreenOnly `equal` ClassName "is-widescreen-only"
      isBreakpoint FullHD `equal` ClassName "is-fullhd"
