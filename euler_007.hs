import Primes (primes)

main = print (head (drop 10000 primes))
