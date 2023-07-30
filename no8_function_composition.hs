import Data.List (sort)

{-

composition operator (.)

(.) :: (b -> c) -> (a -> b) -> a -> c

takes two functions, namely (b -> c) and
(a -> b) and makes one function
(a -> c) which applies the first
and then the 2nd

(f . g)
is equivalent to
(\x -> f (g x))

-}

-- eg
descSort :: Ord a => [a] -> [a]
descSort = reverse . sort

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

map2DDouble = map2D (* 2)

x = map2DDouble [[1, 2], [1, 3]] -- => [[2, 4], [2, 6]]

{-

\$ operator

($) :: (a -> b) -> a -> b

makes it easier to pass the result of one function
to another eg:

f xs = (\x -> x + 1) (filter (\x -> x > 1) xs)

is equivalent to

f xs = map (\x -> x + 1) $ filter (\x -> x > 1) xs

 -}

f xs = map (+ 1) $ filter even xs -- filters even numbers then adds 1 to them

filtered = f [1, 2, 3, 4, 5, 6] -- => [3, 5, 7]
