import Primes (primes2)

main = print $ sum $ takeWhile (<2000000) primes2
