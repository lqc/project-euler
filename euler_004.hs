import Primes (primes, factorize')
-- Digital Palindromes

-- max is: 999 * 999 < 1 000 * 1 000 = 1 000 000 (6 digits)
-- we know at least one 6 digit palindrome: 100001, so we can skip searching 5 digit ones
-- Every palindrome is in form: 

primesBelowThousand = takeWhile (<1000) primes
fact n = factorize' n primesBelowThousand 

pot' (p:t) a b = (pot' t (a*p) b) || (pot' t a (b*p))
pot' [] a b = (a < 1000) && (a > 99) && (b > 99) && (b < 1000)
pot n = pot' (fact n) 1 1
params = [(a, b, c) | a <- [1..9], b <- [0..9], c <- [0..9]]

main = print (filter pot (map (\(a,b,c) -> (a*100001+b*10010+c*1100)) params))
