frac' = [ (a,c)| a <- [1..9], b <- [1..9], c<- [1..9], 9*a*c + b*c - 10*a*b ==0, a<c]

num = foldl1 (*) $ map (fst) frac'
den = foldl1 (*) $ map (snd) frac'

main = putStrLn $ show $ den `div` num  

