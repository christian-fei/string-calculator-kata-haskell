module StringCalculator
(
  add
)
where


add :: String -> Int
add "" = 0
add n = read n
