module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import qualified StringCalculator as SC

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [emptyStringIsZero]

emptyStringIsZero =
  SC.add "" ~?= 0

