
data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map encodeHelper . encode
                    where
                        encodeHelper (1,x) = Single x
                        encodeHelper (n,x) = Multiple n x

encode :: Eq a => [a] -> [(Int,a)]
encode [] = []
encode [x] = [(1,x)]
encode (x:xs) = if (== x) $ snd $ head $ encode xs
                   then (((+1) $ fst $ head $ encode xs),x) : (tail $ encode xs)
                   else ((1,x):) $ encode xs

main = print (encodeModified "aaaabccaadeeee")
