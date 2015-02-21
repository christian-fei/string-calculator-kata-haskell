module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import StringCalculator

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero] ++
  singleNumbers ++
  multipleNumbers ++ [
    handlesNewlinesAsDelimiter
  ]

singleNumbers = [
  oneStringIsOne,
  twoStringIsTwo
  ]

multipleNumbers = [
  oneTwoNumberIsThree,
  oneTwoThreeNumberIsSix
  ]



emptyStringIsZero =
  stringCalc "" ~?= 0

oneStringIsOne =
  stringCalc "1" ~?= 1

twoStringIsTwo =
  stringCalc "2" ~?= 2


oneTwoNumberIsThree =
  stringCalc "1,2" ~?= 3

oneTwoThreeNumberIsSix =
  stringCalc "1,2,3" ~?= 6


handlesNewlinesAsDelimiter =
  stringCalc "1,2\n3" ~?= 6
