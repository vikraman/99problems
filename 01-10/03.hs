
elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs (n-1)

main = print (elementAt "haskell" 5)
