-- | Card
-- https://bulma.io/documentation/components/card/

module Bulma.Components.Card
  ( card
  , cardHeader
  , cardHeaderTitle
  , cardHeaderIcon
  , isHeaderTitleAlignment
  ) where

import Prelude

import Bulma.Common (Alignment(..), ClassName, ClassPart(..), isClass, joinClassParts, notSupported, toClassName, toClassPart)

card :: ClassName
card = toClassName cardPart

cardHeader :: ClassName
cardHeader = toClassName cardHeaderPart

cardHeaderTitle :: ClassName
cardHeaderTitle = cardHeaderClass $ ClassPart "title"

cardHeaderIcon :: ClassName
cardHeaderIcon = cardHeaderClass $ ClassPart "icon"

cardImage :: ClassName
cardImage = cardClass $ ClassPart "image"

cardFooter :: ClassName
cardFooter = toClassName cardFooterPart

cardFooterItem :: ClassName
cardFooterItem = cardFooterClass $ ClassPart "item"

isHeaderTitleAlignment :: Alignment -> ClassName
isHeaderTitleAlignment a =
  let className = isClass $ toClassPart a in
  if a == Centered
  then className
  else notSupported className

-- private helpers

cardPart :: ClassPart
cardPart = ClassPart "card"

cardHeaderPart :: ClassPart
cardHeaderPart = joinClassParts $ [cardPart, ClassPart "header"]

cardFooterPart :: ClassPart
cardFooterPart = joinClassParts $ [cardPart, ClassPart "footer"]

cardClass :: ClassPart -> ClassName
cardClass cp =
  toClassName $ joinClassParts [cardPart, cp]

cardHeaderClass :: ClassPart -> ClassName
cardHeaderClass cp =
  toClassName $ joinClassParts [cardPart, cardHeaderPart, cp]

cardFooterClass :: ClassPart -> ClassName
cardFooterClass cp =
  toClassName $ joinClassParts [cardFooterPart, cp]
