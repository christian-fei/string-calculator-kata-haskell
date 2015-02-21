module StringCalculator
(
  stringCalc
)
where

import Data.List.Split

delimiters = [',','\n']

stringCalc :: String -> Int
stringCalc ""     = 0
stringCalc n
  | containsDelimiter     = sum $ map readInt $ splitWhen (\x -> x `elem` delimiters) n
  | otherwise             = read n
  where
    containsDelimiter = or $ map (\x -> x `elem` delimiters) n

readInt :: String -> Int
readInt = read
