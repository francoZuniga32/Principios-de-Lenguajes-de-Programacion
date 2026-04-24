digitoRomano :: Int -> String
digitoRomano x
    | x == 1 = show "I"
    | x == 2 = show "II"
    | x == 3 = show "III"
    | x == 4 = show "IV"
    | x == 5 = show "V"
    | x == 6 = show "VI"
    | x == 7 = show "VII"
    | x == 8 = show "VIII"
    | x == 9 = show "IX"
    | otherwise = "No es un digito"

main :: IO()
main = do
    print(digitoRomano 2)