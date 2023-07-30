{-

  a datatype is defined with its constructors

  data Name =
    Constructor1 <args> | Constructor2 <args> | ...

 -}

-- eg

data Color
  = Red
  | Orange
  | Yellow
  | Green
  | Blue
  | Magenta

x :: Color
x = Orange

data Calculation
  = Add Int Int
  | Sub Int Int
  | Mul Int Int
  | Div Int Int

-- you can use these to do pattern matching

calc :: Calculation -> Int
calc (Add x y) = x + y
calc (Sub x y) = x - y
calc (Mul x y) = x * y
calc (Div x y) = div x y

-- recursive datatypes

data PeaNum
  = Succ PeaNum
  | Zero

data Tree a
  = Leaf
  | Node (Tree a) a (Tree a)

four :: PeaNum
four = Succ $ Succ $ Succ $ Zero

tree :: Tree Int
tree =
  Node (Node Leaf 1 Leaf) 2 (Node (Node Leaf 3 Leaf) 4 Leaf)

-- working with datatypes (with functions)

incr :: PeaNum -> PeaNum
incr = Succ

decr :: PeaNum -> PeaNum
decr (Succ n) = n

-- eg

add :: PeaNum -> PeaNum -> PeaNum
add Zero n = n
add (Succ m) n = Succ $ add n m

sumit :: [PeaNum] -> PeaNum
sumit [] = Zero
sumit (x : xs) = add x $ sumit xs
