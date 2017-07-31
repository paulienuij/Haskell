numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "teen", "twenty", "thirty", "ty", "hundred", "thousand", "and"]
occurence = [90, 90, 90, 190, 190, 190, 190, 190, 190, 10, 10, 10, 10, 60, 100, 100, 600, 900, 1, 599]
letters = [3,3,5,4,4,3,5,5,4,3,6,6,8,4,6,6,2,7,8,3]
main = putStrLn $ show $ sum $ zipWith (*) letters occurence


