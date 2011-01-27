fib' :: (Integral a) => a -> a -> [a]
fib' prev prev' = current:(fib' current prev) where current = prev + prev' 
fibonacci = fib' 1 0

anwser = sum (takeWhile (<4000000) (filter (even) fibonacci))
main = print anwser
