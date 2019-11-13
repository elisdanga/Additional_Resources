solution :: String -> [String]
solution [] = []
solution [x, y] = [[x, y]]
solution [x] = [[x, '_']]
solution (m:n:ms) = [m, n] : solution ms