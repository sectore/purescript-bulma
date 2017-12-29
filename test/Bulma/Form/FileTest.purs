module Bulma.Form.FileTest where

import Prelude

import Bulma.Common (Alignment(..), ClassName(..), Size(..))
import Bulma.Common (Color(..)) as C
import Bulma.Form.File (Color(..), file, fileCta, fileIcon, fileInput, fileLabel, fileName, hasName, isAlignment, isColor, isSize)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteFile :: forall e. Free (TestF e) Unit
testSuiteFile =
  suite "Form/File" do
    test "common" do
      file `equal` ClassName "file"
      fileLabel `equal` ClassName "file-label"
      fileInput `equal` ClassName "file-input"
      fileCta `equal` ClassName "file-cta"
      fileIcon `equal` ClassName "file-icon"
      fileName `equal` ClassName "file-name"
      hasName `equal` ClassName "has-name"
    test "colors" do
      isColor (CommonColor C.Primary) `equal` ClassName "is-primary"
      isColor (CommonColor C.Link) `equal` ClassName "is-link"
      isColor (CommonColor C.Info) `equal` ClassName "is-info"
      isColor (CommonColor C.Success) `equal` ClassName "is-success"
      isColor (CommonColor C.Warning) `equal` ClassName "is-warning"
      isColor (CommonColor C.Danger) `equal` ClassName "is-danger"
      isColor White `equal` ClassName "is-white"
      isColor Light `equal` ClassName "is-light"
      isColor Dark `equal` ClassName "is-dark"
      isColor Black `equal` ClassName "is-black"
    test "alignment" do
      isAlignment Right `equal` ClassName "is-right"
      isAlignment Centered `equal` ClassName "is-centered"
      isAlignment Left `equal` ClassName "is-left-IS-NOT-SUPPORTED-HERE"
    test "size" do
      isSize Small `equal` ClassName "is-small"
      isSize Medium `equal` ClassName "is-medium"
      isSize Large `equal` ClassName "is-large"
