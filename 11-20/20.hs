
removeAt :: Int -> [a] -> [a]

removeAt n xs = removeAtHelper 1 n xs
    where
        removeAtHelper l n [] = []
        removeAtHelper l n (x:xs)
            | l == n = xs
            | otherwise = x : removeAtHelper (l+1) n xs

main = print (removeAt 2 "abcd")
