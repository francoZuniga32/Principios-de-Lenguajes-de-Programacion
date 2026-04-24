factorial :: Int -> Int
factorial n
    | n == 0 = 0
    | n > 0  = n * factorial (n - 1)

factorialTable :: Int -> Int -> String
factorialTable n m
    | n == m = show(factorial m )
    | n < m = show(factorial n )++" "++factorialTable (n + 1) m 
    | otherwise = "n tiene que ser menor  o igual a m"

main :: IO()
main = do
    print( factorialTable 3 5)