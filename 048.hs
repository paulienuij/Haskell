powers = [x^x | x<- [1..1000]]

main = putStrLn $ show $ sum powers