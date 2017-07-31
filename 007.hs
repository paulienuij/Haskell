{-
Problem 7: 10001st prime
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13. 
What is the 10 001st prime number?
-}

-- Sieve of Eratosthenes
-- https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

import MyLibrary

main = putStrLn $ show $ primes !! 10000

