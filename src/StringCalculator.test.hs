module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import StringCalculator

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero]

emptyStringIsZero =
  stringCalc "" ~?= 0

