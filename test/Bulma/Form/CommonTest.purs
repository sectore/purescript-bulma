module Bulma.Form.CommonTest where

import Prelude

import Bulma.Common (ClassName(..), Color(..), Size(..))
import Bulma.Form.Common (State(..), isColor, isRounded, isSize, isState)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteCommon :: Free TestF Unit
testSuiteCommon =
  suite "Form/Common" do
    test "colors" do
      isColor Primary `equal` ClassName "is-primary"
      isColor Info `equal` ClassName "is-info"
      isColor Success `equal` ClassName "is-success"
      isColor Warning `equal` ClassName "is-warning"
      isColor Danger `equal` ClassName "is-danger"
      isColor Link `equal` ClassName "is-link-IS-NOT-SUPPORTED-HERE"
    test "styles" do
      isRounded `equal` ClassName "is-rounded"
    test "sizes" do
      isSize Small `equal` ClassName "is-small"
      isSize Medium `equal` ClassName "is-medium"
      isSize Large `equal` ClassName "is-large"
    test "states" do
      isState Hover `equal` ClassName "is-hovered"
      isState Focus `equal` ClassName "is-focused"
      isState Normal `equal` ClassName "is-normal"
      isState Loading `equal` ClassName "is-loading"
