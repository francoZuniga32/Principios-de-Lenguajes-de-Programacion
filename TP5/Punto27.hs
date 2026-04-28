multiplosTripla :: (Int, Int, Int) -> String
multiplosTripla (a, b, c)
    | a == b && esDivisible == True = show(a)
    | a == b && esDivisible == False = "" 
    | a < b && esDivisible == True = show(a) ++" "++ multiplosTripla ( (a + 1), b, c)
    | a < b && esDivisible == False = multiplosTripla ((a + 1 ), b, c)
    | otherwise = "Error"
    where
        esDivisible = (mod a c ) == 0

main :: IO()
main = do
    print(multiplosTripla (0, 20, 2))