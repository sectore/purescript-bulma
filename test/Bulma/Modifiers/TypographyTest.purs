module Bulma.Modifiers.TypographyTest where

import Prelude

import Bulma.Modifiers.Typography (Alignment(..), Colors(..), Sizes(..), Transformation(..), Weight(..), alignment, color, responsiveSize, responsiveAlignment, size, transformation, weight)
import Bulma.Modifiers.Util (BreakPoints(..), clazzNotSupported)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTypography :: forall e. Free (TestF e) Unit
testSuiteTypography =
  suite "Typography" do
    test "sizes" do
      size Size1 `equal` "is-size-1"
      size Size2 `equal` "is-size-2"
      size Size3 `equal` "is-size-3"
      size Size4 `equal` "is-size-4"
      size Size5 `equal` "is-size-5"
      size Size6 `equal` "is-size-6"
      size Size7 `equal` "is-size-7"
    test "responsive size 1" do
      responsiveSize Size1 Mobile `equal` "is-size-1-mobile"
      responsiveSize Size1 Tablet `equal` "is-size-1-tablet"
      responsiveSize Size1 Touch `equal` "is-size-1-touch"
      responsiveSize Size1 Desktop `equal` "is-size-1-desktop"
      responsiveSize Size1 Widescreen `equal` "is-size-1-widescreen"
      responsiveSize Size1 FullHD `equal` "is-size-1-fullhd"
    test "responsive size 2" do
      responsiveSize Size2 Mobile `equal` "is-size-2-mobile"
      responsiveSize Size2 Tablet `equal` "is-size-2-tablet"
      responsiveSize Size2 Touch `equal` "is-size-2-touch"
      responsiveSize Size2 Desktop `equal` "is-size-2-desktop"
      responsiveSize Size2 Widescreen `equal` "is-size-2-widescreen"
      responsiveSize Size2 FullHD `equal` "is-size-2-fullhd"
    test "responsive size 3" do
      responsiveSize Size3 Mobile `equal` "is-size-3-mobile"
      responsiveSize Size3 Tablet `equal` "is-size-3-tablet"
      responsiveSize Size3 Touch `equal` "is-size-3-touch"
      responsiveSize Size3 Desktop `equal` "is-size-3-desktop"
      responsiveSize Size3 Widescreen `equal` "is-size-3-widescreen"
      responsiveSize Size3 FullHD `equal` "is-size-3-fullhd"
    test "responsive size 4" do
      responsiveSize Size4 Mobile `equal` "is-size-4-mobile"
      responsiveSize Size4 Tablet `equal` "is-size-4-tablet"
      responsiveSize Size4 Touch `equal` "is-size-4-touch"
      responsiveSize Size4 Desktop `equal` "is-size-4-desktop"
      responsiveSize Size4 Widescreen `equal` "is-size-4-widescreen"
      responsiveSize Size4 FullHD `equal` "is-size-4-fullhd"
    test "responsive size 5" do
      responsiveSize Size5 Mobile `equal` "is-size-5-mobile"
      responsiveSize Size5 Tablet `equal` "is-size-5-tablet"
      responsiveSize Size5 Touch `equal` "is-size-5-touch"
      responsiveSize Size5 Desktop `equal` "is-size-5-desktop"
      responsiveSize Size5 Widescreen `equal` "is-size-5-widescreen"
      responsiveSize Size5 FullHD `equal` "is-size-5-fullhd"
    test "responsive size 6" do
      responsiveSize Size6 Mobile `equal` "is-size-6-mobile"
      responsiveSize Size6 Tablet `equal` "is-size-6-tablet"
      responsiveSize Size6 Touch `equal` "is-size-6-touch"
      responsiveSize Size6 Desktop `equal` "is-size-6-desktop"
      responsiveSize Size6 Widescreen `equal` "is-size-6-widescreen"
      responsiveSize Size6 FullHD `equal` "is-size-6-fullhd"
    test "responsive size 7" do
      responsiveSize Size7 Mobile `equal` "is-size-7-mobile"
      responsiveSize Size7 Tablet `equal` "is-size-7-tablet"
      responsiveSize Size7 Touch `equal` "is-size-7-touch"
      responsiveSize Size7 Desktop `equal` "is-size-7-desktop"
      responsiveSize Size7 Widescreen `equal` "is-size-7-widescreen"
      responsiveSize Size7 FullHD `equal` "is-size-7-fullhd"
    test "responsive size is not supported by some breakpoints" do
      responsiveSize Size1 DesktopOnly `equal` clazzNotSupported
      responsiveSize Size1 WidescreenOnly `equal` clazzNotSupported
      responsiveSize Size1 TabletOnly `equal` clazzNotSupported
    test "color" do
      color White `equal` "has-text-white"
      color Black `equal` "has-text-black"
      color LightColor `equal` "has-text-light"
      color Dark `equal` "has-text-dark"
      color Primary `equal` "has-text-primary"
      color Info `equal` "has-text-info"
      color Success `equal` "has-text-success"
      color Warning `equal` "has-text-warning"
      color Danger `equal` "has-text-danger"
      color BlackBis `equal` "has-text-black-bis"
      color BlackTer `equal` "has-text-black-ter"
      color GreyDarker `equal` "has-text-grey-darker"
      color GreyDark `equal` "has-text-grey-dark"
      color Grey `equal` "has-text-grey"
      color GreyLight `equal` "has-text-grey-light"
      color GreyLighter `equal` "has-text-grey-lighter"
      color WhiteTer `equal` "has-text-white-ter"
      color WhiteBis `equal` "has-text-white-bis"
    test "alignment" do
      alignment Centered `equal` "has-text-centered"
      alignment Justified `equal` "has-text-justified"
      alignment Left `equal` "has-text-left"
      alignment Right `equal` "has-text-right"
    test "responsive alignment centered" do
      responsiveAlignment Centered Mobile `equal` "has-text-centered-mobile"
      responsiveAlignment Centered Tablet `equal` "has-text-centered-tablet"
      responsiveAlignment Centered TabletOnly `equal` "has-text-centered-tablet-only"
      responsiveAlignment Centered Touch `equal` "has-text-centered-touch"
      responsiveAlignment Centered Desktop `equal` "has-text-centered-desktop"
      responsiveAlignment Centered DesktopOnly `equal` "has-text-centered-desktop-only"
      responsiveAlignment Centered Widescreen `equal` "has-text-centered-widescreen"
      responsiveAlignment Centered WidescreenOnly `equal` "has-text-centered-widescreen-only"
      responsiveAlignment Centered FullHD `equal` "has-text-centered-fullhd"
    test "responsive alignment justified" do
      responsiveAlignment Justified Mobile `equal` "has-text-justified-mobile"
      responsiveAlignment Justified Tablet `equal` "has-text-justified-tablet"
      responsiveAlignment Justified TabletOnly `equal` "has-text-justified-tablet-only"
      responsiveAlignment Justified Touch `equal` "has-text-justified-touch"
      responsiveAlignment Justified Desktop `equal` "has-text-justified-desktop"
      responsiveAlignment Justified DesktopOnly `equal` "has-text-justified-desktop-only"
      responsiveAlignment Justified Widescreen `equal` "has-text-justified-widescreen"
      responsiveAlignment Justified WidescreenOnly `equal` "has-text-justified-widescreen-only"
      responsiveAlignment Justified FullHD `equal` "has-text-justified-fullhd"
    test "responsive alignment left" do
      responsiveAlignment Left Mobile `equal` "has-text-left-mobile"
      responsiveAlignment Left Tablet `equal` "has-text-left-tablet"
      responsiveAlignment Left TabletOnly `equal` "has-text-left-tablet-only"
      responsiveAlignment Left Touch `equal` "has-text-left-touch"
      responsiveAlignment Left Desktop `equal` "has-text-left-desktop"
      responsiveAlignment Left DesktopOnly `equal` "has-text-left-desktop-only"
      responsiveAlignment Left Widescreen `equal` "has-text-left-widescreen"
      responsiveAlignment Left WidescreenOnly `equal` "has-text-left-widescreen-only"
      responsiveAlignment Left FullHD `equal` "has-text-left-fullhd"
    test "responsive alignment right" do
      responsiveAlignment Right Mobile `equal` "has-text-right-mobile"
      responsiveAlignment Right Tablet `equal` "has-text-right-tablet"
      responsiveAlignment Right TabletOnly `equal` "has-text-right-tablet-only"
      responsiveAlignment Right Touch `equal` "has-text-right-touch"
      responsiveAlignment Right Desktop `equal` "has-text-right-desktop"
      responsiveAlignment Right DesktopOnly `equal` "has-text-right-desktop-only"
      responsiveAlignment Right Widescreen `equal` "has-text-right-widescreen"
      responsiveAlignment Right WidescreenOnly `equal` "has-text-right-widescreen-only"
      responsiveAlignment Right FullHD `equal` "has-text-right-fullhd"
    test "transformation" do
      transformation Capitalized `equal` "is-capitalized"
      transformation Lowercase `equal` "is-lowercase"
      transformation Uppercase `equal` "is-uppercase"
    test "weight" do
      weight LightWeight `equal` "has-text-weight-light"
      weight Normal `equal` "has-text-weight-normal"
      weight Semibold `equal` "has-text-weight-semibold"
      weight Bold `equal` "has-text-weight-bold"
