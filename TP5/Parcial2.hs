operacion :: Double -> Double -> Double
operacion x c = ((x*x) + (c*2)) / ((x*3)+c+2)

suma :: Int -> Int -> Int -> Double
suma x k c
    | x < k = op + ( suma (x+1) k c )
    | x == k = op
    | otherwise = 0
    where 
        op = operacion (fromIntegral x) (fromIntegral c)

sumatoria :: (Int , Int)-> Int -> String
sumatoria (x, k) c
    | x < k = "("++show(x)++" "++show((suma 0 x c))++")"++(sumatoria ((x+1), k) c)
    | x == k = "("++show(x)++" "++show((suma 0 x c))++")"
    | otherwise = "error"

main :: IO()
main = do 
    print(sumatoria (2, 4) 2)