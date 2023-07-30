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
