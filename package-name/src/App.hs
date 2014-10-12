{-# LANGUAGE DeriveDataTypeable, FlexibleContexts, FlexibleInstances, GADTs #-}
{-# LANGUAGE MultiParamTypeClasses, QuasiQuotes, TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies, TypeOperators                                    #-}

-- Main application module entering AppKit's application framework
module App (main, objc_initialise) where
import Constants
import Messaging

import Language.C.Inline.ObjC
import Language.C.Quote.ObjC
import System.IO.Unsafe

objc_import ["<Cocoa/Cocoa.h>"]


main :: IO ()
main = $(objc [] $
          void [cexp| NSApplicationMain(0, NULL) |])

objc_emit
