{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Data.Monoid ((<>))
import           Lib
import           Web.Scotty

--------------------------------------------------------------------------------

main = do
  putStrLn "Starting Server..."
  scotty 3000 $ do
    get "/hello" $ do
      text "Hello, Semaphore!"

    get "/hello/:name" $ do
      name <- param "name"
      text ("Semaphore: Hi there, " <> name <> "!")
