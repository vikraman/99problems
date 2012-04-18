
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = if elem x $ head $ pack xs
                 then ((x:) $ head $ pack xs) : (tail $ pack xs)
                 else ([x]:) $ pack xs

main = print (pack "aaabbcdaacceee")
