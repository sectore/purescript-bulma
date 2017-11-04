module Test.Main where

import Prelude

import Bulma.Columns.ColumnsTest (testSuiteColumns) as C
import Bulma.Columns.SizesTest (testSuiteSizes) as C
import Bulma.Modifiers.HelpersTest (testSuiteHelpers) as M
import Bulma.Modifiers.ModifiersTest (testSuiteModifiers) as M
import Bulma.Modifiers.ResponsiveTest (testSuiteResponsive) as M
import Bulma.Modifiers.TypographyTest (testSuiteTypography) as M
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.AVar (AVAR)
import Control.Monad.Eff.Console (CONSOLE)
import Test.Unit (suite)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

main :: forall e. Eff (avar :: AVAR, testOutput :: TESTOUTPUT, console :: CONSOLE | e) Unit
main = runTest do
  suite "Modifiers" do
    M.testSuiteHelpers
    M.testSuiteModifiers
    M.testSuiteResponsive
    M.testSuiteTypography
  suite "Columns" do
    C.testSuiteColumns
    C.testSuiteSizes
