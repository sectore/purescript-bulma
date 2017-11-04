module Bulma.Modifiers.ResponsiveTest where

import Prelude

import Bulma.Core (BreakPoints(..), ClazzName(..))
import Bulma.Modifiers.Responsive (breakpoint, hide, showBlock, showFlex, showInline, showInlineBlock, showInlineFlex)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteResponsive :: forall e. Free (TestF e) Unit
testSuiteResponsive =
  suite "Responsive" do
    test "show flex" do
      showFlex Mobile `equal` ClazzName "is-flex-mobile"
      showFlex Tablet `equal` ClazzName "is-flex-tablet"
      showFlex TabletOnly `equal` ClazzName "is-flex-tablet-only"
      showFlex Touch `equal` ClazzName "is-flex-touch"
      showFlex Desktop `equal` ClazzName "is-flex-desktop"
      showFlex DesktopOnly `equal` ClazzName "is-flex-desktop-only"
      showFlex Widescreen `equal` ClazzName "is-flex-widescreen"
      showFlex WidescreenOnly `equal` ClazzName "is-flex-widescreen-only"
      showFlex FullHD `equal` ClazzName "is-flex-fullhd"
    test "show block" do
      showBlock Mobile `equal` ClazzName "is-block-mobile"
      showBlock Tablet `equal` ClazzName "is-block-tablet"
      showBlock TabletOnly `equal` ClazzName "is-block-tablet-only"
      showBlock Touch `equal` ClazzName "is-block-touch"
      showBlock Desktop `equal` ClazzName "is-block-desktop"
      showBlock DesktopOnly `equal` ClazzName "is-block-desktop-only"
      showBlock Widescreen `equal` ClazzName "is-block-widescreen"
      showBlock WidescreenOnly `equal` ClazzName "is-block-widescreen-only"
      showBlock FullHD `equal` ClazzName "is-block-fullhd"
    test "show inline" do
      showInline Mobile `equal` ClazzName "is-inline-mobile"
      showInline Tablet `equal` ClazzName "is-inline-tablet"
      showInline TabletOnly `equal` ClazzName "is-inline-tablet-only"
      showInline Touch `equal` ClazzName "is-inline-touch"
      showInline Desktop `equal` ClazzName "is-inline-desktop"
      showInline DesktopOnly `equal` ClazzName "is-inline-desktop-only"
      showInline Widescreen `equal` ClazzName "is-inline-widescreen"
      showInline WidescreenOnly `equal` ClazzName "is-inline-widescreen-only"
      showInline FullHD `equal` ClazzName "is-inline-fullhd"
    test "show inlineBlock" do
      showInlineBlock Mobile `equal` ClazzName "is-inline-block-mobile"
      showInlineBlock Tablet `equal` ClazzName "is-inline-block-tablet"
      showInlineBlock TabletOnly `equal` ClazzName "is-inline-block-tablet-only"
      showInlineBlock Touch `equal` ClazzName "is-inline-block-touch"
      showInlineBlock Desktop `equal` ClazzName "is-inline-block-desktop"
      showInlineBlock DesktopOnly `equal` ClazzName "is-inline-block-desktop-only"
      showInlineBlock Widescreen `equal` ClazzName "is-inline-block-widescreen"
      showInlineBlock WidescreenOnly `equal` ClazzName "is-inline-block-widescreen-only"
      showInlineBlock FullHD `equal` ClazzName "is-inline-block-fullhd"
    test "show inlineFlex" do
      showInlineFlex Mobile `equal` ClazzName "is-inline-flex-mobile"
      showInlineFlex Tablet `equal` ClazzName "is-inline-flex-tablet"
      showInlineFlex TabletOnly `equal` ClazzName "is-inline-flex-tablet-only"
      showInlineFlex Touch `equal` ClazzName "is-inline-flex-touch"
      showInlineFlex Desktop `equal` ClazzName "is-inline-flex-desktop"
      showInlineFlex DesktopOnly `equal` ClazzName "is-inline-flex-desktop-only"
      showInlineFlex Widescreen `equal` ClazzName "is-inline-flex-widescreen"
      showInlineFlex WidescreenOnly `equal` ClazzName "is-inline-flex-widescreen-only"
      showInlineFlex FullHD `equal` ClazzName "is-inline-flex-fullhd"
    test "hide" do
      hide Mobile `equal` ClazzName "is-hidden-mobile"
      hide Tablet `equal` ClazzName "is-hidden-tablet"
      hide TabletOnly `equal` ClazzName "is-hidden-tablet-only"
      hide Touch `equal` ClazzName "is-hidden-touch"
      hide Desktop `equal` ClazzName "is-hidden-desktop"
      hide DesktopOnly `equal` ClazzName "is-hidden-desktop-only"
      hide Widescreen `equal` ClazzName "is-hidden-widescreen"
      hide WidescreenOnly `equal` ClazzName "is-hidden-widescreen-only"
      hide FullHD `equal` ClazzName "is-hidden-fullhd"
    test "breakpoint" do
      breakpoint Mobile `equal` ClazzName "is-mobile"
      breakpoint Tablet `equal` ClazzName "is-tablet"
      breakpoint TabletOnly `equal` ClazzName "is-tablet-only"
      breakpoint Touch `equal` ClazzName "is-touch"
      breakpoint Desktop `equal` ClazzName "is-desktop"
      breakpoint DesktopOnly `equal` ClazzName "is-desktop-only"
      breakpoint Widescreen `equal` ClazzName "is-widescreen"
      breakpoint WidescreenOnly `equal` ClazzName "is-widescreen-only"
      breakpoint FullHD `equal` ClazzName "is-fullhd"
