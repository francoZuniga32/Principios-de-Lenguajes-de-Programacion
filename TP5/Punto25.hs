textoEspacios :: Int -> String
textoEspacios a
    | a > 1 = " " ++ textoEspacios ( a - 1)
    | a == 1 = " "
    | otherwise = "Error"

alinear :: String -> String -> String -> Int -> String
alinear a b c numero
    | espacios > 0 = a ++ textoEspacios espacios ++ b ++ textoEspacios espacios ++ c
    | espacios <= 0 = "Error"
    where
        espacios = numero - (length a) - (length b) - (length c)

main :: IO()
main = do   
    print(alinear "prueba" "prueba" "222" 40)