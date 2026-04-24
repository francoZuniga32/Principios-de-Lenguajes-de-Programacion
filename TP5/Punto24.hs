fnImprimir :: Int -> Int -> String
fnImprimir i 1 = show i
fnImprimir i n = show i ++ fnImprimir i (n-1)
fnImprimir i n | n < 0 = error "n debe ser un número positivo"

fnImprimir2 :: Int -> String
fnImprimir2 i = fnImprimir i i

fnSeparadorUltimoDigito :: Int -> Int
fnSeparadorUltimoDigito i = mod i 10

fnSacarUltimoDigito :: Int -> Int
fnSacarUltimoDigito i
    | i  > 10 = div i 10
    | otherwise = i

fnImprimir3 :: Int -> String
fnImprimir3 i
    | i > 10 = fnImprimir2 (fnSeparadorUltimoDigito i) ++ "\n" ++ fnImprimir3 (fnSacarUltimoDigito i)
    | otherwise = fnImprimir2 i

main :: IO ()
main = do
    print(fnImprimir 5 3)
    print(fnImprimir3 523)