-- | Classes of following layout elements:
-- | * [`Container`](https://bulma.io/documentation/layout/container/)
-- | * [`Level`](https://bulma.io/documentation/layout/level/)
-- | * [`Media Object`](https://bulma.io/documentation/layout/media-object/)
-- | * [`Hero`](https://bulma.io/documentation/layout/hero/)
-- | * [`Section`](https://bulma.io/documentation/layout/section/)
-- | * [`Footer`](https://bulma.io/documentation/layout/footer/)
-- | * [`Tiles`](https://bulma.io/documentation/layout/tiles/)

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

-- | `.container` class
container :: ClassName
container = ClassName "container"

-- | Fluid container defined by `.is-fluid` class
isFluid :: ClassName
isFluid = isClass $ ClassPart "fluid"

-- | `.level` class
level :: ClassName
level = toClassName levelPart

-- | `.level-left` class
levelLeft :: ClassName
levelLeft = levelClass $ ClassPart "left"

-- | `.level-right` class
levelRight :: ClassName
levelRight = levelClass $ ClassPart "right"

-- | `.level-item` class
levelItem :: ClassName
levelItem = levelClass $ ClassPart "item"

-- private helpers of level
levelPart :: ClassPart
levelPart = ClassPart "level"

levelClass :: ClassPart -> ClassName
levelClass cp =
  toClassName $ joinClassParts [levelPart, cp]

-- | `.media` class
media :: ClassName
media = toClassName mediaPart

-- | `.media-content` class
mediaContent :: ClassName
mediaContent = mediaClass $ ClassPart "content"

-- | `.media-left` class
mediaLeft :: ClassName
mediaLeft = mediaClass $ ClassPart "left"

-- | `.media-right` class
mediaRight :: ClassName
mediaRight = mediaClass $ ClassPart "right"

-- private helpers for media

mediaPart :: ClassPart
mediaPart = ClassPart "media"

mediaClass :: ClassPart -> ClassName
mediaClass cp =
  toClassName $ joinClassParts [mediaPart, cp]

-- | `.hero` class
hero :: ClassName
hero = toClassName heroPart

-- | `.hero-body` class
heroBody :: ClassName
heroBody = heroClass $ ClassPart "body"

-- | `.hero-foot` class
heroFoot :: ClassName
heroFoot = heroClass $ ClassPart "foot"

-- private helper for hero

heroPart :: ClassPart
heroPart = ClassPart "hero"

heroClass :: ClassPart -> ClassName
heroClass cp =
  toClassName $ joinClassParts [heroPart, cp]

-- | `is-fullheight` class to have a full height hero
isFullHeight :: ClassName
isFullHeight = isClass $ ClassPart "fullheight"

-- | `is-bold` class adds a gradient to hero
isBold :: ClassName
isBold = isClass $ ClassPart "bold"

-- | `.section` class
section :: ClassName
section = ClassName "section"

-- | `.footer` class
footer :: ClassName
footer = ClassName "footer"

-- | `.tile` class
tile :: ClassName
tile = ClassName "tile"

-- | [Contextual modifiers](https://bulma.io/documentation/layout/tiles/#modifiers) of a tile
data TileContext
  = Ancestor
  | Parent
  | Child

instance chTileContext :: ClassHelper TileContext where
  toClassPart Ancestor = ClassPart "ancestor"
  toClassPart Parent = ClassPart "parent"
  toClassPart Child = ClassPart "child"

-- | Sets a `TileContext`
isTileContext :: TileContext -> ClassName
isTileContext = isClass <<< toClassPart

-- | Sets a [directional modifier](https://bulma.io/documentation/layout/tiles/#modifiers) to a tile
isVerticalTile :: ClassName
isVerticalTile = isClass $ ClassPart "vertical"

-- | Sets an [horizontal size modifier](https://bulma.io/documentation/layout/tiles/#modifiers) to a tile
isTileSize :: Is -> ClassName
isTileSize i = isClass $ toClassPart i
