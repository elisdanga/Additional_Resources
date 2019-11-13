partsSum :: [Integer] -> [Integer]
partsSum [] = [0]
partsSum xs = (sum xs) : partsSum (tail xs)