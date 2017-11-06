-- | Responsive helpers
-- See https://bulma.io/documentation/modifiers/responsive-helpers/

module Bulma.Modifiers.Responsive
  ( breakpoint
  , hide
  , showBlock
  , showFlex
  , showInline
  , showInlineBlock
  , showInlineFlex
  , showInlineFlex'
  )where

import Prelude

import Bulma.Core (BreakPoints, ClassName, ClassPart(..), is, joinClassParts, toClassPart)

showFlex :: BreakPoints -> ClassName
showFlex = is <<< flex <<< toClassPart

showBlock :: BreakPoints -> ClassName
showBlock = is <<< block <<< toClassPart

showInline :: BreakPoints -> ClassName
showInline = is <<< inline <<< toClassPart

showInlineBlock :: BreakPoints -> ClassName
showInlineBlock = is <<< inlineBlock <<< toClassPart

-- TODO Rename it to `responsiveInlineFlex`
showInlineFlex :: BreakPoints -> ClassName
showInlineFlex = is <<< inlineFlex <<< toClassPart

-- TODO Rename it to `inlineFlex`
showInlineFlex' ::  ClassName
showInlineFlex' = is inlineFlex'

hide :: BreakPoints -> ClassName
hide bp = is $ joinClassParts [ClassPart "hidden", toClassPart bp]

breakpoint :: BreakPoints -> ClassName
breakpoint = is <<< toClassPart

-- | Private helpers

flex :: ClassPart -> ClassPart
flex str =
  joinClassParts [ClassPart "flex", str]

block :: ClassPart -> ClassPart
block str =
  joinClassParts [ClassPart "block", str]

inline :: ClassPart -> ClassPart
inline str =
  joinClassParts [ClassPart "inline", str]

inlineBlock :: ClassPart -> ClassPart
inlineBlock str =
  inline $ joinClassParts [ClassPart "block", str]

-- TODO Rename it to `mkResponsiveInlineFlex`
inlineFlex :: ClassPart -> ClassPart
inlineFlex str =
  inline $ joinClassParts [ClassPart "flex", str]

-- TODO Rename it to `mkInlineFlex`
inlineFlex' :: ClassPart
inlineFlex' =
  inline $ ClassPart "flex"

hidden :: ClassPart -> ClassPart
hidden str =
  joinClassParts [ClassPart "hidden", str]
