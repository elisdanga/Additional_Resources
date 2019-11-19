lastDigit :: Integer -> Integer -> Integer
lastDigit _ 0 = 1
lastDigit a b = mod (helper (mod a 10) (mod b 4)) 10
 where
  helper a1 0 = a1 ^ 4
  helper a1 b1 = a1 ^ b1