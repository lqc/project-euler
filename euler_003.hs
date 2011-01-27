import Primes (primes)

largest_divisible n seq m 
    | n >= p = if n `mod` p == 0 
		then largest_divisible (n `div` p) (tail seq) p
		else largest_divisible (n) (tail seq) m
    | otherwise = m
    where p = (head seq) 
    
main = print (largest_divisible 600851475143 primes 2) 
-- main = print (largest_divisible 13195 primes 2) 

