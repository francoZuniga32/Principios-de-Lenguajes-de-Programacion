aAnd :: Bool -> Bool -> Bool
aAnd x y 
    | x && y = False
    | otherwise = True

main :: IO ()
main = do
    print (aAnd True True)
    print (aAnd True False)