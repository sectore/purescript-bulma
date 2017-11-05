module Bulma.Modifiers.TypographyTest where

import Prelude

import Bulma.Core (BreakPoints(..), ClazzName(..), runClazzName)
import Bulma.Modifiers.Typography (Alignment(..), Colors(..), Sizes(..), Transformation(..), Weight(..), alignment, color, responsiveSize, responsiveAlignment, size, transformation, weight)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTypography :: forall e. Free (TestF e) Unit
testSuiteTypography =
  suite "Typography" do
    test "sizes" do
      (runClazzName $ size Size1) `equal` "is-size-1"
      (runClazzName $ size Size2) `equal` "is-size-2"
      (runClazzName $ size Size3) `equal` "is-size-3"
      (runClazzName $ size Size4) `equal` "is-size-4"
      (runClazzName $ size Size5) `equal` "is-size-5"
      (runClazzName $ size Size6) `equal` "is-size-6"
      (runClazzName $ size Size7) `equal` "is-size-7"
    test "responsive size 1" do
      (runClazzName $ responsiveSize Size1 Mobile) `equal` "is-size-1-mobile"
      (runClazzName $ responsiveSize Size1 Tablet) `equal` "is-size-1-tablet"
      (runClazzName $ responsiveSize Size1 Touch) `equal` "is-size-1-touch"
      (runClazzName $ responsiveSize Size1 Desktop) `equal` "is-size-1-desktop"
      (runClazzName $ responsiveSize Size1 Widescreen) `equal` "is-size-1-widescreen"
      (runClazzName $ responsiveSize Size1 FullHD) `equal` "is-size-1-fullhd"
    test "responsive size 2" do
      (runClazzName $ responsiveSize Size2 Mobile) `equal` "is-size-2-mobile"
      (runClazzName $ responsiveSize Size2 Tablet) `equal` "is-size-2-tablet"
      (runClazzName $ responsiveSize Size2 Touch) `equal` "is-size-2-touch"
      (runClazzName $ responsiveSize Size2 Desktop) `equal` "is-size-2-desktop"
      (runClazzName $ responsiveSize Size2 Widescreen) `equal` "is-size-2-widescreen"
      (runClazzName $ responsiveSize Size2 FullHD) `equal` "is-size-2-fullhd"
    test "responsive size 3" do
      (runClazzName $ responsiveSize Size3 Mobile) `equal` "is-size-3-mobile"
      (runClazzName $ responsiveSize Size3 Tablet) `equal` "is-size-3-tablet"
      (runClazzName $ responsiveSize Size3 Touch) `equal` "is-size-3-touch"
      (runClazzName $ responsiveSize Size3 Desktop) `equal` "is-size-3-desktop"
      (runClazzName $ responsiveSize Size3 Widescreen) `equal` "is-size-3-widescreen"
      (runClazzName $ responsiveSize Size3 FullHD) `equal` "is-size-3-fullhd"
    test "responsive size 4" do
      responsiveSize Size4 Mobile `equal` ClazzName "is-size-4-mobile"
      responsiveSize Size4 Tablet `equal` ClazzName "is-size-4-tablet"
      responsiveSize Size4 Touch `equal` ClazzName "is-size-4-touch"
      responsiveSize Size4 Desktop `equal` ClazzName "is-size-4-desktop"
      responsiveSize Size4 Widescreen `equal` ClazzName "is-size-4-widescreen"
      responsiveSize Size4 FullHD `equal` ClazzName "is-size-4-fullhd"
    test "responsive size 5" do
      responsiveSize Size5 Mobile `equal` ClazzName "is-size-5-mobile"
      responsiveSize Size5 Tablet `equal` ClazzName "is-size-5-tablet"
      responsiveSize Size5 Touch `equal` ClazzName "is-size-5-touch"
      responsiveSize Size5 Desktop `equal` ClazzName "is-size-5-desktop"
      responsiveSize Size5 Widescreen `equal` ClazzName "is-size-5-widescreen"
      responsiveSize Size5 FullHD `equal` ClazzName "is-size-5-fullhd"
    test "responsive size 6" do
      responsiveSize Size6 Mobile `equal` ClazzName "is-size-6-mobile"
      responsiveSize Size6 Tablet `equal` ClazzName "is-size-6-tablet"
      responsiveSize Size6 Touch `equal` ClazzName "is-size-6-touch"
      responsiveSize Size6 Desktop `equal` ClazzName "is-size-6-desktop"
      responsiveSize Size6 Widescreen `equal` ClazzName "is-size-6-widescreen"
      responsiveSize Size6 FullHD `equal` ClazzName "is-size-6-fullhd"
    test "responsive size 7" do
      responsiveSize Size7 Mobile `equal` ClazzName "is-size-7-mobile"
      responsiveSize Size7 Tablet `equal` ClazzName "is-size-7-tablet"
      responsiveSize Size7 Touch `equal` ClazzName "is-size-7-touch"
      responsiveSize Size7 Desktop `equal` ClazzName "is-size-7-desktop"
      responsiveSize Size7 Widescreen `equal` ClazzName "is-size-7-widescreen"
      responsiveSize Size7 FullHD `equal` ClazzName "is-size-7-fullhd"
    test "responsive size is not supported by some breakpoints" do
      responsiveSize Size1 DesktopOnly `equal`
        ClazzName "is-size-1-desktop-only-IS-NOT-SUPPORTED-HERE"
      responsiveSize Size1 WidescreenOnly `equal`
        ClazzName "is-size-1-widescreen-only-IS-NOT-SUPPORTED-HERE"
      responsiveSize Size1 TabletOnly `equal`
        ClazzName "is-size-1-tablet-only-IS-NOT-SUPPORTED-HERE"
    test "color" do
      color White `equal` ClazzName "has-text-white"
      color Black `equal` ClazzName "has-text-black"
      color LightColor `equal` ClazzName "has-text-light"
      color Dark `equal` ClazzName "has-text-dark"
      color Primary `equal` ClazzName "has-text-primary"
      color Info `equal` ClazzName "has-text-info"
      color Success `equal` ClazzName "has-text-success"
      color Warning `equal` ClazzName "has-text-warning"
      color Danger `equal` ClazzName "has-text-danger"
      color BlackBis `equal` ClazzName "has-text-black-bis"
      color BlackTer `equal` ClazzName "has-text-black-ter"
      color GreyDarker `equal` ClazzName "has-text-grey-darker"
      color GreyDark `equal` ClazzName "has-text-grey-dark"
      color Grey `equal` ClazzName "has-text-grey"
      color GreyLight `equal` ClazzName "has-text-grey-light"
      color GreyLighter `equal` ClazzName "has-text-grey-lighter"
      color WhiteTer `equal` ClazzName "has-text-white-ter"
      color WhiteBis `equal` ClazzName "has-text-white-bis"
    test "alignment" do
      alignment Centered `equal` ClazzName "has-text-centered"
      alignment Justified `equal` ClazzName "has-text-justified"
      alignment Left `equal` ClazzName "has-text-left"
      alignment Right `equal` ClazzName "has-text-right"
    test "responsive alignment centered" do
      responsiveAlignment Centered Mobile `equal` ClazzName "has-text-centered-mobile"
      responsiveAlignment Centered Tablet `equal` ClazzName "has-text-centered-tablet"
      responsiveAlignment Centered TabletOnly `equal` ClazzName "has-text-centered-tablet-only"
      responsiveAlignment Centered Touch `equal` ClazzName "has-text-centered-touch"
      responsiveAlignment Centered Desktop `equal` ClazzName "has-text-centered-desktop"
      responsiveAlignment Centered DesktopOnly `equal` ClazzName "has-text-centered-desktop-only"
      responsiveAlignment Centered Widescreen `equal` ClazzName "has-text-centered-widescreen"
      responsiveAlignment Centered WidescreenOnly `equal` ClazzName "has-text-centered-widescreen-only"
      responsiveAlignment Centered FullHD `equal` ClazzName "has-text-centered-fullhd"
    test "responsive alignment justified" do
      responsiveAlignment Justified Mobile `equal` ClazzName "has-text-justified-mobile"
      responsiveAlignment Justified Tablet `equal` ClazzName "has-text-justified-tablet"
      responsiveAlignment Justified TabletOnly `equal` ClazzName "has-text-justified-tablet-only"
      responsiveAlignment Justified Touch `equal` ClazzName "has-text-justified-touch"
      responsiveAlignment Justified Desktop `equal` ClazzName "has-text-justified-desktop"
      responsiveAlignment Justified DesktopOnly `equal` ClazzName "has-text-justified-desktop-only"
      responsiveAlignment Justified Widescreen `equal` ClazzName "has-text-justified-widescreen"
      responsiveAlignment Justified WidescreenOnly `equal` ClazzName "has-text-justified-widescreen-only"
      responsiveAlignment Justified FullHD `equal` ClazzName "has-text-justified-fullhd"
    test "responsive alignment left" do
      responsiveAlignment Left Mobile `equal` ClazzName "has-text-left-mobile"
      responsiveAlignment Left Tablet `equal` ClazzName "has-text-left-tablet"
      responsiveAlignment Left TabletOnly `equal` ClazzName "has-text-left-tablet-only"
      responsiveAlignment Left Touch `equal` ClazzName "has-text-left-touch"
      responsiveAlignment Left Desktop `equal` ClazzName "has-text-left-desktop"
      responsiveAlignment Left DesktopOnly `equal` ClazzName "has-text-left-desktop-only"
      responsiveAlignment Left Widescreen `equal` ClazzName "has-text-left-widescreen"
      responsiveAlignment Left WidescreenOnly `equal` ClazzName "has-text-left-widescreen-only"
      responsiveAlignment Left FullHD `equal` ClazzName "has-text-left-fullhd"
    test "responsive alignment right" do
      responsiveAlignment Right Mobile `equal` ClazzName "has-text-right-mobile"
      responsiveAlignment Right Tablet `equal` ClazzName "has-text-right-tablet"
      responsiveAlignment Right TabletOnly `equal` ClazzName "has-text-right-tablet-only"
      responsiveAlignment Right Touch `equal` ClazzName "has-text-right-touch"
      responsiveAlignment Right Desktop `equal` ClazzName "has-text-right-desktop"
      responsiveAlignment Right DesktopOnly `equal` ClazzName "has-text-right-desktop-only"
      responsiveAlignment Right Widescreen `equal` ClazzName "has-text-right-widescreen"
      responsiveAlignment Right WidescreenOnly `equal` ClazzName "has-text-right-widescreen-only"
      responsiveAlignment Right FullHD `equal` ClazzName "has-text-right-fullhd"
    test "transformation" do
      transformation Capitalized `equal` ClazzName "is-capitalized"
      transformation Lowercase `equal` ClazzName "is-lowercase"
      transformation Uppercase `equal` ClazzName "is-uppercase"
    test "weight" do
      weight LightWeight `equal` ClazzName "has-text-weight-light"
      weight Normal `equal` ClazzName "has-text-weight-normal"
      weight Semibold `equal` ClazzName "has-text-weight-semibold"
      weight Bold `equal` ClazzName "has-text-weight-bold"
