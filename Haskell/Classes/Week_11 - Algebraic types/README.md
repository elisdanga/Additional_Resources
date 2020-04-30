# Tasks

# Task 1
Define a new data type called "Point". A point may have two or three dimensions. Create an instance of every type and print it.

## By using the "Point" data type, complete tasks 2 - 4.

# Task 2
Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Test cases:

    distance (TwoD 2 5) (TwoD 6 9) -> 5.66
    distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) -> 16.0

# Task 3
Define a function that accepts a point "p" and a list of points. The function returns the points from the list that are closest to "p".

Test case:

    closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> [ThreeD 4.0 5.0 6.0]

# ( ! ! ) Task 4 ( ! ! )
Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Test case:

    getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)