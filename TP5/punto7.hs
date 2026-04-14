funny :: Int -> Int -> Int -> Bool
funny x y z = x > z || x < y 

main :: IO ()
main = do
    print (funny 5 3 4)