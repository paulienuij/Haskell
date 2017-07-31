import MyLibrary
n = 5
a = [x | x<-[2..999999], x == sum (map (^n) (digits x)) ]

main = putStrLn $ show $  sum a 

