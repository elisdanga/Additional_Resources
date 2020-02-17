import Data.List

getUnique :: [Int] -> Int
getUnique ls = if length filtered_sorted > 1 then  head sorted else head filtered_sorted
 where
  filtered_sorted = filter (/= head sorted) sorted
  sorted = sort ls