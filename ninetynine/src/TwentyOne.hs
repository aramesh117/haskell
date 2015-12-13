module TwentyOne where

insertAt :: a -> [a] -> Int -> [a]
insertAt new xs pos = let (f, s) = splitAt pos xs
                      in
                         f ++ [new] ++ s
