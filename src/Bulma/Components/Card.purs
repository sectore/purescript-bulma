-- | [Card](https://bulma.io/documentation/components/card/)

module Bulma.Components.Card
  ( card
  , cardContent
  , cardFooter
  , cardFooterItem
  , cardHeader
  , cardHeaderTitle
  , cardHeaderIcon
  , cardImage
  , isHeaderTitleAlignment
  ) where

import Prelude

import Bulma.Common (Alignment(..), ClassName, ClassPart(..), isClass, joinClassParts, notSupported, toClassName, toClassPart)

-- | `.card` class
card :: ClassName
card = toClassName cardPart

-- | `.card-header` class
cardHeader :: ClassName
cardHeader = toClassName cardHeaderPart

-- | `.card-header-title` class
cardHeaderTitle :: ClassName
cardHeaderTitle = cardHeaderClass $ ClassPart "title"

-- | `.card-header-icon` class
cardHeaderIcon :: ClassName
cardHeaderIcon = cardHeaderClass $ ClassPart "icon"

-- | `.card-image` class
cardImage :: ClassName
cardImage = cardClass $ ClassPart "image"

-- | `.card-content` class
cardContent :: ClassName
cardContent = cardClass $ ClassPart "content"

-- | `.card-footer` class
cardFooter :: ClassName
cardFooter = toClassName cardFooterPart

-- | `.card-footer-item` class
cardFooterItem :: ClassName
cardFooterItem = cardFooterClass $ ClassPart "item"

-- | Sets an `Alignment` to a title of a card header
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
