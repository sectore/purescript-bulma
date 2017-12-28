module Bulma.Components.MessageTest where

import Prelude

import Bulma.Components.Message (message, messageBody, messageHeader)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteMessage :: forall e. Free (TestF e) Unit
testSuiteMessage =
  suite "Message" do
    test "common" do
      message `equal` ClassName "message"
      messageBody `equal` ClassName "message-body"
      messageHeader `equal` ClassName "message-header"
