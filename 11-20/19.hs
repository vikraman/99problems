
rotate :: [a] -> Int -> [a]

rotate xs n
    | n < 0 = rotateLegit xs (length xs + n)
    | n == 0 = xs
    | n > 0 = rotateLegit xs n
        where
            rotateLegit [] _ = []
            rotateLegit xs 0 = xs
            rotateLegit (x:xs) n = rotateLegit (xs ++ [x]) (n-1)

main = print (rotate ['a','b','c','d','e','f','g','h'] 3)
