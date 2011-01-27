-- le
triplets = let n = 1000 in 
           let c x y = (div n 2) - (div (x*y) n) in
           [ [a, b, c a b] | a <- [1..n], b <- [1..a], a + b + (c a b) == n, (a * b) `mod` n == 0]

main = print $ product $ head triplets 
