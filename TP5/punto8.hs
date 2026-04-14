allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = x /= y && y /= z && x /= z

main :: IO ()
main = do
    print (allDiferent 4 5 6)
    print (allDiferent 4 4 4)