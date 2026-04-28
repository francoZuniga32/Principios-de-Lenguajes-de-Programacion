operacion :: Double -> Double -> Double
operacion x c = ((x*x*x) - (5*c)) / ((x*2)+c-1)

sumatoria :: Int -> Int -> Int -> Double
sumatoria x k c 
    | x < k = op + ( sumatoria (x + 1) k c )
    | x == k = op
    | otherwise = 0
    where
    op = operacion (fromIntegral x) (fromIntegral c)

principal :: (Int, Int) -> Int -> String
principal (x, k) c
    | x < k = show(x)++show(k)++" "++show(sumatoria x k c)++"\n"++show(principal( ( x+1 ), k ) c)
    | x == k = show(x)++show(k)++" "++show(sumatoria x k c)
    | otherwise = "Err"
    
main :: IO()
main = do
    print(principal (2,4) 3)