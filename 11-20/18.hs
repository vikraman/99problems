
slice :: [a] -> Int -> Int -> [a]

slice xs i k = sliceHelper xs i k 1
    where
        sliceHelper [] _ _ _ = []
        sliceHelper (x:xs) i k l
            | i <= l && l <= k = x : rest
            | otherwise = rest
                where
                    rest = sliceHelper xs i k (l+1)

main = print (slice ['a','b','c','d','e','f','g','h','i','k'] 3 7)
