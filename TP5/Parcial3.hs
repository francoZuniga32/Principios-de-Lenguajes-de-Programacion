suma1 :: Double
suma1 = (3 * (sqrt (fromIntegral 3 ))) / 4

factorial :: Double -> Double
factorial x 
    | x > 0 = x * (factorial (x - 1))
    | x == 0 = 1
    | otherwise = 0

binomio :: Double -> Double -> Double
binomio p r 
    | p >= 0 && r >= 0 = (factorial p) / ((factorial r)*(factorial (p-r))) 
    | otherwise = 0

operacion :: Double -> Double
operacion j = ( binomio (2*j) j ) / ((j+1)*((2*j)+5)*(16**j))

sumatoria :: Int -> Int -> Double
sumatoria j n 
    | j < n = op + ( sumatoria (j + 1) n ) 
    | j == n = op
    where
        op = operacion (fromIntegral j)

sumaCompleta :: Int -> Double
sumaCompleta n = suma1 + (fromIntegral 2 ) - ( ((fromIntegral 3)/(fromIntegral 4)) * ( sumatoria 0 n )) 

main :: IO()
main = do
    print(pi)
    print(sumaCompleta 5)
    print(pi - (sumaCompleta 5))
