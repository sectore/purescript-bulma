module Bulma.Layout.Layout
  ( -- container
    container
  , isFluid
  -- level
  , level
  -- section
  , section
  -- footer
  , footer
  -- level
  , levelLeft
  , levelRight
  , levelItem
  -- media object
  , media
  , mediaContent
  , mediaLeft
  , mediaRight
  -- hero
  , hero
  , heroBody
  , heroFoot
  , isFullHeight
  , isBold
  -- tiles
  , TileContext(..)
  , tile
  , isTileContext
  , isVerticalTile
  , isTileSize
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), Is, isClass, joinClassParts, toClassName, toClassPart)

container :: ClassName
container = ClassName "container"

-- | Fluid container
isFluid :: ClassName
isFluid = isClass $ ClassPart "fluid"

-- | Horizontal level
-- https://bulma.io/documentation/layout/level/
level :: ClassName
level = toClassName levelPart

levelLeft :: ClassName
levelLeft = levelClass $ ClassPart "left"

levelRight :: ClassName
levelRight = levelClass $ ClassPart "right"

levelItem :: ClassName
levelItem = levelClass $ ClassPart "item"

-- private helpers of level
levelPart :: ClassPart
levelPart = ClassPart "level"

levelClass :: ClassPart -> ClassName
levelClass cp =
  toClassName $ joinClassParts [levelPart, cp]

-- Media object
-- https://bulma.io/documentation/layout/media-object/
media :: ClassName
media = toClassName mediaPart

mediaContent :: ClassName
mediaContent = mediaClass $ ClassPart "content"

mediaLeft :: ClassName
mediaLeft = mediaClass $ ClassPart "left"

mediaRight :: ClassName
mediaRight = mediaClass $ ClassPart "right"

-- private helpers for media

mediaPart :: ClassPart
mediaPart = ClassPart "media"

mediaClass :: ClassPart -> ClassName
mediaClass cp =
  toClassName $ joinClassParts [mediaPart, cp]

-- | Hero
-- https://bulma.io/documentation/layout/hero/
hero :: ClassName
hero = toClassName heroPart

heroBody :: ClassName
heroBody = heroClass $ ClassPart "body"

heroFoot :: ClassName
heroFoot = heroClass $ ClassPart "foot"

-- private helper for hero

heroPart :: ClassPart
heroPart = ClassPart "hero"

heroClass :: ClassPart -> ClassName
heroClass cp =
  toClassName $ joinClassParts [heroPart, cp]

-- | A full height hero
isFullHeight :: ClassName
isFullHeight = isClass $ ClassPart "fullheight"

-- | Adds a gradient to hero
isBold :: ClassName
isBold = isClass $ ClassPart "bold"

-- | Section
-- https://bulma.io/documentation/layout/section/
section :: ClassName
section = ClassName "section"

-- | Footer
-- https://bulma.io/documentation/layout/footer/
footer :: ClassName
footer = ClassName "footer"

-- | Tiles
-- https://bulma.io/documentation/layout/tiles/
tile :: ClassName
tile = ClassName "tile"

data TileContext
  = Ancestor
  | Parent
  | Child

instance chTileContext :: ClassHelper TileContext where
  toClassPart Ancestor = ClassPart "ancestor"
  toClassPart Parent = ClassPart "parent"
  toClassPart Child = ClassPart "child"

isTileContext :: TileContext -> ClassName
isTileContext = isClass <<< toClassPart

isVerticalTile :: ClassName
isVerticalTile = isClass $ ClassPart "vertical"

isTileSize :: Is -> ClassName
isTileSize i = isClass $ toClassPart i
