main :: IO()
main = do
    print $ getAverage -- ["milk","soap"]
    print $ closestToAverage -- ["milk","soap"]
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("lamb", 5000, 5), ("milk", 2000, 4.5), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]

getAverage :: Double
getAverage = sum [ x | (_, _, x) <- db] / (fromIntegral $ length db)

closestToAverage :: [String]
closestToAverage = helper (head db) (tail db) -- helper 0!!db 
 where
     k = getAverage
     helper :: Product -> [Product] -> [String]
     helper (x, _, _) [] = []
     helper closest@(_, _, candidatePrice) (x@(currentName, _, currentPrice):xs)
      | abs(currentPrice - k) <= abs(candidatePrice - k) = currentName : helper x xs
      | otherwise = helper closest xs

--1, 2, 3, 4 -> 1 : (2 : (3: [3, 4]))