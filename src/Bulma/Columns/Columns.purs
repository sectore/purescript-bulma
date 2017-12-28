module Bulma.Columns.Columns where

import Prelude

import Bulma.Common (ClassName(..), ClassPart(..), isClass)

columns :: ClassName
columns = ClassName "columns"

column :: ClassName
column = ClassName "column"

isMultiline :: ClassName
isMultiline = isClass $ ClassPart "multiline"

isGapless :: ClassName
isGapless = isClass $ ClassPart "gapless"
