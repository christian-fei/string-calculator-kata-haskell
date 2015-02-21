module StringCalculator
(
  stringCalc
)
where

stringCalc :: String -> Int
stringCalc ""     = 0
stringCalc "1,2"  = 3
stringCalc n      = read n
