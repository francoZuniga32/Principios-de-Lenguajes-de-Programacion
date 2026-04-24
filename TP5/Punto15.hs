duplicar :: String -> Int -> String
duplicar srt n
    | n == 1 = srt
    | n > 1 = srt ++ show(duplicar srt (n-1))
    | otherwise = ""

main :: IO()
main = do
    print(show(duplicar "papa" 2))