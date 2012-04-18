
myButLast :: [a] -> a
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs

main = print (myButLast ['a'..'z'])
