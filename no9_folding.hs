import Data.Fixed (E0)

{-
fold also known as reduce in other languages

foldr :: (a -> b -> b) -> b -> [a] -> b

in other words

foldr operation accumulator [list of elements] = \
  list of elements "with the operator between them and the accumulator"

fold is therefore used to combine a list in some way
-}

summedUp6 = foldl (+) 0 [1, 2, 3] -- => 3

{-

some basic haskell functions which we already have
can be built like this

sum = foldr (+) 0
and = foldr (&&) True
or = foldr (||) False

another way to define foldr
foldr (\elem acc -> <term>) <start acc> <list>

-}

-- eg

count e =
  foldr (\x acc -> if e == x then acc + 1 else acc) 0

isAll e = foldr (\x -> (&&) $ e == x) True
isAll e = foldr (\x acc -> e == x && acc) True

-- counts the occourances of e in a list
{-
some other basic haskell functions

length = foldr (\x -> (+) 1) 0
map f = foldr ((:) . f) []

 -}

{-

foldl -- foldr in reverse

IMPORTANT:

foldr (\elem acc -> <term>) <start acc> <list>
foldl (\acc elem -> <term>) <start acc> <list>

the accumulator and the element are switched
in the fold function!

 -}
