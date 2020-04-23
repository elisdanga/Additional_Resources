# Tasks

## By using the database created in week 8, complete tasks 1 - 4.

# Task 1
Define a function that takes a quantity and returns all products not available in larger quantities. Solve the task with one line of code.

Test case:

    getNeeded 750 -> [("cheese",750,5.0),("water",500,0.5),("soap",250,4.5)]

# Task 2
Define a function that takes the name and price of a product and returns the number of cheaper alternatives. Solve the task with one line of code.

# Task 3
Define a function that simulates the result of buying a product. The function takes the name and quantity of the desired product. It then checks the database for that product. If the quantity desired is equal to the one available the product is removed from the shop. Otherwise, its amount is reduced. Make sure it is in the database and has sufficient quantity!

Test cases:

    "Initial:"
    db -> [("bread",1000,1.2),("water",500,0.5),("soap",250,4.5)]
    "Buying 500 bread:"
    buy "bread" 500 db -> [("bread",500,1.2),("water",500,0.5),("soap",250,4.5)]
    "Buying 500 water:"
    buy "water" 500 $ buy "bread" 500 db -> [("bread",500,1.2),("soap",250,4.5)]
    "Buying 100 soap:"
    buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> [("bread",500,1.2),("soap",150,4.5)]
    "Buying 500 bread:"
    buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> [("soap",150,4.5)]
    buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> Should give an error.
    buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> Should give an error.

# Task 4
Define a function that returns the products priced closest to the average price of all the products. Solve the task with linear time complexity.

Test case:

    closestToAverage -> ["milk","soap"]

# Task 5
Given a directed graph "g" (with edges (1, 2), (1, 3), (2, 3), (2, 4)) define the following functions:

    nodes - returns all the nodes of "g";
    neighbours - accepts a node and returns its children (neighbours);
    adjacencyList - returns the children of every parent.

Test cases:

    nodes [(1, 2), (1, 3), (2, 3), (2, 4)] -> [1, 2, 3, 4]
    neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 -> [3, 4]
    neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 -> []
    adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] -> [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

# Task 6
Define a function that checks whether a given path is valid in a graph g = (1, [2, 3]), (2, [3, 4]), (3, []), (4, []).

Test cases:

    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] -> True
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] -> False
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] -> True
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] -> False
    
# ( ! ! ) Task 7 ( ! ! )
Define a function that accepts a graph, a whole number "k" and a node "n". Return all the paths starting from "n" that are "k" nodes long. Create types to represent the nodes, graph and path. Don't forget to validate the node!

Test cases:

    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 -> [[1]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 -> [[1, 2], [1, 3]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 -> [[1, 2, 3], [1, 2, 4]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 -> [[2,3],[2,4]]

Note:

    Path ::= acyclic connection between nodes ending with a node that has no outgoing connections.

# Task 8
Let (x, y, z) be a vector representing the nodes of a binary tree such that x is the value of the current node, y and z are the values of the child nodes. Define a function that returns the leaves of such a tree.

Test cases:
    
    listLeaves [(1, 2, 3), (2, 4, 5)] -> [4, 3, 5]
    listLeaves [(2, 4, 5), (1, 2, 3)] -> [4, 5, 3]
    listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] -> [2, 4, 6, 9]

# Task 9
Define a new data type called "Shape". Shape must have four constructors:
 - Circle: with one argument representing the radius;
 - Rectangle: with two arguments representing the width and height;
 - Triangle;
 - Cylinder with two arguments for the radius of the base and height.

Create a shape from every type and output it.

# Task 10
Define a function that accepts two functions: "f" and "g" and a list of points with two coordinates. The function should return those points for which f(firstCoordinate) = g(secondCoordinate) and should be able to work with whole as well as floating point numbers!

Test case:

    myImages (\x -> x * x) (\x -> x + 2) [Point 2 2, Point 1 2, Point 3 7] -> [Point 2 2, Point 3 7]

# Task 11
By using the "Shape" data type, define the following functions:

    perimeter;
    area;
    isRound - returns whether a shape has a round side;
    is2D - returns whether a shape has two dimensions.

Test cases:

    perimeter $ Circle 5 -> 31.42
    perimeter $ Rectangle 2.5 4.5 -> 14
    perimeter $ Rectangle 5.5 20.6 -> 52.2
    perimeter $ Triangle 5.3 3.9 4.89 -> 14.09
    perimeter $ Cylinder 2.5 10 -> 30   

    area $ Circle 5 -> 78.54
    area $ Rectangle 2.5 4.5 -> 11.25
    area $ Rectangle 5.5 20.6 -> 113.3
    area $ Triangle 5.3 3.9 4.89 -> 9.128
    area $ Cylinder 20 30 -> 6283.19   

    isRound $ Circle 5 -> True
    isRound $ Rectangle 2.5 4.5 -> False
    isRound $ Rectangle 5.5 20.6 -> False
    isRound $ Triangle 5.3 3.9 4.89 -> False
    isRound $ Cylinder 20 30 -> True

    is2D $ Circle 5 -> True
    is2D $ Rectangle 2.5 4.5 -> True
    is2D $ Rectangle 5.5 20.6 -> True
    is2D $ Triangle 5.3 3.9 4.89 -> True
    is2D $ Cylinder 20 30 -> False

Note:

    Perimeter of a cylinder: 4*r + 2*h
    Area of a cylinder: 2*pi*r*h + 2*pi*r*r.

# Task 12
By using the "Shape" data type, define two functions that accept a list of shapes and:

    1. The first returns their areas;
    2. The second returns the shapes with the biggest areas.

Test cases:

    getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -> [78.54, 11.25, 113.3, 9.128, 6283.19]
    maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -> [Cylinder 20.0 30.0]
    
# Task 13
Define a new data type called "Point". A point may have two or three dimensions. Create an instance of every type and print it.

## By using the "Point" data type, complete the tasks below.

# Task 14
Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Test cases:

    distance (TwoD 2 5) (TwoD 6 9) -> 5.66
    distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) -> 16.0

# Task 15
Define a function that accepts a point "p" and a list of points. The function returns the points from the list that are closest to "p".

Test case:

    closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> [ThreeD 4.0 5.0 6.0]

# ( ! ! ) Task 16 ( ! ! )
Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Test case:

    getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)