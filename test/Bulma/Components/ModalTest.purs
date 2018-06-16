module Bulma.Components.ModalTest where

import Prelude

import Bulma.Components.Modal (modal, modalBackground, modalCard, modalCardBody, modalCardFoot, modalCardHead, modalCardTitle, modalClose, modalContent)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteModal :: Free TestF Unit

testSuiteModal =
  suite "Modal" do
    test "modal" do
      modal `equal` ClassName "modal"
      modalBackground `equal` ClassName "modal-background"
      modalContent `equal` ClassName "modal-content"
      modalClose `equal` ClassName "modal-close"
    test "modal card" do
      modalCard `equal` ClassName "modal-card"
      modalCardHead `equal` ClassName "modal-card-head"
      modalCardBody `equal` ClassName "modal-card-body"
      modalCardTitle `equal` ClassName "modal-card-title"
      modalCardFoot `equal` ClassName "modal-card-foot"
