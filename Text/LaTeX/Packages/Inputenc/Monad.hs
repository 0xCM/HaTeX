{-# LANGUAGE OverloadedStrings #-}

-- |
-- 
-- /For contributors: This module was automatically generated by HaTeX-meta./
-- /So, please, don't make any change here directly, because/
-- /this is intended to be generated automatically from/
-- "Text.LaTeX.Packages.Inputenc" /module via HaTeX-meta,/
-- /and therefore, changes must to be done in these places./

module Text.LaTeX.Packages.Inputenc.Monad
 ( -- * Inputenc package
   inputenc
   -- * Encodings
 , utf8
 , latin1
   ) where

import Text.LaTeX.Base.Writer
import Text.LaTeX.Base.Render
import Text.LaTeX.Base.Types
import qualified Text.LaTeX.Packages.Inputenc as App
import Text.LaTeX.Packages.Inputenc()

{-|
Inputenc package.
 Example:

>  usepackage [utf8] inputenc

-}
inputenc :: String
inputenc = App.inputenc

-- | UTF-8 encoding.

utf8 ::   (Monad m) => LaTeXT_ m
utf8 = do textell ( App.utf8)

-- | Latin-1 encoding.

latin1 ::   (Monad m) => LaTeXT_ m
latin1 = do textell ( App.latin1)


