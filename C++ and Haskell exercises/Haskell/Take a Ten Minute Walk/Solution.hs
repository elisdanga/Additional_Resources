isValidWalk :: [Char] -> Bool
isValidWalk walk
 | null (drop 10 walk) == False = False
 | (length walk) /= 10 = False
 | otherwise = helper walk 0 0
 where
  helper [] up_down right_left = ((up_down == right_left) && (up_down == 0))
  helper (m:ms) up_down right_left
   | m == 'n' = helper ms (up_down + 1) right_left
   | m == 's' = helper ms (up_down - 1) right_left
   | m == 'e' = helper ms up_down (right_left + 1)
   | m == 'w' = helper ms up_down (right_left - 1)