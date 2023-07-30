-- ex 1
-- create a function rev that reverses a list

rev :: [a] -> [a]
-- rev = foldr (\e acc -> acc ++ [e]) []
-- rev = foldl (\acc e -> e : acc) []
rev = foldl (flip (:)) []

{-
 - create a function prefixes
 - that returns all the prefixes
 - of a given list
 - eg
 - prefixes [1, 2, 3]
 - => [[1], [1, 2], [1, 2, 3]]
 -
 - -}

-- prefixes :: [a] -> [[a]]
-- prefixes = foldr (\e acc -> [take (length acc) e] : acc) []
-- x = take (length [1,2,3,4]) [1,2,3,4]
