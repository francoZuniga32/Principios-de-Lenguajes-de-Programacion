cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos x y
    | x == y = 2
    | otherwise = 0

cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales x y z
    | cuantosIgualesDeDos x y == 2 && (y == z) = 3
    | cuantosIgualesDeDos x y == 2 || cuantosIgualesDeDos y z == 2 || cuantosIgualesDeDos x z == 2 = 2
    | otherwise = 0

main :: IO ()
main = do
    print (cuantosIguales 4 4 4)
    print (cuantosIguales 4 4 5)