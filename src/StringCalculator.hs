module StringCalculator
where

import Data.List.Split

add :: String -> Int
add "" = 0
add xs = sum [read x | x <- splitWhen (==',') xs]
-- add x = sum $ map read $ splitWhen (==',') x
