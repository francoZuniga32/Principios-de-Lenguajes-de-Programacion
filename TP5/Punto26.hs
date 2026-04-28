bisiesto :: Int -> String
bisiesto anio
    | esBisiesto == True = "Es bisiesto"
    | esBisiesto == False = "No es bisiesto"
    where
        esBisiesto = ( (mod anio 100) == 0 && (mod anio 400) == 0) || ( (mod anio 4) == 0)

main :: IO()
main = do
    print(bisiesto 2000)
    print(bisiesto 2001)