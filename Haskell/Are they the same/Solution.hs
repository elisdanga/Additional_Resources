import Data.List

comp :: [Integer] -> [Integer] -> Bool
comp list_a list_b = (map (^2) (sort list_a)) == (sort list_b)