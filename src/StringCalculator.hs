module StringCalculator
(
  add
)
where

import Data.List.Split

delimiters = [',','\n']

add :: String -> Int
add "" = 0
add n = sum $ map read $ splitNumbers n

splitNumbers :: String -> [String]
splitNumbers n = splitWhen (\x -> x `elem` delimiters) n
