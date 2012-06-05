
split :: [a] -> Int -> ([a],[a])

split xs n = splitHelper xs n 1
    where
        splitHelper [] _ _ = ([],[])
        splitHelper (x:xs) n l
            | l <= n = (x:fst,snd)
            | otherwise = (fst,x:snd)
                where
                    (fst,snd) = splitHelper xs n (l+1)

main = print (split "abcdefghik" 3)
