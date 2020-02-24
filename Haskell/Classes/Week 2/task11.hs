main :: IO()
main = do
    print $ isPrime 4
    print $ isPrime 199
    print $ isPrime 181
    print $ isPrime 190
    return()

{-
Explanation:
A prime number has only two divisors 1 and itself.
First, we form the list of all the numbers between 2 and n - 1.
If the n is prime then if we take all the numbers from that list
    and perform modulus division, none should be divisible.
-}

isPrime :: Integer -> Bool
isPrime n = length [x | x <- [2 .. n - 1], mod n x == 0] == 0