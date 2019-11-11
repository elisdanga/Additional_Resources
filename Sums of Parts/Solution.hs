partsSum :: [Integer] -> [Integer]
partsSum [] = [0]
partsSum ls = helper (sum ls) ls []
 where
  helper _ [n] answer = reverse (0 : n : answer)
  helper current_sum ls answer = helper ((sum . tail) ls) (tail ls) (current_sum : answer)