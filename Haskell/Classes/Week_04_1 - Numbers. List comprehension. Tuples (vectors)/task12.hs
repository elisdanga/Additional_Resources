main :: IO()
main = do
    print $ inBetween 1 9 -- [1, 2, 3, 4, 5, 6, 7, 8, 9]
    return ()

inBetween a b = [a .. b]