module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import StringCalculator

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero] ++ singleNumbers

singleNumbers = [
  oneStringIsOne,
  twoStringIsTwo
  ]


emptyStringIsZero =
  stringCalc "" ~?= 0

oneStringIsOne =
  stringCalc "1" ~?= 1

twoStringIsTwo =
  stringCalc "2" ~?= 2

