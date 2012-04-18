
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

main = print (myReverse "A man, a plan, a canal, panama!")
