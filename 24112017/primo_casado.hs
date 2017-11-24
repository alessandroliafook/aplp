
is_prime::Int -> Bool
is_prime x = (length [a | a <- [1..x], mod x a == 0]) <= 2

next::Int -> Int
next x = x + 2

main :: IO()
main = do
	 num <- getLine
	 if is_prime(read num) then (if is_prime(next(read num)) then print "PRIMO CASADO!" else print "PRIMO!") else print "NAO PRIMO!"
