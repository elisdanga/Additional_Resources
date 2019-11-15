import Data.List

comp :: [Integer] -> [Integer] -> Bool
comp list_a list_b = (map (^2) (sort list_a)) == (sort list_b)

{-
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
-}