-- | Styles of following Bulma `Elements`:
-- | *  [`Content`](https://bulma.io/documentation/elements/content/)
-- | *  [`Box`](https://bulma.io/documentation/elements/box/)
-- | *  [`Delete`](https://bulma.io/documentation/elements/delete/)
-- | *  [`Icon`](https://bulma.io/documentation/elements/icon/)
-- | *  [`Notification`](https://bulma.io/documentation/elements/notification/)
-- | *  [`Progress`](https://bulma.io/documentation/elements/progress/)

module Bulma.Elements.Elements
  ( box
  , content
  , delete
  , icon
  , notification
  , progress
  ) where

import Bulma.Common (ClassName(..))

-- | `.content` class
content :: ClassName
content = ClassName "content"

-- | `.box` class
box :: ClassName
box = ClassName "box"

-- | `.delete` class
delete :: ClassName
delete = ClassName "delete"

-- | `.icon` class
icon :: ClassName
icon = ClassName "icon"

-- | `.notification` class
notification :: ClassName
notification = ClassName "notification"

-- | `.progress` class
progress :: ClassName
progress = ClassName "progress"
