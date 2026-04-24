alCuadrado :: Int -> Int
alCuadrado n = n * n 

cuartaPotencia :: Int -> Int
cuartaPotencia n = n * n * n * n

cuartaPotencia2 :: Int -> Int
cuartaPotencia2 n = alCuadrado (alCuadrado n)

main :: IO ()
main = do
    print (cuartaPotencia 2)
    print (cuartaPotencia2 2)