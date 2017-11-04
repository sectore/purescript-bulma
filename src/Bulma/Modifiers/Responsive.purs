-- | Responsive helpers
-- See https://bulma.io/documentation/modifiers/responsive-helpers/

module Bulma.Modifiers.Responsive
  ( hide
  , showBlock
  , showFlex
  , showInline
  , showInlineBlock
  , showInlineFlex
  )where

import Prelude

import Bulma.Modifiers.Util (BreakPoints, clazzDelemiter, is, toString)
import Bulma.Types (Clazz)

showFlex :: BreakPoints -> Clazz
showFlex bp = is $ flex $ toString bp

showBlock :: BreakPoints -> Clazz
showBlock bp = is $ block $ toString bp

showInline :: BreakPoints -> Clazz
showInline bp = is $ inline $ toString bp

showInlineBlock :: BreakPoints -> Clazz
showInlineBlock bp = is $ inlineBlock $ toString bp

showInlineFlex :: BreakPoints -> Clazz
showInlineFlex bp = is $ inlineFlex $ toString bp

hide :: BreakPoints -> Clazz
hide bp = is "hidden" <> clazzDelemiter <> toString bp

-- | Private helpers

flex :: String -> String
flex str =
  "flex" <> clazzDelemiter <> str

block :: String -> String
block str =
  "block" <> clazzDelemiter <> str

inline :: String -> String
inline str =
  "inline" <> clazzDelemiter <> str

inlineBlock :: String -> String
inlineBlock str =
  inline $ "block" <> clazzDelemiter <> str

inlineFlex :: String -> String
inlineFlex str =
  inline $ "flex" <> clazzDelemiter <> str

hidden :: String -> String
hidden str =
  "hidden" <> clazzDelemiter <> str
