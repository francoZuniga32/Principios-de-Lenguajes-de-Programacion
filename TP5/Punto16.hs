hacerEspacios :: Int -> String
hacerEspacios n
    | n == 1 = show(" ")
    | n > 1 = show(" ")++show(hacerEspacios (n-1))
    | otherwise = ""

main :: IO()
main = do
    print(hacerEspacios 3)