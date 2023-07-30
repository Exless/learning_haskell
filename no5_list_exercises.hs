-- sign :: Int -> Int
-- sign x
--   | x > 0 = 1
--   | x < 0 = -1
--   | otherwise = 0

-- ex 1

-- create a function elem that returns true
-- if an element is in a given list and
-- returns false otherwise

newElem :: (Eq a) => a -> [a] -> Bool
newElem k [] = False
newElem k (x : xs)
  | x == k = True
  | x /= k = newElem k xs

-- reference solution
newElem1 :: (Eq a) => a -> [a] -> Bool
newElem1 _ [] = False
newElem1 k (x : xs) = k == x || newElem1 k xs

-- ex 2
-- Create a function newNub that removes all duplicates from a list

newNub :: (Eq a) => [a] -> [a]
newNub [] = []
newNub (x : xs)
  | newElem x xs = newNub xs
  | otherwise = x : newNub xs

-- ex 3
-- Create a function isAsc that returns True
-- if the list given to it is a list of ascending order

isAsc :: [Int] -> Bool
isAsc [] = False
isAsc (x : xs)
  | length (x : xs) == 1 = True
  | x < head xs = isAsc xs
  | otherwise = False

-- reference solution

isAsc1 :: [Int] -> Bool
-- 0 or 1 elements are true
isAsc1 [] = True
isAsc1 [x] = True
isAsc1 (x : y : xs) =
  (x <= y) && isAsc1 (y : xs)

-- ex 4
-- Directed Graphs
-- Create a function hasPath that
-- determines if a path from one node to
-- another exists within a directed graph

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath ed x y
  | x == y = True
  | otherwise =
      let ed' = [(n, m) | (n, m) <- ed, n /= x]
       in or [hasPath ed' m y | (n, m) <- ed, n == x]
