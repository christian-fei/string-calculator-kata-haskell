module StringCalculator
(
  add
)
where

import Data.List.Split


add :: String -> Int
add "" = 0
add n = sum $ map read $ splitNumbers n
add n = read n

splitNumbers :: String -> [String]
splitNumbers n = splitWhen (\x -> x `elem` [',','\n']) n
