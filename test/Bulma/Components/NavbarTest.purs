module Bulma.Components.NavbarTest where

import Prelude

import Bulma.Components.Navbar (Color(..), FixedPosition(..), State(..), hasDropdown, isColor, isFixed, isState, navbar, navbarBrand, navbarBurger, navbarDivider, navbarDropdown, navbarEnd, navbarItem, navbarLink, navbarMenu, navbarStart)
import Bulma.Common (ClassName(..))
import Bulma.Common (Color(..)) as C
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteNavbar :: Free TestF Unit
testSuiteNavbar =
  suite "Navbar" do
    test "common" do
      navbar `equal` ClassName "navbar"
      navbarBrand `equal` ClassName "navbar-brand"
      navbarBurger `equal` ClassName "navbar-burger"
      navbarMenu `equal` ClassName "navbar-menu"
      navbarStart `equal` ClassName "navbar-start"
      navbarEnd `equal` ClassName "navbar-end"
      navbarItem `equal` ClassName "navbar-item"
      navbarLink `equal` ClassName "navbar-link"
      navbarDropdown `equal` ClassName "navbar-dropdown"
      hasDropdown `equal` ClassName "has-dropdown"
      navbarDivider `equal` ClassName "navbar-divider"
    test "fixed position" do
      isFixed Top `equal` ClassName "is-fixed-top"
      isFixed Bottom `equal` ClassName "is-fixed-bottom"
    test "colors" do
      isColor (CommonColor C.Primary) `equal` ClassName "is-primary"
      isColor (CommonColor C.Link) `equal` ClassName "is-link"
      isColor (CommonColor C.Info) `equal` ClassName "is-info"
      isColor (CommonColor C.Success) `equal` ClassName "is-success"
      isColor (CommonColor C.Warning) `equal` ClassName "is-warning"
      isColor (CommonColor C.Danger) `equal` ClassName "is-danger"
      isColor White `equal` ClassName "is-white"
      isColor Light `equal` ClassName "is-light"
      isColor Dark `equal` ClassName "is-dark"
      isColor Black `equal` ClassName "is-black"
    test "state" do
      isState Active `equal` ClassName "is-active"
      isState Hoverable `equal` ClassName "is-hoverable"
