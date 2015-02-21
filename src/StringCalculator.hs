module StringCalculator
(
  stringCalc
)
where

stringCalc :: String -> Int
stringCalc ""  = 0
stringCalc n = read n
