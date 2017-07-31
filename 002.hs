fib = 0 : 1 : zipWith (+) fib (tail fib)
-- this list has to be infinite to work
fib_even = filter even fib 
--casually fitering an infinite list

a = takeWhile (<4000000) fib_even

main = putStrLn $ show $ sum a
