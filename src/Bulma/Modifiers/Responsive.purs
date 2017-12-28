-- | Responsive helpers
-- See https://bulma.io/documentation/modifiers/responsive-helpers/

module Bulma.Modifiers.Responsive
  ( isBreakpoint
  , isHiddenResponsive
  , isBlockResponsive
  , isFlexResponsive
  , isInlineBlockResponsive
  , isInlineFlexResponsive
  , isInlineResponsive
  , isInlineFlex
  )where

import Prelude

import Bulma.Common (Breakpoint, ClassName, ClassPart(..), isClass, joinClassParts, toClassPart)

isFlexResponsive :: Breakpoint -> ClassName
isFlexResponsive = isClass <<< flexPart <<< toClassPart

isBlockResponsive :: Breakpoint -> ClassName
isBlockResponsive = isClass <<< blockPart <<< toClassPart

isInlineResponsive :: Breakpoint -> ClassName
isInlineResponsive = isClass <<< inlinePart <<< toClassPart

isInlineBlockResponsive  :: Breakpoint -> ClassName
isInlineBlockResponsive  = isClass <<< inlineBlockPart <<< toClassPart

isInlineFlexResponsive :: Breakpoint -> ClassName
isInlineFlexResponsive = isClass <<< inlineFlexPart' <<< toClassPart

isInlineFlex ::  ClassName
isInlineFlex = isClass inlineFlexPart

isHiddenResponsive :: Breakpoint -> ClassName
isHiddenResponsive bp = isClass $ joinClassParts [ClassPart "hidden", toClassPart bp]

isBreakpoint:: Breakpoint -> ClassName
isBreakpoint= isClass <<< toClassPart

-- | Private helpers

flexPart :: ClassPart -> ClassPart
flexPart str =
  joinClassParts [ClassPart "flex", str]

blockPart :: ClassPart -> ClassPart
blockPart str =
  joinClassParts [ClassPart "block", str]

inlinePart :: ClassPart -> ClassPart
inlinePart str =
  joinClassParts [ClassPart "inline", str]

inlineBlockPart :: ClassPart -> ClassPart
inlineBlockPart str =
  inlinePart $ joinClassParts [ClassPart "block", str]

inlineFlexPart :: ClassPart
inlineFlexPart =
  inlinePart $ ClassPart "flex"

inlineFlexPart' :: ClassPart -> ClassPart
inlineFlexPart' str =
  inlinePart $ joinClassParts [ClassPart "flex", str]
