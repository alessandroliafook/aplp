divisores::Int -> Bool
divisores x = (sum [a | a <- [1..(x-1)], mod x a == 0]) == x

main::IO()
main = do
	 x <- getLine
	 print (divisores(read x))


