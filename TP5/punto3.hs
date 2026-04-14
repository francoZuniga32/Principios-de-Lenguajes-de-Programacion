allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales x y w z = allEqual x y z && (w == z)

main :: IO ()
main = do
    print (losCuatroIguales 4 5 4 4)