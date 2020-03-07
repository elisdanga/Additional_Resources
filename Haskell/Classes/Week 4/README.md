# Tasks

## Task 1
Write a function that removes the digit d from the number n.

Examples:

    removeD 1 656 -> 656
    removeD 5 656 -> 66
    removeD 6 656 -> 5
    removeD 0 606 -> 66
    removeD 0 600 -> 6

## Task 2
Write a function that reverses a number.

## Task 3
Write a function that forms a number from every other digit starting from the right of an integer n (n >= 10).

Examples:

    12 -> 1
    12345 -> 42
    852369 -> 628

## Task 4
Given a divisor d and a bound b, find the largest integer N, such that:

    N is divisible by divisor
    N is less than or equal to bound
    N is greater than 0.

Examples:

    maxMultiple 2 7 -> 6
    maxMultiple 3 10 -> 9
    maxMultiple 7 17 -> 14
    maxMultiple 10 50 -> 50
    maxMultiple 37 200 -> 185
    maxMultiple 7 100 -> 98

## Task 5
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

    Note: If the number is a multiple of both 3 and 5, only count it once.

Examples:

    multiples 10 -> 23
    multiples 20 -> 78
    multiples 200 -> 9168

## Task 6
Write a function that finds the maximum digit in a number.

## Task 7
By using the solutions from the previous tasks write a function "validate" that validates a credit card number.
Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.

Here is the algorithm:

    1. Double every other digit, scanning from right to left, starting from the second digit (from the right):
            1714 ==> 1*, 7, 1*, 4 ==> 2, 7, 2, 4
            12345 ==> 1, 2*, 3, 4*, 5 ==> 1, 4, 3, 8, 5
            891 ==> 8, 9*, 1 ==> 8, 18, 1

    2. If a resulting number is greater than 9, replace it with the sum of its own digits (which is the same as subtracting 9 from it):
            8, 18*, 1 ==> 8, (1+8), 1 ==> 8, 9, 1
            or
            8, 18*, 1 ==> 8, (18-9), 1 ==> 8, 9, 1

    3. Sum all of the final digits:
            8, 9, 1 ==> 8 + 9 + 1 = 18

    4. Take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.

18 (modulus) 10 ==> 8 ==> False , which is not equal to 0, so this is not a valid credit card number