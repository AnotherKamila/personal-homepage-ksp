{-# LANGUAGE OverloadedStrings #-}
import Hakyll
import Control.Monad

config = defaultConfiguration { deployCommand = "rsync -avh _site/ ksp:~/www" }

main = hakyllWith config $ do
    -- TODO something smart

    -- just copy the rest
    forM_ [ "assets/*", "stuff/*", "snippets/*" ]
          (\p -> match p $ do route   idRoute
                              compile copyFileCompiler)
