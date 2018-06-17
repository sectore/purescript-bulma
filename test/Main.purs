module Test.Main where

import Prelude

import Bulma.Columns.ColumnsTest (testSuiteColumns)
import Bulma.Columns.SizesTest (testSuiteSize)
import Bulma.CommonTest (testSuiteCommon)
import Bulma.Components.BreadcrumbTest (testSuiteBreadcrumb)
import Bulma.Components.CardTest (testSuiteCard)
import Bulma.Components.DropdownTest (testSuiteDropdown)
import Bulma.Components.MenuTest (testSuiteMenu)
import Bulma.Components.MessageTest (testSuiteMessage)
import Bulma.Components.ModalTest (testSuiteModal)
import Bulma.Components.NavbarTest (testSuiteNavbar)
import Bulma.Components.PaginationTest (testSuitePagination)
import Bulma.Components.PanelTest (testSuitePanel)
import Bulma.Components.TabsTest (testSuiteTabs)
import Bulma.Elements.ButtonTest (testSuiteButton)
import Bulma.Elements.ElementsTest (testSuiteElements)
import Bulma.Elements.ImageTest (testSuiteImage)
import Bulma.Elements.TableTest (testSuiteTable)
import Bulma.Elements.TagTest (testSuiteTag)
import Bulma.Elements.TitleTest (testSuiteTitle)
import Bulma.Form.CheckboxTest (testSuiteCheckbox)
import Bulma.Form.CommonTest (testSuiteCommon) as Form
import Bulma.Form.GeneralTest (testSuiteGeneral)
import Bulma.Form.InputTest (testSuiteInput)
import Bulma.Form.RadioTest (testSuiteRadio)
import Bulma.Form.FileTest (testSuiteFile)
import Bulma.Form.SelectTest (testSuiteSelect)
import Bulma.Form.TextareaTest (testSuiteTextArea)
import Bulma.Layout.LayoutTest (testSuiteLayout)
import Bulma.Modifiers.HelpersTest (testSuiteHelpers)
import Bulma.Modifiers.ModifiersTest (testSuiteModifiers)
import Bulma.Modifiers.ResponsiveTest (testSuiteResponsive)
import Bulma.Modifiers.TypographyTest (testSuiteTypography)
import Effect (Effect)
import Test.Unit (suite)
import Test.Unit.Main (runTest)

main :: Effect Unit
main = runTest do
  testSuiteCommon
  suite "Modifiers" do
    testSuiteHelpers
    testSuiteModifiers
    testSuiteResponsive
    testSuiteTypography
  suite "Columns" do
    testSuiteColumns
    testSuiteSize
  suite "Form" do
    Form.testSuiteCommon
    testSuiteGeneral
    testSuiteTextArea
    testSuiteInput
    testSuiteSelect
    testSuiteCheckbox
    testSuiteRadio
    testSuiteFile
  suite "Elements" do
    testSuiteButton
    testSuiteElements
    testSuiteImage
    testSuiteTable
    testSuiteTag
    testSuiteTitle
    testSuiteDropdown
  suite "Layout" do
    testSuiteLayout
  suite "Components" do
    testSuiteBreadcrumb
    testSuiteCard
    testSuiteDropdown
    testSuiteMenu
    testSuiteMessage
    testSuiteModal
    testSuiteNavbar
    testSuitePagination
    testSuitePanel
    testSuiteTabs
