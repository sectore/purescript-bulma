module Bulma.Modifiers.ResponsiveTest where

import Prelude

import Bulma.Modifiers.Responsive (hide, showBlock, showFlex, showInline, showInlineBlock, showInlineFlex)
import Bulma.Modifiers.Util (BreakPoints(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteResponsive :: forall e. Free (TestF e) Unit
testSuiteResponsive =
  suite "Responsive" do
    test "show flex" do
      showFlex Mobile `equal` "is-flex-mobile"
      showFlex Tablet `equal` "is-flex-tablet"
      showFlex TabletOnly `equal` "is-flex-tablet-only"
      showFlex Touch `equal` "is-flex-touch"
      showFlex Desktop `equal` "is-flex-desktop"
      showFlex DesktopOnly `equal` "is-flex-desktop-only"
      showFlex Widescreen `equal` "is-flex-widescreen"
      showFlex WidescreenOnly `equal` "is-flex-widescreen-only"
      showFlex FullHD `equal` "is-flex-fullhd"
    test "show block" do
      showBlock Mobile `equal` "is-block-mobile"
      showBlock Tablet `equal` "is-block-tablet"
      showBlock TabletOnly `equal` "is-block-tablet-only"
      showBlock Touch `equal` "is-block-touch"
      showBlock Desktop `equal` "is-block-desktop"
      showBlock DesktopOnly `equal` "is-block-desktop-only"
      showBlock Widescreen `equal` "is-block-widescreen"
      showBlock WidescreenOnly `equal` "is-block-widescreen-only"
      showBlock FullHD `equal` "is-block-fullhd"
    test "show inline" do
      showInline Mobile `equal` "is-inline-mobile"
      showInline Tablet `equal` "is-inline-tablet"
      showInline TabletOnly `equal` "is-inline-tablet-only"
      showInline Touch `equal` "is-inline-touch"
      showInline Desktop `equal` "is-inline-desktop"
      showInline DesktopOnly `equal` "is-inline-desktop-only"
      showInline Widescreen `equal` "is-inline-widescreen"
      showInline WidescreenOnly `equal` "is-inline-widescreen-only"
      showInline FullHD `equal` "is-inline-fullhd"
    test "show inlineBlock" do
      showInlineBlock Mobile `equal` "is-inline-block-mobile"
      showInlineBlock Tablet `equal` "is-inline-block-tablet"
      showInlineBlock TabletOnly `equal` "is-inline-block-tablet-only"
      showInlineBlock Touch `equal` "is-inline-block-touch"
      showInlineBlock Desktop `equal` "is-inline-block-desktop"
      showInlineBlock DesktopOnly `equal` "is-inline-block-desktop-only"
      showInlineBlock Widescreen `equal` "is-inline-block-widescreen"
      showInlineBlock WidescreenOnly `equal` "is-inline-block-widescreen-only"
      showInlineBlock FullHD `equal` "is-inline-block-fullhd"
    test "show inlineFlex" do
      showInlineFlex Mobile `equal` "is-inline-flex-mobile"
      showInlineFlex Tablet `equal` "is-inline-flex-tablet"
      showInlineFlex TabletOnly `equal` "is-inline-flex-tablet-only"
      showInlineFlex Touch `equal` "is-inline-flex-touch"
      showInlineFlex Desktop `equal` "is-inline-flex-desktop"
      showInlineFlex DesktopOnly `equal` "is-inline-flex-desktop-only"
      showInlineFlex Widescreen `equal` "is-inline-flex-widescreen"
      showInlineFlex WidescreenOnly `equal` "is-inline-flex-widescreen-only"
      showInlineFlex FullHD `equal` "is-inline-flex-fullhd"
    test "hide" do
      hide Mobile `equal` "is-hidden-mobile"
      hide Tablet `equal` "is-hidden-tablet"
      hide TabletOnly `equal` "is-hidden-tablet-only"
      hide Touch `equal` "is-hidden-touch"
      hide Desktop `equal` "is-hidden-desktop"
      hide DesktopOnly `equal` "is-hidden-desktop-only"
      hide Widescreen `equal` "is-hidden-widescreen"
      hide WidescreenOnly `equal` "is-hidden-widescreen-only"
      hide FullHD `equal` "is-hidden-fullhd"
