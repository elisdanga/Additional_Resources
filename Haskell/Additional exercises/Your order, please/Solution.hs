import Data.Char
import Data.List

yourOrderPlease ls = unwords (helper (words ls) (words ls) [] ((length.words) ls))
 where
  helper :: [String] -> [String] -> [String] -> Int -> [String]
  helper [] _ answ _ = answ
  helper _ _ answ 0 = answ
  helper ls2 ls2_orig answ len
   | elem (chr (len + ord('0'))) (head ls2) = helper ls2_orig ls2_orig ((head ls2) : answ) (len - 1)
   | otherwise                             = helper (tail ls2) ls2_orig answ len