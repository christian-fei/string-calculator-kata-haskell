module StringCalculator
(
  stringCalc
)
where

import Data.List.Split

delimiters = [',','\n']

stringCalc :: String -> Int
stringCalc "" = 0
stringCalc n = sum $ parseNumbers n

parseNumbers :: String -> [Int]
parseNumbers n = map read $ splitWhen isDelimiter n
  where isDelimiter x = x `elem` delimiters
