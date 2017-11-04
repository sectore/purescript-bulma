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

import Bulma.Core (BreakPoints, combine, is, toString)

showFlex :: BreakPoints -> String
showFlex bp = is $ flex $ toString bp

showBlock :: BreakPoints -> String
showBlock bp = is $ block $ toString bp

showInline :: BreakPoints -> String
showInline bp = is $ inline $ toString bp

showInlineBlock :: BreakPoints -> String
showInlineBlock bp = is $ inlineBlock $ toString bp

showInlineFlex :: BreakPoints -> String
showInlineFlex bp = is $ inlineFlex $ toString bp

hide :: BreakPoints -> String
hide bp = is $ combine ["hidden", toString bp]

breakpoint :: BreakPoints -> String
breakpoint = is <<< toString

-- | Private helpers

flex :: String -> String
flex str =
  combine ["flex", str]

block :: String -> String
block str =
  combine ["block", str]

inline :: String -> String
inline str =
  combine ["inline", str]

inlineBlock :: String -> String
inlineBlock str =
  inline $ combine ["block", str]

inlineFlex :: String -> String
inlineFlex str =
  inline $ combine ["flex", str]

hidden :: String -> String
hidden str =
  combine ["hidden", str]
