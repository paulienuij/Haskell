


triangle = 1: zipWith (+) triangle [2..]

divisors n = [x | x<-[1..n], n `mod` x == 0]
num_divisors n = length (divisors n)

numDivs :: Int -> Int



numDivs :: Int -> Int
numDivs 1 = 1
numDivs a = foldl1 (*) $ map ((+1).length) (group $ primeFactors a)

divisors_500 = [ x | x<- triangle, numDivs x > 5 ]

main = putStrLn $ show $ head divisors_500