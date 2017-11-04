module Test.Main where

import Prelude

import Bulma.Modifiers.HelpersTest (testSuiteHelpers)
import Bulma.Modifiers.ModifiersTest (testSuiteModifiers)
import Bulma.Modifiers.ResponsiveTest (testSuiteResponsive)
import Bulma.Modifiers.TypographyTest (testSuiteTypography)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.AVar (AVAR)
import Control.Monad.Eff.Console (CONSOLE)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

main :: forall e. Eff (avar :: AVAR, testOutput :: TESTOUTPUT, console :: CONSOLE | e) Unit
main = runTest do
  testSuiteHelpers
  testSuiteModifiers
  testSuiteResponsive
  testSuiteTypography
