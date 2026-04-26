ordenTriple :: (Int,Int,Int) -> (Int,Int,Int)
ordenTriple (a,b,c)
    | a <= b && a <= c = (a,n,m)
    | b <= a && b <= c = (b,n1,m1)
    | c <= a && c <= b = (c,n2,m2)
    where
        (n,m) = ordenDoble (b,c) 
        (n1,m1) = ordenDoble (a,c)
        (n2,m2) = ordenDoble (a,b)
        ordenDoble :: (Int,Int) -> (Int,Int)
        ordenDoble (x,y)
            | x <= y = (x,y)
            | x > y = (y,x)
            | otherwise = (0,0) 

main :: IO()
main = do
    print( ordenTriple (2, 3, 1) )