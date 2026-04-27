type Par = (Int, Int)

menor :: Int -> Int -> Int
menor a b 
    | a < b = a
    | a >= b = b

mayor :: Int -> Int -> Int
mayor a b 
    | a >= b = a
    | a < b = b

comparacionPar :: Par -> Par -> Par
comparacionPar (a, b) (c, d) = (e, f)
    where
        e = menor a (menor b (menor c d ) )
        f = mayor a (mayor b (mayor c d ) )

comparacionParTres :: (Par, Par, Par) -> Par
comparacionParTres (a, b, c) = comparacionPar a ( comparacionPar b c )

main :: IO()
main = do
    let par1 = (2, 3)
    let par2 = (3, 4)
    let par3 = (4, 5)

    print(comparacionParTres(par1, par2, par3))