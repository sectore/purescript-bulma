-- | Bulma [`File`] (https://bulma.io/documentation/form/file/) classes

module Bulma.Form.File
  ( Color(..)
  , isAlignment
  , isColor
  , isSize
  , file
  , fileCta
  , fileIcon
  , fileInput
  , fileLabel
  , fileName
  , hasName
  ) where

import Prelude

import Bulma.Common (Color) as C
import Bulma.Common (class ClassHelper, Alignment(..), ClassName, ClassPart(..), Size, hasClass, isClass, joinClassParts, notSupported, toClassName, toClassPart)

-- | `.file` class
file :: ClassName
file = toClassName filePart

filePart :: ClassPart
filePart = ClassPart "file"

-- | `.file-label` class
fileLabel :: ClassName
fileLabel = toClassName $ joinClassParts [filePart, ClassPart "label"]

-- | `.file-input` class
fileInput :: ClassName
fileInput = toClassName $ joinClassParts [filePart, ClassPart "input"]

-- | `.file-cta` class
fileCta :: ClassName
fileCta = toClassName $ joinClassParts [filePart, ClassPart "cta"]

-- | `.file-icon` class
fileIcon :: ClassName
fileIcon = toClassName $ joinClassParts [filePart, ClassPart "icon"]

-- | `.file-name` class
fileName :: ClassName
fileName = toClassName $ joinClassParts [filePart, ClassPart "name"]

hasName :: ClassName
hasName = hasClass $ ClassPart "name"

-- | [Colors](https://bulma.io/documentation/form/file/#colors) of a file input
data Color
  = CommonColor C.Color
  | White
  | Light
  | Dark
  | Black

instance chColor :: ClassHelper Color where
  toClassPart (CommonColor color) = toClassPart color
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"

-- | Sets a `Color` of a file input
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- | Sets a `Size` of a file input
isSize :: Size -> ClassName
isSize = isClass <<< toClassPart

-- | Sets a `Color` of a file input
isAlignment :: Alignment -> ClassName
isAlignment p =
  let className = isClass $ toClassPart p in
  if p == Left
  then notSupported className
  else className
