{-
We shall say that an n-digit number is pandigital if it makes use of all
the digits 1 to n exactly once. 
For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?
-}

import MyLibrary

pandigitalprimes = filter ( pandigital ) primes


main = putStrLn $ show $ takeWhile (< 10000) pandigitalprimes
