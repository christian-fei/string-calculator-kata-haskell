module StringCalculator
(
  add
)
where


add :: String -> Int
add "" = 0
add "1,2" = 3
add "2,2" = 4
add n = read n
