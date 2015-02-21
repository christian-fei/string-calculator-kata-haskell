module StringCalculator
(
  stringCalc
)
where

import Data.List.Split

delimiter = ','

stringCalc :: String -> Int
stringCalc ""     = 0
stringCalc n
  | delimiter `elem` n    = sum $ map read $ splitWhen (==delimiter) n
  | otherwise             = read n
