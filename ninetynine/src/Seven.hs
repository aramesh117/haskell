module Seven where

data NestedList a = Elem a | List [NestedList a] deriving Show

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List xs) = myConcat (map flatten xs)

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss
