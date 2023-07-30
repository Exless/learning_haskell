import Data.Array.Base (listArrayST)
import Data.List

someList :: [Integer]
someList = [1, 2, 3, 4, 5]

taken :: Integer -> [a] -> [a]
-- taken 0 [] = []
-- taken n [] = []
-- taken 0 (x:xs) = []
-- -- taken n (x:xs) = x : taken (n - 1) xs

taken 0 _ = []
taken _ [] = []
taken n (x : xs) = x : taken (n - 1) xs

-- firstSquares :: Num a -> a -> [a] -> [a]
-- squareAll :: Num a -> [a] -> [a]

-- squareAll [] = []
-- squareAll (x:xs) = square x: squareAll xs
--
-- firstSquares n xs =  taken n (squareAll xs)

-- generating a list

asc :: Int -> Int -> [Int]
asc n m
  | m < n = []
  | m == n = [m]
  | m > n = n : asc (n + 1) m

-- ghci> asc 3 10
-- [3,4,5,6,7,8,9,10]

-- std list functions from Data.List

-- head first element
-- tail all but first element

-- length -- gets length of lists

-- null function - checks if list is empty

-- lists of booleans
-- and / or functions

-- list comprehension

sqNumbers = [2 * x | x <- asc 2 10]

sqNumbersWithFilter = [2 * x | x <- asc 2 10, x > 5]

-- multiple lists can also be expressed like this
-- like this you can make combinations

xyTouples = [(x, y) | x <- [1, 2, 3], y <- ['a', 'b']]

-- printing it out
main :: IO ()
main = do
  print "sqNumbers: "
  print sqNumbers
  print "xyTouples"
  print xyTouples

-- list patterns

sumNums :: [Int] -> Int
sumNums [] = 0
sumNums (x : xs) = x + sum xs

evenNums :: [Int] -> [Int]
evenNums [] = []
evenNums (x : xs)
  | mod x 2 == 0 = x : evenNums xs
  | otherwise = evenNums xs

-- touples
tupls = (1, 2)

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [x + y | (x, y) <- xs]
