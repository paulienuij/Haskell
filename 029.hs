import MyLibrary 

powers = [ a^b | a<-[2..100], b<-[2..100]]

main = putStrLn $ show $ noDuplicates [2,2,1,1,3,4]