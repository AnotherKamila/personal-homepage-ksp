{-# LANGUAGE OverloadedStrings #-}
import Hakyll

config = defaultConfiguration { deployCommand = "rsync -avh _site/ ksp:~/www" }

main = hakyllWith config $ do
    match "assets/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "stuff/*" $ do
        route   idRoute
        compile copyFileCompiler
