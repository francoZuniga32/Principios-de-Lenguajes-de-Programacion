
minMax :: (Int, Int, Int, Int) -> (Int , Int)
minMax (a, b, c, d)
    | otherwise = (n, m)
    where 
        n = min (a,b,c,d)
        m = max (a,b,c,d)
        min :: (Int, Int, Int, Int) -> Int
        min (a,b,c,d)
            | a <= b && b <= c && c <= d = a
            | b <= a && b <= c && b <= d = b
            | c <= a && c <= b && c <= d = c
            | d <= a && d <= b && d <= c = d 
            | otherwise = 0
        max :: (Int, Int, Int, Int) -> Int
        max (a,b,c,d)
            | a >= b && a >= c && a >= d = a
            | b >= a && b >= c && a >= d = b
            | c >= a && c >= b && c >= d = c
            | d >= a && d >= b && d >= c = d 
            | otherwise = 0


main :: IO()
main = do
    print(minMax (10,2,3,4))