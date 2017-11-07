module Bulma.Components.NavbarTest where

import Prelude

import Bulma.Components.Navbar (navbar, navbarBrand, navbarBurger, navbarDivider, navbarDropdown, navbarEnd, navbarItem, navbarLink, navbarMenu, navbarStart)
import Bulma.Core (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteNavbar :: forall e. Free (TestF e) Unit
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
      navbarDivider `equal` ClassName "navbar-divider"
