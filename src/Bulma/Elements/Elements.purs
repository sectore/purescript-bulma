module Bulma.Elements.Elements
  ( box
  , content
  , delete
  , icon
  , notification
  , progress
  ) where

import Bulma.Core (ClassName(..))

-- | Content
-- https://bulma.io/documentation/elements/content/
content :: ClassName
content = ClassName "content"

-- | Box
-- https://bulma.io/documentation/elements/box/
box :: ClassName
box = ClassName "box"

-- | Delete
-- https://bulma.io/documentation/elements/delete/
delete :: ClassName
delete = ClassName "delete"

-- | Icon
-- https://bulma.io/documentation/elements/icon/
icon :: ClassName
icon = ClassName "icon"

-- | Notification
-- https://bulma.io/documentation/elements/notification/
notification :: ClassName
notification = ClassName "notification"

-- | Progress
-- https://bulma.io/documentation/elements/progress/
progress :: ClassName
progress = ClassName "progress"
