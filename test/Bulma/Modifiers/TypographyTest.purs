module Bulma.Modifiers.TypographyTest where

import Prelude

import Bulma.Common (Breakpoint(..), ClassName(..), runClassName)
import Bulma.Common (Color(..)) as C
import Bulma.Modifiers.Typography (Alignment(..), Color(..), Size(..), Transformation(..), Weight(..), hasAlignment, hasAlignmentResponsive, hasColor, hasWeight, isSize, isSizeResponsive, isTransformed)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTypography :: Free TestF Unit
testSuiteTypography =
  suite "Typography" do
    test "sizes" do
      (runClassName $ isSize Size1) `equal` "is-size-1"
      (runClassName $ isSize Size2) `equal` "is-size-2"
      (runClassName $ isSize Size3) `equal` "is-size-3"
      (runClassName $ isSize Size4) `equal` "is-size-4"
      (runClassName $ isSize Size5) `equal` "is-size-5"
      (runClassName $ isSize Size6) `equal` "is-size-6"
      (runClassName $ isSize Size7) `equal` "is-size-7"
    test "responsive size 1" do
      (runClassName $ isSizeResponsive Size1 Mobile) `equal` "is-size-1-mobile"
      (runClassName $ isSizeResponsive Size1 Tablet) `equal` "is-size-1-tablet"
      (runClassName $ isSizeResponsive Size1 Touch) `equal` "is-size-1-touch"
      (runClassName $ isSizeResponsive Size1 Desktop) `equal` "is-size-1-desktop"
      (runClassName $ isSizeResponsive Size1 Widescreen) `equal` "is-size-1-widescreen"
      (runClassName $ isSizeResponsive Size1 FullHD) `equal` "is-size-1-fullhd"
    test "responsive size 2" do
      (runClassName $ isSizeResponsive Size2 Mobile) `equal` "is-size-2-mobile"
      (runClassName $ isSizeResponsive Size2 Tablet) `equal` "is-size-2-tablet"
      (runClassName $ isSizeResponsive Size2 Touch) `equal` "is-size-2-touch"
      (runClassName $ isSizeResponsive Size2 Desktop) `equal` "is-size-2-desktop"
      (runClassName $ isSizeResponsive Size2 Widescreen) `equal` "is-size-2-widescreen"
      (runClassName $ isSizeResponsive Size2 FullHD) `equal` "is-size-2-fullhd"
    test "responsive size 3" do
      (runClassName $ isSizeResponsive Size3 Mobile) `equal` "is-size-3-mobile"
      (runClassName $ isSizeResponsive Size3 Tablet) `equal` "is-size-3-tablet"
      (runClassName $ isSizeResponsive Size3 Touch) `equal` "is-size-3-touch"
      (runClassName $ isSizeResponsive Size3 Desktop) `equal` "is-size-3-desktop"
      (runClassName $ isSizeResponsive Size3 Widescreen) `equal` "is-size-3-widescreen"
      (runClassName $ isSizeResponsive Size3 FullHD) `equal` "is-size-3-fullhd"
    test "responsive size 4" do
      isSizeResponsive Size4 Mobile `equal` ClassName "is-size-4-mobile"
      isSizeResponsive Size4 Tablet `equal` ClassName "is-size-4-tablet"
      isSizeResponsive Size4 Touch `equal` ClassName "is-size-4-touch"
      isSizeResponsive Size4 Desktop `equal` ClassName "is-size-4-desktop"
      isSizeResponsive Size4 Widescreen `equal` ClassName "is-size-4-widescreen"
      isSizeResponsive Size4 FullHD `equal` ClassName "is-size-4-fullhd"
    test "responsive size 5" do
      isSizeResponsive Size5 Mobile `equal` ClassName "is-size-5-mobile"
      isSizeResponsive Size5 Tablet `equal` ClassName "is-size-5-tablet"
      isSizeResponsive Size5 Touch `equal` ClassName "is-size-5-touch"
      isSizeResponsive Size5 Desktop `equal` ClassName "is-size-5-desktop"
      isSizeResponsive Size5 Widescreen `equal` ClassName "is-size-5-widescreen"
      isSizeResponsive Size5 FullHD `equal` ClassName "is-size-5-fullhd"
    test "responsive size 6" do
      isSizeResponsive Size6 Mobile `equal` ClassName "is-size-6-mobile"
      isSizeResponsive Size6 Tablet `equal` ClassName "is-size-6-tablet"
      isSizeResponsive Size6 Touch `equal` ClassName "is-size-6-touch"
      isSizeResponsive Size6 Desktop `equal` ClassName "is-size-6-desktop"
      isSizeResponsive Size6 Widescreen `equal` ClassName "is-size-6-widescreen"
      isSizeResponsive Size6 FullHD `equal` ClassName "is-size-6-fullhd"
    test "responsive size 7" do
      isSizeResponsive Size7 Mobile `equal` ClassName "is-size-7-mobile"
      isSizeResponsive Size7 Tablet `equal` ClassName "is-size-7-tablet"
      isSizeResponsive Size7 Touch `equal` ClassName "is-size-7-touch"
      isSizeResponsive Size7 Desktop `equal` ClassName "is-size-7-desktop"
      isSizeResponsive Size7 Widescreen `equal` ClassName "is-size-7-widescreen"
      isSizeResponsive Size7 FullHD `equal` ClassName "is-size-7-fullhd"
    test "responsive size isClass not supported by some breakpoints" do
      isSizeResponsive Size1 DesktopOnly `equal`
        ClassName "is-size-1-desktop-only-IS-NOT-SUPPORTED-HERE"
      isSizeResponsive Size1 WidescreenOnly `equal`
        ClassName "is-size-1-widescreen-only-IS-NOT-SUPPORTED-HERE"
      isSizeResponsive Size1 TabletOnly `equal`
        ClassName "is-size-1-tablet-only-IS-NOT-SUPPORTED-HERE"
    test "color" do
      hasColor White `equal` ClassName "has-text-white"
      hasColor Black `equal` ClassName "has-text-black"
      hasColor Light `equal` ClassName "has-text-light"
      hasColor Dark `equal` ClassName "has-text-dark"
      hasColor (CommonColor C.Primary) `equal` ClassName "has-text-primary"
      hasColor (CommonColor C.Info) `equal` ClassName "has-text-info"
      hasColor (CommonColor C.Success) `equal` ClassName "has-text-success"
      hasColor (CommonColor C.Warning) `equal` ClassName "has-text-warning"
      hasColor (CommonColor C.Danger) `equal` ClassName "has-text-danger"
      hasColor (CommonColor C.Link) `equal` ClassName "has-text-link-IS-NOT-SUPPORTED-HERE"
      hasColor BlackBis `equal` ClassName "has-text-black-bis"
      hasColor BlackTer `equal` ClassName "has-text-black-ter"
      hasColor GreyDarker `equal` ClassName "has-text-grey-darker"
      hasColor GreyDark `equal` ClassName "has-text-grey-dark"
      hasColor Grey `equal` ClassName "has-text-grey"
      hasColor GreyLight `equal` ClassName "has-text-grey-light"
      hasColor GreyLighter `equal` ClassName "has-text-grey-lighter"
      hasColor WhiteTer `equal` ClassName "has-text-white-ter"
      hasColor WhiteBis `equal` ClassName "has-text-white-bis"
    test "alignment" do
      hasAlignment Centered `equal` ClassName "has-text-centered"
      hasAlignment Justified `equal` ClassName "has-text-justified"
      hasAlignment Left `equal` ClassName "has-text-left"
      hasAlignment Right `equal` ClassName "has-text-right"
    test "responsive alignment centered" do
      hasAlignmentResponsive Centered Mobile `equal` ClassName "has-text-centered-mobile"
      hasAlignmentResponsive Centered Tablet `equal` ClassName "has-text-centered-tablet"
      hasAlignmentResponsive Centered TabletOnly `equal` ClassName "has-text-centered-tablet-only"
      hasAlignmentResponsive Centered Touch `equal` ClassName "has-text-centered-touch"
      hasAlignmentResponsive Centered Desktop `equal` ClassName "has-text-centered-desktop"
      hasAlignmentResponsive Centered DesktopOnly `equal` ClassName "has-text-centered-desktop-only"
      hasAlignmentResponsive Centered Widescreen `equal` ClassName "has-text-centered-widescreen"
      hasAlignmentResponsive Centered WidescreenOnly `equal` ClassName "has-text-centered-widescreen-only"
      hasAlignmentResponsive Centered FullHD `equal` ClassName "has-text-centered-fullhd"
    test "responsive alignment justified" do
      hasAlignmentResponsive Justified Mobile `equal` ClassName "has-text-justified-mobile"
      hasAlignmentResponsive Justified Tablet `equal` ClassName "has-text-justified-tablet"
      hasAlignmentResponsive Justified TabletOnly `equal` ClassName "has-text-justified-tablet-only"
      hasAlignmentResponsive Justified Touch `equal` ClassName "has-text-justified-touch"
      hasAlignmentResponsive Justified Desktop `equal` ClassName "has-text-justified-desktop"
      hasAlignmentResponsive Justified DesktopOnly `equal` ClassName "has-text-justified-desktop-only"
      hasAlignmentResponsive Justified Widescreen `equal` ClassName "has-text-justified-widescreen"
      hasAlignmentResponsive Justified WidescreenOnly `equal` ClassName "has-text-justified-widescreen-only"
      hasAlignmentResponsive Justified FullHD `equal` ClassName "has-text-justified-fullhd"
    test "responsive alignment left" do
      hasAlignmentResponsive Left Mobile `equal` ClassName "has-text-left-mobile"
      hasAlignmentResponsive Left Tablet `equal` ClassName "has-text-left-tablet"
      hasAlignmentResponsive Left TabletOnly `equal` ClassName "has-text-left-tablet-only"
      hasAlignmentResponsive Left Touch `equal` ClassName "has-text-left-touch"
      hasAlignmentResponsive Left Desktop `equal` ClassName "has-text-left-desktop"
      hasAlignmentResponsive Left DesktopOnly `equal` ClassName "has-text-left-desktop-only"
      hasAlignmentResponsive Left Widescreen `equal` ClassName "has-text-left-widescreen"
      hasAlignmentResponsive Left WidescreenOnly `equal` ClassName "has-text-left-widescreen-only"
      hasAlignmentResponsive Left FullHD `equal` ClassName "has-text-left-fullhd"
    test "responsive alignment right" do
      hasAlignmentResponsive Right Mobile `equal` ClassName "has-text-right-mobile"
      hasAlignmentResponsive Right Tablet `equal` ClassName "has-text-right-tablet"
      hasAlignmentResponsive Right TabletOnly `equal` ClassName "has-text-right-tablet-only"
      hasAlignmentResponsive Right Touch `equal` ClassName "has-text-right-touch"
      hasAlignmentResponsive Right Desktop `equal` ClassName "has-text-right-desktop"
      hasAlignmentResponsive Right DesktopOnly `equal` ClassName "has-text-right-desktop-only"
      hasAlignmentResponsive Right Widescreen `equal` ClassName "has-text-right-widescreen"
      hasAlignmentResponsive Right WidescreenOnly `equal` ClassName "has-text-right-widescreen-only"
      hasAlignmentResponsive Right FullHD `equal` ClassName "has-text-right-fullhd"
    test "isTransformed" do
      isTransformed Capitalized `equal` ClassName "is-capitalized"
      isTransformed Lowercase `equal` ClassName "is-lowercase"
      isTransformed Uppercase `equal` ClassName "is-uppercase"
    test "weight" do
      hasWeight LightWeight `equal` ClassName "has-text-weight-light"
      hasWeight Normal `equal` ClassName "has-text-weight-normal"
      hasWeight Semibold `equal` ClassName "has-text-weight-semibold"
      hasWeight Bold `equal` ClassName "has-text-weight-bold"
