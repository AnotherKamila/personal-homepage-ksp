{-# LANGUAGE OverloadedStrings #-}
import Hakyll
import Control.Monad

config = defaultConfiguration { deployCommand = "rsync -avh _site/ ksp:~/www" }

main = hakyllWith config $ do
    -- TODO something smart

    match ("assets/*" .||. "stuff/*" .||. "snippets/*") $ do
        route   idRoute
        compile copyFileCompiler
