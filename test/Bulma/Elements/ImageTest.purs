module Bulma.Elements.ImageTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Elements.Image (Dimension(..), Ratio(..), image, isDimension, isRatio)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteImage :: forall e. Free (TestF e) Unit
testSuiteImage =
  suite "Image" do
    test "common" do
      image `equal` ClassName "image"
    test "dimensions" do
      isDimension D16x16 `equal` ClassName "is-16x16"
      isDimension D24x24 `equal` ClassName "is-24x24"
      isDimension D32x32 `equal` ClassName "is-32x32"
      isDimension D64x64 `equal` ClassName "is-64x64"
      isDimension D96x96 `equal` ClassName "is-96x96"
      isDimension D128x128 `equal` ClassName "is-128x128"
    test "ratio" do
      isRatio Square `equal` ClassName "is-square"
      isRatio OneByOne `equal` ClassName "is-1by1"
      isRatio FourByThree `equal` ClassName "is-4by3"
      isRatio ThreeByTwo `equal` ClassName "is-3by2"
      isRatio SixteenByNine `equal` ClassName "is-16by9"
      isRatio TwoByOne `equal` ClassName "is-2by1"
