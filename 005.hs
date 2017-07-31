-- filters needed: 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
-- eliminating all # that are divisors anyways (ie if 10 is a divisor, so are 2 and 5)

--divisables = [x | x <- [20..], y <- [2..20], x `mod` y == 0]
main = putStrLn $ show $ foldl1 lcm [11,12..20]
-- 232792560
