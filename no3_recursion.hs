-- recursion 
-- name <args> = ... name <args'> ...

-- factorial
fac n = 
	if n <= 1 then
		1
	else
		n * fac (n - 1)

-- guards
fac n = 
    | n <= 1 = 1
    | otherwise = n * fac(n - 1)

    

