collatz:: (Integer, Integer) -> (Integer, Integer)
collatz (x, n) 
    | x == 1          = (x,n)
    -- if chain length x already known 
    | x `mod` 2==0    = collatz $ (x `div` 2, n+1) 
    | otherwise       = collatz  $ (3*x + 1, n +1 )

len = [ snd ( collatz $ (x, 1) ) | x<-[1..] ]

main = putStrLn $ show $ maximum $ take 1000000 len
