square x = x * x 

square_of_sum n = square (sum [1..n])
sum_of_square n = sum (map square [1..n])

anwser n = square_of_sum n - sum_of_square n
main = print (anwser 100)  
