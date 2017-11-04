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
  )where

import Prelude

import Bulma.Core (BreakPoints, ClazzName, ClazzPart(..), is, joinClazzParts, toClazzPart, toClazzPart)

showFlex :: BreakPoints -> ClazzName
showFlex bp = is $ flex $ toClazzPart bp

showBlock :: BreakPoints -> ClazzName
showBlock bp = is $ block $ toClazzPart bp

showInline :: BreakPoints -> ClazzName
showInline bp = is $ inline $ toClazzPart bp

showInlineBlock :: BreakPoints -> ClazzName
showInlineBlock bp = is $ inlineBlock $ toClazzPart bp

showInlineFlex :: BreakPoints -> ClazzName
showInlineFlex bp = is $ inlineFlex $ toClazzPart bp

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

inlineFlex :: ClazzPart -> ClazzPart
inlineFlex str =
  inline $ joinClazzParts [ClazzPart "flex", str]

hidden :: ClazzPart -> ClazzPart
hidden str =
  joinClazzParts [ClazzPart "hidden", str]
