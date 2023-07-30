-- functions are defined liek this
-- name_of_function arg1 ... arg2 argn = <expression>
--
-- functions are applied like this
-- name arg1 arg2 ... argn

-- examples
in_range min max x =
  x >= min && x <= max

-- types
x :: Integer
x = 1

y :: Bool

x = False

-- types for functions
in_range :: Integer -> Integer -> Integer -> Bool
-- let keywords

-- can also be expressed with the where keyword

in_range min max x = ilib && ulib
  where
    lib = min <= x
    iub = max >= x

-- control flow

in_range min max x =
  if ilib then iub else False
  where
    ilib = min <= x
    iub = max >= x

-- functions infix
--
-- ghci> :t (+)
-- (+) :: Num a => a -> a -> a

-- can also be defined as
add a b = a + b

xx = add 10 20

-- which if you want to use the infix notation
y = 10 `add` 20 -- is equivalent
