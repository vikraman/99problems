
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs

main = print (myLast [1,2,3,4])
