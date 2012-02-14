{-# LANGUAGE OverloadedStrings #-}

-- |
-- 
-- /For contributors: This module was automatically generated by HaTeX-meta./
-- /So, please, don't make any change here directly, because/
-- /this is intended to be generated automatically from/
-- "Text.LaTeX.Packages.Color" /module via HaTeX-meta,/
-- /and therefore, changes must to be done in these places./

module Text.LaTeX.Packages.Color.Monad
 ( -- * Color package
   pcolor
   -- * Package options
 , monochrome
 , dvipsnames
 , nodvipsnames
 , usenames
   -- * Types
 , Color (..)
 , ColorName (..)
 , ColorModel (..)
 , ColSpec (..)
   -- * Commands
 , pagecolor
 , color
 , textcolor
 , colorbox , fcolorbox
 , normalcolor
   ) where

import Text.LaTeX.Base.Writer
import Text.LaTeX.Base.Render
import Text.LaTeX.Base.Types
import qualified Text.LaTeX.Packages.Color as App
import Text.LaTeX.Packages.Color(ColSpec,Color,ColorModel,ColorName)

{-|
The 'color' package.

>  usepackage [] pcolor

-}
pcolor :: String
pcolor = App.pcolor

{-|
To convert all colour commands to black and white,
   for previewers that cannot handle colour.
-}
monochrome ::   (Monad m) => LaTeXT_ m
monochrome = do textell ( App.monochrome)


dvipsnames ::   (Monad m) => LaTeXT_ m
dvipsnames = do textell ( App.dvipsnames)


nodvipsnames ::   (Monad m) => LaTeXT_ m
nodvipsnames = do textell ( App.nodvipsnames)


usenames ::   (Monad m) => LaTeXT_ m
usenames = do textell ( App.usenames)

-- | Set the background color fot the current and following pages.

pagecolor ::   (Monad m) => ColSpec -> LaTeXT_ m
pagecolor a1 = do textell ( App.pagecolor a1)

-- | Switch to a new text color.

color ::   (Monad m) => ColSpec -> LaTeXT_ m
color a1 = do textell ( App.color a1)

-- | Set the text of its argument in the given colour.

textcolor ::   (Monad m) => ColSpec -> LaTeXT_ m -> LaTeXT_ m
textcolor a1 a2
  = do a2 <- extractLaTeX_ a2
       textell ( App.textcolor a1 a2)

-- | Put its argument in a box with the given colour as background.

colorbox ::   (Monad m) => ColSpec -> LaTeXT_ m -> LaTeXT_ m
colorbox a1 a2
  = do a2 <- extractLaTeX_ a2
       textell ( App.colorbox a1 a2)

{-|
Application of @fcolorbox cs1 cs2 l@ put @l@ in a framed box with
   @cs1@ as frame color and @cs2@ as background color.
-}
fcolorbox ::   (Monad m) => ColSpec -> ColSpec -> LaTeXT_ m -> LaTeXT_ m
fcolorbox a1 a2 a3
  = do a3 <- extractLaTeX_ a3
       textell ( App.fcolorbox a1 a2 a3)

{-|
Switch to the colour that was active at the end of the preamble.
   Thus, placing a 'color' command in the preamble can change the
   standard colour of the whole document.
-}
normalcolor ::   (Monad m) => LaTeXT_ m
normalcolor = do textell ( App.normalcolor)


