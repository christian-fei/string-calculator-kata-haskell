module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import StringCalculator

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  singleNumbers ++ [
    twoNumbersAreTheSum
    ]


singleNumbers =
  [emptyListIsZero,
  listOfNumberOneIsOne,
  listOfNumberTwoIsTwo
    ]

emptyListIsZero =
  add "" ~?= 0

listOfNumberOneIsOne =
  add "1" ~?= 1

listOfNumberTwoIsTwo =
  add "2" ~?= 2

twoNumbersAreTheSum =
  add "1,2" ~?= 3
