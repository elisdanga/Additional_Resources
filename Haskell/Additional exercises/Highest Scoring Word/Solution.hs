import Data.Char
import Data.List

high :: String -> String
high "" = ""
high myStr = (words myStr) !! (get_max_index . get_scores) myStr

get_max_index :: [Int] -> Int
get_max_index ls = helper ls (maximum ls)
 where
  helper (m:ms) max
   | m == max = 0
   | otherwise = 1 + helper ms max

get_scores :: String -> [Int]
get_scores ls = map score (words ls)

score :: String -> Int
score = (\str -> (sum . to_number_list) str)

to_number_list :: String -> [Int]
to_number_list [] = []
to_number_list (m:ms) = (to_digit m) : (to_number_list ms)

to_digit :: Char -> Int
to_digit c = (snd . head) [ (x, y) | (x, y) <- zip ['a' .. 'z'] [1 .. 27], c == x]