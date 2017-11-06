module Bulma.Modifiers.ResponsiveTest where

import Prelude

import Bulma.Core (BreakPoints(..), ClassName(..))
import Bulma.Modifiers.Responsive (breakpoint, hide, showBlock, showFlex, showInline, showInlineBlock, showInlineFlex)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteResponsive :: forall e. Free (TestF e) Unit
testSuiteResponsive =
  suite "Responsive" do
    test "show flex" do
      showFlex Mobile `equal` ClassName "is-flex-mobile"
      showFlex Tablet `equal` ClassName "is-flex-tablet"
      showFlex TabletOnly `equal` ClassName "is-flex-tablet-only"
      showFlex Touch `equal` ClassName "is-flex-touch"
      showFlex Desktop `equal` ClassName "is-flex-desktop"
      showFlex DesktopOnly `equal` ClassName "is-flex-desktop-only"
      showFlex Widescreen `equal` ClassName "is-flex-widescreen"
      showFlex WidescreenOnly `equal` ClassName "is-flex-widescreen-only"
      showFlex FullHD `equal` ClassName "is-flex-fullhd"
    test "show block" do
      showBlock Mobile `equal` ClassName "is-block-mobile"
      showBlock Tablet `equal` ClassName "is-block-tablet"
      showBlock TabletOnly `equal` ClassName "is-block-tablet-only"
      showBlock Touch `equal` ClassName "is-block-touch"
      showBlock Desktop `equal` ClassName "is-block-desktop"
      showBlock DesktopOnly `equal` ClassName "is-block-desktop-only"
      showBlock Widescreen `equal` ClassName "is-block-widescreen"
      showBlock WidescreenOnly `equal` ClassName "is-block-widescreen-only"
      showBlock FullHD `equal` ClassName "is-block-fullhd"
    test "show inline" do
      showInline Mobile `equal` ClassName "is-inline-mobile"
      showInline Tablet `equal` ClassName "is-inline-tablet"
      showInline TabletOnly `equal` ClassName "is-inline-tablet-only"
      showInline Touch `equal` ClassName "is-inline-touch"
      showInline Desktop `equal` ClassName "is-inline-desktop"
      showInline DesktopOnly `equal` ClassName "is-inline-desktop-only"
      showInline Widescreen `equal` ClassName "is-inline-widescreen"
      showInline WidescreenOnly `equal` ClassName "is-inline-widescreen-only"
      showInline FullHD `equal` ClassName "is-inline-fullhd"
    test "show inlineBlock" do
      showInlineBlock Mobile `equal` ClassName "is-inline-block-mobile"
      showInlineBlock Tablet `equal` ClassName "is-inline-block-tablet"
      showInlineBlock TabletOnly `equal` ClassName "is-inline-block-tablet-only"
      showInlineBlock Touch `equal` ClassName "is-inline-block-touch"
      showInlineBlock Desktop `equal` ClassName "is-inline-block-desktop"
      showInlineBlock DesktopOnly `equal` ClassName "is-inline-block-desktop-only"
      showInlineBlock Widescreen `equal` ClassName "is-inline-block-widescreen"
      showInlineBlock WidescreenOnly `equal` ClassName "is-inline-block-widescreen-only"
      showInlineBlock FullHD `equal` ClassName "is-inline-block-fullhd"
    test "show inlineFlex" do
      showInlineFlex Mobile `equal` ClassName "is-inline-flex-mobile"
      showInlineFlex Tablet `equal` ClassName "is-inline-flex-tablet"
      showInlineFlex TabletOnly `equal` ClassName "is-inline-flex-tablet-only"
      showInlineFlex Touch `equal` ClassName "is-inline-flex-touch"
      showInlineFlex Desktop `equal` ClassName "is-inline-flex-desktop"
      showInlineFlex DesktopOnly `equal` ClassName "is-inline-flex-desktop-only"
      showInlineFlex Widescreen `equal` ClassName "is-inline-flex-widescreen"
      showInlineFlex WidescreenOnly `equal` ClassName "is-inline-flex-widescreen-only"
      showInlineFlex FullHD `equal` ClassName "is-inline-flex-fullhd"
    test "hide" do
      hide Mobile `equal` ClassName "is-hidden-mobile"
      hide Tablet `equal` ClassName "is-hidden-tablet"
      hide TabletOnly `equal` ClassName "is-hidden-tablet-only"
      hide Touch `equal` ClassName "is-hidden-touch"
      hide Desktop `equal` ClassName "is-hidden-desktop"
      hide DesktopOnly `equal` ClassName "is-hidden-desktop-only"
      hide Widescreen `equal` ClassName "is-hidden-widescreen"
      hide WidescreenOnly `equal` ClassName "is-hidden-widescreen-only"
      hide FullHD `equal` ClassName "is-hidden-fullhd"
    test "breakpoint" do
      breakpoint Mobile `equal` ClassName "is-mobile"
      breakpoint Tablet `equal` ClassName "is-tablet"
      breakpoint TabletOnly `equal` ClassName "is-tablet-only"
      breakpoint Touch `equal` ClassName "is-touch"
      breakpoint Desktop `equal` ClassName "is-desktop"
      breakpoint DesktopOnly `equal` ClassName "is-desktop-only"
      breakpoint Widescreen `equal` ClassName "is-widescreen"
      breakpoint WidescreenOnly `equal` ClassName "is-widescreen-only"
      breakpoint FullHD `equal` ClassName "is-fullhd"
