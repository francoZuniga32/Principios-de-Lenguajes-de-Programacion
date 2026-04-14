losCuatrosIguales :: Int -> Int -> Int -> Int -> Bool
losCuatrosIguales x y w z = (x == y) && (y == w) && (w == z)

main :: IO ()
main = do
    print (losCuatrosIguales 4 4 4 4)
    print (losCuatrosIguales 4 4 4 3)