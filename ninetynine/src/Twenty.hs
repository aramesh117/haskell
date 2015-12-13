module Twenty where

removeAt :: Int -> [a] -> (a, [a])
removeAt pos xs = let e = xs !! (pos - 1)
                      rest = take (pos - 1) xs ++ drop pos xs
                      in (e, rest)
