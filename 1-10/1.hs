
myLast :: [a] -> a
myLast [a] = a
myLast (_:xs) = myLast xs

main = print (myLast [1,2,3,4])
