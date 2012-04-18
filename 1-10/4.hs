
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

main = print (myLength [1..1024])
