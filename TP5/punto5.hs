-- punto a
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n 
    | n > 1 = fib (n - 1) + fib (n - 2)
    | otherwise = 0

enesimoFibonachi :: Int
enesimoFibonachi = fib 10

-- punto b
factorial :: Int -> Int
factorial 0 = 1
factorial n
    | n > 0 = n * factorial (n - 1)
    | otherwise = 1

-- punto c

pot :: Int -> Int -> Int
pot n 0 = 1
pot x n
    | n > 0 = x * pot x (n - 1)
    | otherwise = 1

sumatoria :: Int -> Int -> Int
sumatoria n 1 = pot  1 n 
sumatoria n i
    | i > 1 =  pot i n   + sumatoria n ( i - 1)

sucecion :: Int -> Int -> Int
sucecion x n = sumatoria x n `div` factorial n

main :: IO ()
main = do
    print (enesimoFibonachi)
    let numero = 5
    print (factorial numero)
    print (sumatoria 5 3)