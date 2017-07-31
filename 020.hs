import MyLibrary
fact = 1: zipWith (*) fact [1..]
--digits' = digits (100 !! fact)
main = putStrLn $ show $  sum $ digits(fact !! 100)
