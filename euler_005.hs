gcd' :: (Integral a) => a -> a -> a
gcd' a 0 = a
gcd' a 1 = 1
gcd' a b = gcd' b (mod a b)

lcm'' :: (Integral a) => a -> a -> a
lcm'' a b = div (a * b) (gcd' a b)

lcm' :: (Integral a) => [a] -> a
lcm' nums = foldl (lcm'') 1 nums

main = print (lcm' [1..20])
