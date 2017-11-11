-- | Modal
-- https://bulma.io/documentation/components/modal/

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

import Bulma.Core (ClassName, ClassPart(..), joinClassParts, toClassName)

modal :: ClassName
modal = toClassName modalPart

modalBackground :: ClassName
modalBackground = modalClass $ ClassPart "background"

modalContent :: ClassName
modalContent = modalClass $ ClassPart "content"

modalClose :: ClassName
modalClose = modalClass $ ClassPart "close"

modalCard :: ClassName
modalCard = toClassName modalCardPart

modalCardHead :: ClassName
modalCardHead = modalCardClass $ ClassPart "head"

modalCardTitle :: ClassName
modalCardTitle = modalCardClass $ ClassPart "title"

modalCardBody :: ClassName
modalCardBody = modalCardClass $ ClassPart "body"

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
