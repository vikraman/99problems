
dropEvery :: [a] -> Int -> [a]

dropEvery xs n = dropEveryHelper xs n 1
    where
        dropEveryHelper [] _ _ = []
        dropEveryHelper (x:xs) n c
            | c == n = dropEveryHelper xs n 1
            | otherwise = x : dropEveryHelper xs n (c+1)

main = print (dropEvery "abcdefghik" 3)
