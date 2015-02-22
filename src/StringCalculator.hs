module StringCalculator
(
  stringCalc
)
where

import Data.List.Split

delimiters = [',','\n']

stringCalc :: String -> Int
stringCalc n = sum $ map readInt $ splitWhen (\x -> x `elem` delimiters) n

readInt :: String -> Int
readInt "" = 0
readInt n = read n
