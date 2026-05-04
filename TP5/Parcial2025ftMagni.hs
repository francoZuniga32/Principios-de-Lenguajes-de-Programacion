operacion :: Double -> Double -> Double
operacion x c = ( (x^3) + (5*c)) / ( (x*2) + ( c-1))

sumatoria :: Int -> Int -> Int -> Double
sumatoria x k c 
    | x < k = op + ( sumatoria (x + 1) k c )
    | x == k = op
    | otherwise = 0
    where
        op = operacion (fromIntegral x) (fromIntegral c)

principal :: (Int, Int) -> Int -> String
principal (x, k) c
    | x < k = show(x)++" "++show((sumatoria 1 x c))++"\n"++ ( principal( ( x+1 ), k ) c )
    | x == k = show(x)++" "++show((sumatoria 1 x c))
    | otherwise = "Err"
    
main :: IO()
main = do
    putStr(principal (2,4) 3)