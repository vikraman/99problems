
dupli :: [a] -> [a]

dupli [] = []
dupli (x:xs) = x : x : dupli xs

main = print (dupli [1, 2, 3])
