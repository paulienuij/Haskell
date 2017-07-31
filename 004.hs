-- A palindromic number reads the same both ways. 
-- The largest palindrome made from the product of two 2-digit numbers is 
-- 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

palindromes = [x*y| x<-[100..999], y<-[100..x], reverse (show (x*y)) == show (x*y)]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (p:xs) =
    let smalloreq = filter (<= p) xs
        larger = [ a | a <- xs, a > p]
    in quicksort smalloreq ++ [p] ++ quicksort larger

sort_palindromes = quicksort palindromes

main = putStrLn $ show $ last sort_palindromes