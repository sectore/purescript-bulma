module Test.Main where

import Prelude

import Bulma.Columns.ColumnsTest (testSuiteColumns)
import Bulma.Columns.SizesTest (testSuiteSize)
import Bulma.Components.DropdownTest (testSuiteDropdown)
import Bulma.Components.MenuTest (testSuiteMenu)
import Bulma.Components.MessageTest (testSuiteMessage)
import Bulma.Components.ModalTest (testSuiteModal)
import Bulma.Components.NavbarTest (testSuiteNavbar)
import Bulma.Components.PaginationTest (testSuitePagination)
import Bulma.Components.PanelTest (testSuitePanel)
import Bulma.Components.TabsTest (testSuiteTabs)
import Bulma.CoreTest (testSuiteCore)
import Bulma.Elements.ButtonTest (testSuiteButton)
import Bulma.Elements.ElementsTest (testSuiteElements)
import Bulma.Elements.ImageTest (testSuiteImage)
import Bulma.Elements.TitleTest (testSuiteTitle)
import Bulma.Layout.LayoutTest (testSuiteLayout)
import Bulma.Modifiers.HelpersTest (testSuiteHelpers)
import Bulma.Modifiers.ModifiersTest (testSuiteModifiers)
import Bulma.Modifiers.ResponsiveTest (testSuiteResponsive)
import Bulma.Modifiers.TypographyTest (testSuiteTypography)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.AVar (AVAR)
import Control.Monad.Eff.Console (CONSOLE)
import Test.Unit (suite)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

main :: forall e. Eff (avar :: AVAR, testOutput :: TESTOUTPUT, console :: CONSOLE | e) Unit
main = runTest do
  testSuiteCore
  suite "Modifiers" do
    testSuiteHelpers
    testSuiteModifiers
    testSuiteResponsive
    testSuiteTypography
  suite "Columns" do
    testSuiteColumns
    testSuiteSize
  suite "Elements" do
    testSuiteButton
    testSuiteElements
    testSuiteImage
    testSuiteTitle
  suite "Layout" do
    testSuiteLayout
  suite "Components" do
    testSuiteDropdown
    testSuiteMenu
    testSuiteMessage
    testSuiteModal
    testSuiteNavbar
    testSuitePagination
    testSuitePanel
    testSuiteTabs
