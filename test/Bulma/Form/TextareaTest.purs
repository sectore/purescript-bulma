module Bulma.Form.TextareaTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Form.Textarea (textarea)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTextArea :: Free TestF Unit
testSuiteTextArea =
  suite "Form/TextArea" do
    test "common" do
      textarea `equal` ClassName "textarea"
