module Bulma.Elements.TagTest where

import Prelude

import Bulma.Common (ClassName(..), Size(..))
import Bulma.Common as C
import Bulma.Elements.Tag (Color(..), isColor, isDelete, isGroupedMultiline, isSize, tag, tags)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteTag :: Free TestF Unit
testSuiteTag =
  suite "Tag" do
    test "common" do
      tag `equal` ClassName "tag"
      tags `equal` ClassName "tags"
      isDelete `equal` ClassName "is-delete"
      isGroupedMultiline `equal` ClassName "is-grouped-multiline"
    test "color" do
      isColor White `equal` ClassName "is-white"
      isColor Light `equal` ClassName "is-light"
      isColor Dark `equal` ClassName "is-dark"
      isColor Black `equal` ClassName "is-black"
      isColor (CommonColor C.Primary) `equal` ClassName "is-primary"
      isColor (CommonColor C.Link) `equal` ClassName "is-link"
      isColor (CommonColor C.Info) `equal` ClassName "is-info"
      isColor (CommonColor C.Success) `equal` ClassName "is-success"
      isColor (CommonColor C.Warning) `equal` ClassName "is-warning"
      isColor (CommonColor C.Danger) `equal` ClassName "is-danger"
    test "size" do
      isSize Small `equal` ClassName "is-small"
      isSize Medium `equal` ClassName "is-medium"
      isSize Large `equal` ClassName "is-large-IS-NOT-SUPPORTED-HERE"
