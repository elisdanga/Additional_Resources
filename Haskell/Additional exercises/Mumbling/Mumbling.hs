import Data.Char
import Data.List

accum :: [Char] -> [Char]
accum ls = helper1 partial 1
 where
  partial = intersperse '-' (map (\x -> toUpper x) ls)
  helper1 [] _ = []
  helper1 (m:ms) index
   | m == '-' = m : helper1 ms (index + 1)
   | otherwise = m : replicate (index - 1) (toLower m) ++ helper1 ms index