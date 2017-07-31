module MyLibrary 
( quicksort
, digits
, primes
, primeFactors'
, fib
,pandigital
) where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (p:xs) =
    let smalloreq = filter (<= p) xs
        larger = [ a | a <- xs, a > p]
    in quicksort smalloreq ++ [p] ++ quicksort larger

fib = 0 : 1 : zipWith (+) fib (tail fib)

--digits :: Int -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

primes :: [Integer]
primes = 2 : filter (isPrime primes) [3,5..]
  where isPrime (p:ps) n = p*p > n || n `rem` p /= 0 && isPrime ps n

primeFactors' n (p:ps)
    | p > n             = [] -- no primes will be found anymore
    | n `mod` p == 0    = p:primeFactors' (n `div`p) ps -- since prime factorisation is unique
    | otherwise         = primeFactors' n ps --no factor try next 

--pandigital:: a -> Bool
pandigital x =  not $ (False) `elem` truefalse 
    where   truefalse =  map (digitOf) [1..l]
            digitOf n =   n `elem` (digits x)
            l = length $ digits x 

noDuplicates:: a -> a
-- filters a list of all duplicates
noDuplicates x:xs 
    noDuplicates [] = []
    noDuplicates [x] = [x]
    noDuplicates x:xs 
        | x `elem` xs  = noDuplicates xs
        | otherwise =  x: noDuplicates xs