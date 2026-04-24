
allDiferent :: Int -> Int -> Int -> Bool
allDiferent n m p = (( n /= m ) && ( m /= p))

main :: IO ()
main = do
    print (allDiferent 1 2 3)
    -- no son todos diferentes falta n /= p
    print (allDiferent 1 2 1)
    print (allDiferent 1 1 1)

    