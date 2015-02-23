module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import qualified StringCalculator as SC

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero] ++ singleNumberIsNumberItself


emptyStringIsZero =
  SC.add "" ~?= 0

singleNumberIsNumberItself = [
  SC.add "1" ~?= 1,
  SC.add "2" ~?= 2
  ]
