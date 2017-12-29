-- | [Modal](https://bulma.io/documentation/components/modal/)

module Bulma.Components.Modal
  ( modal
  , modalBackground
  , modalContent
  , modalClose
  , modalCard
  , modalCardBody
  , modalCardHead
  , modalCardFoot
  , modalCardTitle
  ) where

import Prelude

import Bulma.Common (ClassName, ClassPart(..), joinClassParts, toClassName)

-- | `.modal` class
modal :: ClassName
modal = toClassName modalPart

-- | `.modal-background` class
modalBackground :: ClassName
modalBackground = modalClass $ ClassPart "background"

-- | `.modal-content` class
modalContent :: ClassName
modalContent = modalClass $ ClassPart "content"

-- | `.modal-close` class
modalClose :: ClassName
modalClose = modalClass $ ClassPart "close"

-- | `.modal-card` class
modalCard :: ClassName
modalCard = toClassName modalCardPart

-- | `.modal-card-head` class
modalCardHead :: ClassName
modalCardHead = modalCardClass $ ClassPart "head"

-- | `.modal-card-title` class
modalCardTitle :: ClassName
modalCardTitle = modalCardClass $ ClassPart "title"

-- | `.modal-card-body` class
modalCardBody :: ClassName
modalCardBody = modalCardClass $ ClassPart "body"

-- | `.modal-card-foot` class
modalCardFoot :: ClassName
modalCardFoot = modalCardClass $ ClassPart "foot"

-- private helpers

modalPart :: ClassPart
modalPart = ClassPart "modal"

modalCardPart :: ClassPart
modalCardPart = joinClassParts $ [modalPart, ClassPart "card"]

modalClass :: ClassPart -> ClassName
modalClass cp =
  toClassName $ joinClassParts [modalPart, cp]

modalCardClass :: ClassPart -> ClassName
modalCardClass cp =
  toClassName $ joinClassParts [modalCardPart, cp]
