module Primes 
( primes, primes2, factorize'
) where

-- Sieve of Eratosthenes
filter_div :: (Integral a) => a -> [a] -> [a]
filter_div n seq = filter (\x -> x `mod` n /= 0) seq
sieve' :: (Integral a) => [a] -> [a]
sieve' seq = (head seq):(sieve' (filter_div (head seq) (tail seq)))

primes = 2:(sieve' [3,5..])

is_prime :: Integer -> Bool
is_prime n = let nsqrt = floor (sqrt $ fromIntegral n) in
    dropWhile (\x -> n `mod` x /= 0) [3,5..nsqrt+2] == []

primes2 = 2:3:(filter is_prime [5,7..])
fstep m (p:t) acc =
  if m `mod` p == 0
    then fstep (div m p) (p:t) (p:acc)
    else fstep m t acc

fstep 1 [] acc = acc
fstep _ _ _ = []
factorize' n base = fstep n base []
        
