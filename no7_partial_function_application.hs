-- currying

add :: Int -> Int -> Int
add x y = x + y

-- we get a new function which adds 1 to its argument
add1 = add 1

aNumber = add1 3 -- => 4

-- other examples

doubleList = map (\x -> 2 * x)

doubledNumbers = doubleList [1, 2, 3, 4] -- => [2, 4, 6, 8]
