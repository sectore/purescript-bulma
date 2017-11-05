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

import Bulma.Core (BreakPoints, ClazzName, ClazzPart(..), is, joinClazzParts, toClazzPart)

showFlex :: BreakPoints -> ClazzName
showFlex = is <<< flex <<< toClazzPart

showBlock :: BreakPoints -> ClazzName
showBlock = is <<< block <<< toClazzPart

showInline :: BreakPoints -> ClazzName
showInline = is <<< inline <<< toClazzPart

showInlineBlock :: BreakPoints -> ClazzName
showInlineBlock = is <<< inlineBlock <<< toClazzPart

-- TODO Rename it to `responsiveInlineFlex`
showInlineFlex :: BreakPoints -> ClazzName
showInlineFlex = is <<< inlineFlex <<< toClazzPart

-- TODO Rename it to `inlineFlex`
showInlineFlex' ::  ClazzName
showInlineFlex' = is inlineFlex'

hide :: BreakPoints -> ClazzName
hide bp = is $ joinClazzParts [ClazzPart "hidden", toClazzPart bp]

breakpoint :: BreakPoints -> ClazzName
breakpoint = is <<< toClazzPart

-- | Private helpers

flex :: ClazzPart -> ClazzPart
flex str =
  joinClazzParts [ClazzPart "flex", str]

block :: ClazzPart -> ClazzPart
block str =
  joinClazzParts [ClazzPart "block", str]

inline :: ClazzPart -> ClazzPart
inline str =
  joinClazzParts [ClazzPart "inline", str]

inlineBlock :: ClazzPart -> ClazzPart
inlineBlock str =
  inline $ joinClazzParts [ClazzPart "block", str]

-- TODO Rename it to `mkResponsiveInlineFlex`
inlineFlex :: ClazzPart -> ClazzPart
inlineFlex str =
  inline $ joinClazzParts [ClazzPart "flex", str]

-- TODO Rename it to `mkInlineFlex`
inlineFlex' :: ClazzPart
inlineFlex' =
  inline $ ClazzPart "flex"

hidden :: ClazzPart -> ClazzPart
hidden str =
  joinClazzParts [ClazzPart "hidden", str]
