import MyLibrary

n = 600851475143

--primeFactors' :: a -> [a]->[a]
primeFactors' n (p:ps)
    | p > n             = [] -- no primes will be found anymore
    | n `mod` p == 0    = p:primeFactors' (n `div`p) ps -- since prime factorisation is unique
    | otherwise         = primeFactors' n ps --no factor try next 

main = putStrLn $ show $ maximum (primeFactors' n primes)



