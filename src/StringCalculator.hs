module StringCalculator
(
  stringCalc
)
where

delimiter = ','

stringCalc :: String -> Int
stringCalc ""     = 0
stringCalc n
  | delimiter `elem` n    = 3
  | otherwise             = read n
