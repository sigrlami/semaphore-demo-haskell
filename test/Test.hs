module Main where

import           Test.Tasty
import           Test.Tasty.HUnit

import           Lib

--------------------------------------------------------------------------------

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests" [add42Test])


add42Test :: TestTree
add42Test = testCase "Testing add42"
  (assertEqual "Should add 42 to get 52" 52 (add42 10))
