import MyLibrary

a = takeWhile (<2000000) primes

main = putStrLn $ show $ sum a
