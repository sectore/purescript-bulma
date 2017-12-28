-- | Message
-- https://bulma.io/documentation/components/message/
--
-- Note: Following styles of messages are global
-- and defined in `Bulma.Modifiers.Modifiers` only:
-- * Colors (https://bulma.io/documentation/components/message/#colors)
--    ^ Use `isColor` of `Bulma.Modifiers.Modifiers`
-- * Sizes (https://bulma.io/documentation/components/message/#sizes)
--    ^ Use `isSize` of `Bulma.Modifiers.Modifiers`

module Bulma.Components.Message
  ( message
  , messageBody
  , messageHeader
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), joinClassParts, toClassName)

message :: ClassName
message = toClassName messagePart

messageHeader :: ClassName
messageHeader = messageClass $ ClassPart "header"

messageBody :: ClassName
messageBody = messageClass $ ClassPart "body"

-- private helpers

messagePart :: ClassPart
messagePart = ClassPart "message"

messageClass :: ClassPart -> ClassName
messageClass cp =
  toClassName $ joinClassParts [messagePart, cp]
