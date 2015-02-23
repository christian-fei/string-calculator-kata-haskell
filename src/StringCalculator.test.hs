module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import qualified StringCalculator as SC

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero] ++ singleNumberIsNumberItself ++ [
    oneTwoIsThree
    ]


emptyStringIsZero =
  SC.add "" ~?= 0

singleNumberIsNumberItself = [
  SC.add "1" ~?= 1,
  SC.add "2" ~?= 2,
  SC.add "3" ~?= 3,
  SC.add "4" ~?= 4
  ]

oneTwoIsThree =
  SC.add "1,2" ~?= 3
