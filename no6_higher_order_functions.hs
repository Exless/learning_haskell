-- type def of higher order
-- the parethneses in the type signature
-- declre that its a function
app :: (a -> b) -> a -> b
app f x = f x

add1 :: Int -> Int
add1 x = x + 1

added1 = app add1 1

-- anonymous functions
-- (\<args> -> <expr>)

add1anon = (\x -> x + 1)

-- the parenthesies can also be left out

-- multiple arguments

addUp = \x y z -> x + y + z

-- application

-- app (\x y z -> x + y + z) 1 2 3

-- map
x = map (\x -> x + 1) [1, 2, 3, 4, 5]

x1 = map (\(x, y) -> x + y) [(1, 2), (2, 3), (3, 4)]

-- filter
evenNumbers = filter (\x -> even x) [1, 2, 3, 4, 5, 6]
