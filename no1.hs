-- a sum of an empty list is zero
sum [] = 0

-- a sum of a list of items is this 
sum (x:xs) = x + sum xs

-- lazy evaluation 
func arg = 
	let x = func1 arg
		y = func2 arg
		y = func3 arg
	in
	-- here either x or y would get evaluated
	if z then x then y

