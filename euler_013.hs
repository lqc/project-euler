parse_input :: String -> [Integer]
parse_input i = map (read) (lines i)

main = interact (\x -> take 10 $ show $ sum $ parse_input x) 
