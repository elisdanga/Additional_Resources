validParentheses :: String -> Bool
validParentheses ls = helper ls 0
 where
  helper [] counter = counter == 0
  helper (m:ms) counter
   | counter < 0 = False
   | m == '(' = helper ms (counter + 1)
   | m == ')' = helper ms (counter - 1)
   | otherwise = helper ms counter