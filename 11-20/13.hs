
data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs)
    | count == 1 = (Single x) : (encodeDirect xs)
    | otherwise  = (Multiple count x) : (encodeDirect rest)
    where
        (matched, rest) = span (== x) xs
        count = 1 + (length matched)

main = print (encodeDirect "aaaabccaadeeee")
