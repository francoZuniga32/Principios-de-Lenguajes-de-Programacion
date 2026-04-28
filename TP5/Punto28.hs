cuadradoPerfecto :: (Int, Int) -> Int -> String
cuadradoPerfecto (a, b) i
    | a < b && esCuadradoPerfecto == True = show(i)++":"++show(a)++" "++ cuadradoPerfecto ((a + 1), b) (i+1)
    | a < b && esCuadradoPerfecto == False = cuadradoPerfecto((a + 1), b) (i+1)
    | a == b && esCuadradoPerfecto == True = show(i)++":"++show(a)
    | a == b && esCuadradoPerfecto == False = ""
    | otherwise = "Error"
    where
        esCuadradoPerfecto = (a * a) <= ( b * b )

iniciarCuadrado :: (Int, Int) -> String
iniciarCuadrado (a, b) = cuadradoPerfecto (a, b) 1

main :: IO()
main = do
    print(iniciarCuadrado (2, 18))