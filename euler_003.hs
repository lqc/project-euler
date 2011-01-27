-- Sieve of Eratosthenes

filter_div :: (Integral a) => a -> [a] -> [a]
filter_div n seq = filter (\x -> x `mod` n /= 0) seq
sieve' :: (Integral a) => [a] -> [a]
sieve' seq = (head seq):(sieve' (filter_div (head seq) (tail seq)))

primes = sieve' [2..]
largest_divisible n seq m 
    | n >= p = if n `mod` p == 0 
		then largest_divisible (n `div` p) (tail seq) p
		else largest_divisible (n) (tail seq) m
    | otherwise = m
    where p = (head seq) 
    
main = print (largest_divisible 600851475143 primes 2) 
-- main = print (largest_divisible 13195 primes 2) 

