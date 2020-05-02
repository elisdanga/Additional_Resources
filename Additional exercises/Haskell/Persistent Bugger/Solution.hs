persistence :: Int -> Int
persistence n
 | n < 10 = 0
 | otherwise = 1 + persistence (multiply_digits n)
  where
   multiply_digits :: Int -> Int
   multiply_digits x
    | x < 10 = x
    | otherwise = (mod x 10) * multiply_digits (div x 10)