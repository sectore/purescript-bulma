module Bulma.Layout.LayoutTest where

import Prelude

import Bulma.Common (ClassName(..), Is(..))
import Bulma.Common (Color(..)) as C
import Bulma.Layout.Layout (HeroColor(..), TileContext(..), container, footer, hero, heroBody, heroFoot, isBold, isFluid, isFullHeight, isHeroColor, isTileContext, isTileSize, isVerticalTile, level, levelItem, levelLeft, levelRight, media, mediaContent, mediaLeft, mediaRight, section, tile)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteLayout :: Free TestF Unit
testSuiteLayout =
  suite "Layout" do
    test "container" do
      container `equal` ClassName "container"
      isFluid `equal` ClassName "is-fluid"
    test "level" do
      level `equal` ClassName "level"
      levelLeft `equal` ClassName "level-left"
      levelRight `equal` ClassName "level-right"
      levelItem `equal` ClassName "level-item"
    test "media" do
      media `equal` ClassName "media"
      mediaContent `equal` ClassName "media-content"
      mediaLeft `equal` ClassName "media-left"
      mediaRight `equal` ClassName "media-right"
    test "hero" do
      hero `equal` ClassName "hero"
      heroBody `equal` ClassName "hero-body"
      heroFoot `equal` ClassName "hero-foot"
      isFullHeight `equal` ClassName "is-fullheight"
      isBold `equal` ClassName "is-bold"
    test "hero colors" do
      isHeroColor Light `equal` ClassName "is-light"
      isHeroColor Dark `equal` ClassName "is-dark"
      isHeroColor (CommonColor C.Primary) `equal` ClassName "is-primary"
      isHeroColor (CommonColor C.Info) `equal` ClassName "is-info"
      isHeroColor (CommonColor C.Success) `equal` ClassName "is-success"
      isHeroColor (CommonColor C.Warning) `equal` ClassName "is-warning"
      isHeroColor (CommonColor C.Danger) `equal` ClassName "is-danger"
      isHeroColor (CommonColor C.Link) `equal` ClassName "is-link-IS-NOT-SUPPORTED-HERE"
    test "section" do
      section `equal` ClassName "section"
    test "footer" do
      footer `equal` ClassName "footer"
    test "tile" do
      tile `equal` ClassName "tile"
      isVerticalTile `equal` ClassName "is-vertical"
    test "tile sizes" do
      isTileSize Is1 `equal` ClassName "is-1"
      isTileSize Is3 `equal` ClassName "is-3"
      isTileSize Is4 `equal` ClassName "is-4"
      isTileSize Is5 `equal` ClassName "is-5"
      isTileSize Is6 `equal` ClassName "is-6"
      isTileSize Is7 `equal` ClassName "is-7"
      isTileSize Is8 `equal` ClassName "is-8"
      isTileSize Is9 `equal` ClassName "is-9"
      isTileSize Is10 `equal` ClassName "is-10"
      isTileSize Is11 `equal` ClassName "is-11"
      isTileSize Is12 `equal` ClassName "is-12"
    test "tile context" do
      isTileContext Ancestor `equal` ClassName "is-ancestor"
      isTileContext Parent `equal` ClassName "is-parent"
      isTileContext Child `equal` ClassName "is-child"
