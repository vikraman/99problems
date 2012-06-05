
data ListItem a = Single a | Multiple Int a

decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap decodeHelper
    where
          decodeHelper (Single x)     = [x]
          decodeHelper (Multiple n x) = replicate n x

main = print (decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e'])
